unit mcpUtilsUnit;

interface

{
*************************************************************************
prj: MinexBank Profit Calculator
ver: 0.3
wtf address : inbox2@zoho.com
donate MNX  : XLJ2FXXB7gRLFiThd7WGyVgerhXje5FqBR

Used components\libs:
                    DevExpress VCL 17.1.5   (http://devexpress.com)
                    ICS V8.51               (http://wiki.overbyte.eu)
                    Synopse mORMot          (http://synopse.info)
*************************************************************************
}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Math,
     Dialogs,   System.StrUtils, SynCommons;

  function lc_microparse(src, _begin, _end: string): string;
  function parse_mnxexplorerbalance(s: string):  Double;

  function GetTotalProfitFromExistingDeposit(const depamount, bankrate: Extended; rounds: Integer; inc_round_profit: Boolean): Extended;
  function GetDepositForExpectingProfit(const expamount, bankrate: Extended; maxrounds: Integer; inc_round_profit, biqORequal: Boolean): Extended;
  function GetPeriodCountForExpectingProfit(const existing_amount, expamount, bankrate: Extended; inc_round_profit, biqORequal: Boolean): Integer;

  procedure procCalc(am: Extended; rate: Extended; rounds: Integer; incprofit: Boolean; var r_profit: Extended);
  procedure procCalc2(const exp: Extended; biqORequal: Boolean; rate: Extended; maxRounds: Integer; incprofit: Boolean; var r_deposit, r_profit: Extended);
  procedure procCalc3(am, exp: Extended; rate: Extended; biqORequal: Boolean; var rounds: Integer; var r_profit: Extended);
implementation

function GetTotalProfitFromExistingDeposit(const depamount, bankrate: Extended; rounds: Integer; inc_round_profit: Boolean): Extended;
var
  I: Integer;
  round_profit, p_amount : Extended;
begin
     result := 0;
     if bankrate = 0 then Exit;

     p_amount := depamount;
     for I := 1 to rounds do
     begin
       round_profit := p_amount / 100 * bankrate; //Профит раунда
       result := result + round_profit;   //Сумма всех профитов

      if inc_round_profit then  p_amount :=  round_profit + p_amount;
     end;
end;

function GetDepositForExpectingProfit(const expamount, bankrate: Extended; maxrounds: Integer; inc_round_profit, biqORequal: Boolean): Extended;
var
    tmpdep: Extended;
    tmpTotalProfit: Extended;
begin

     result := 0;
     if (bankrate = 0) or (expamount = 0) then Exit;



     result := ( expamount / (bankrate*maxrounds) ) * 100;
     tmpTotalProfit := GetTotalProfitFromExistingDeposit(result, bankrate, maxrounds, inc_round_profit);
     if expamount = tmpTotalProfit then Exit;
     if not inc_round_profit then Exit;

     tmpdep := Result;
     while  tmpTotalProfit > expamount do
     begin
       tmpdep := tmpdep - 0.001;
       tmpTotalProfit := GetTotalProfitFromExistingDeposit(tmpdep, bankrate, maxrounds, true);
     end;

     if biqORequal then Result := tmpdep+ 0.001;
end;

function GetPeriodCountForExpectingProfit(const existing_amount, expamount, bankrate: Extended; inc_round_profit, biqORequal: Boolean): Integer;
var prof: Extended;
begin

    Result := 0;
    prof   := 0;
    if bankrate =0 then Exit;

    if biqORequal then
    begin
        while not (prof >= expamount) do
        begin
          Inc(Result);
          prof   := GetTotalProfitFromExistingDeposit(existing_amount, bankrate, Result, inc_round_profit);
        end;
    end
    else
    begin
      while (prof <= expamount) do
      begin
        Inc(Result);
        prof   := GetTotalProfitFromExistingDeposit(existing_amount, bankrate, Result, inc_round_profit);
      end;
    end;



 {  SetRoundMode(rmNearest);
   if  expamount <  existing_amount then
   begin
       if biqORequal then
       Result :=   Round(expamount / ((existing_amount) / 100 * bankrate) )
       else
       Result :=   Round(expamount / ((existing_amount+expamount) / 100 * bankrate) );
       if Result < 1 then Result := 1;
   end;  }

end;


function lc_microparse(src, _begin, _end: string): string;
var i_begin, i_end: Integer;
begin
 i_begin := Pos(  _begin, src);
 i_end := System.StrUtils.PosEx(_end, src, i_begin);
 Result := Trim( Copy(src, i_begin + _begin.Length, i_end-(i_begin + _begin.Length) ) );
end;


function parse_mnxexplorerbalance(s: string):  Double;
const substr_mark_begin1 = '<td>Total balance</td>';
      substr_mark_begin2 = '<td>';
      substr_mark_end    = '</td>';
var i_begin, i_end: Integer;
    tms: string;
begin
  result  := -1;

  i_begin := Pos(  substr_mark_begin1, s);
  if i_begin < 1 then Exit;


  i_begin := System.StrUtils.PosEx(substr_mark_begin2, s, i_begin+substr_mark_begin1.Length+1);
  i_end   := System.StrUtils.PosEx(substr_mark_end,    s, i_begin+1);


  tms  := Copy( s, i_begin+substr_mark_begin2.Length,  i_end -(i_begin + substr_mark_begin2.Length) );

  //Result := tms;

  i_end := Pos(' ', tms);
  FormatSettings.DecimalSeparator := '.';

  tms  := Trim(Copy(tms, 1,  i_end));
  tms  := ReplaceStr(tms, ',', '');
  result  := StrToFloat( Trim(tms) );
//  result  := StrToFloat( Trim(Copy(tms, 1,  i_end)) );
  FormatSettings.DecimalSeparator := ',';  {}
end;



// calculate profit from existing amount of mnx
procedure procCalc(am: Extended; rate: Extended; rounds: Integer; incprofit: Boolean; var r_profit: Extended);
var
  I: Integer;
  round_profit, p_amount : Extended;
begin
     r_profit := 0;
     p_amount := am;

     for I := 1 to rounds do
     begin
       round_profit := p_amount / 100 * rate; //Профит раунда
       r_profit := r_profit + round_profit;   //Сумма всех профитов

      if incprofit then  p_amount :=  round_profit + p_amount;
     end;
end;

//   calculate deposit for expecting profit amount [with parks limit]
procedure procCalc2(const exp: Extended; biqORequal: Boolean; rate: Extended; maxRounds: Integer; incprofit: Boolean;
                    var r_deposit, r_profit: Extended);
var tmpdep: Extended;
begin

   r_deposit := ( exp / (rate*maxRounds) ) * 100;
   procCalc(r_deposit, rate, maxRounds, incprofit, r_profit);

   if not incprofit then Exit;
   if exp = r_profit then Exit;

   tmpdep := r_deposit;
   while  r_profit > exp do
   begin
     tmpdep := tmpdep - 0.001;
     procCalc(tmpdep, rate, maxRounds, true, r_profit);
   end;

   if biqORequal then r_deposit := tmpdep+ 0.001;

   procCalc(r_deposit, rate, maxRounds, true, r_profit);
end;

//   calculate period for expecting profit amount from existing amount of mnx
procedure procCalc3(am, exp: Extended; rate: Extended; biqORequal: Boolean; var rounds: Integer; var r_profit: Extended);
begin
   {

    calt time



    rate 2%:
    wEightOne Needs 6 mnx
    rounds 3
             }






end;


end.
