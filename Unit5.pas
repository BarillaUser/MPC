unit Unit5;

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


 type

  Tru_wordlist = array [0..255] of string;
  Ten_wordlist = array [0..255] of string;

  procedure setwordlist;

var ru_wordlist : Tru_wordlist;
    en_wordlist : Ten_wordlist;

implementation

procedure setwordlist;

 procedure az(index: Integer; ru, en: string);
 begin
   ru_wordlist[index]  :=  ru;
   en_wordlist[index]  :=  en;
 end;

begin


   az(0,   'обновить',                                        'update');
   az(1,   'настройки',                                       'settings');
   az(2,   'информация',                                      'info');
   az(3,   'все',                                             'update all');
   az(4,   'обновить ставки minexbank',                       'update minexbank rates');
   az(5,   'обновить цены на livecoin',                       'update livecoin prices');
   az(6,   'обновить балансы mnx адресов',                    'update mnx addresses balance');
   az(7,   'обновлять ставки minexbank после запуска',        'update minexbank rates on startup');
   az(8,   'обновлять цены livecoin после запуска',           'update livecoin prices on startup'  );
   az(9,   'обновлять балансы адресов mnx после запуска' ,    'update mnx addresses on startup');
   az(10,  'знаков после запятой',                            'result digits after comma');
   az(11,  'за день',                                         'day');
   az(12,  'за неделю',                                       'week');
   az(13,  'за месяц',                                        'month');
   az(14,  'за год',                                          'year');
   Az(15,  'спрос: ',                                         'best ask: ' );
   az(16,  'предложение: ',                                   'best bid: ' );
   az(17,  'всего: ',                                         'total: ');
   az(18,  'использовать как имеющуюся сумму',                'place to existing amount');
   az(19,  'mnx адрес',                                       'mnx address');
   az(20,  'mnx баланс',                                      'mnx balance');
   az(21,  'название',                                        'label');
   az(22,  'последнее обновление',                            'last update');
   az(23,  'установить как имеющуюся сумму',                  'set balance value as existing amount');
   az(24,  'новый адрес ...',                                 'new address ...');
   az(25,  'редактировать ...',                               'edit ...');
   az(26,  'обновить баланс адреса',                          'update balance for selected address');
   az(27,  'общее обновление адреса',                         'enable address common update');
   az(28,  'скрыть выбранное',                                'hide selected');
   az(29,  'применительно ко всем адресам',                   'all addresses');
   az(30,  'удалить',                                         'delete' );
   az(31,  'показать скрытые адреса',                         'show hidden');
   az(32,  'включить общее обновление',                   'enable common updates');
   az(33,  'отключить общее обновление',                  'disable common updates');
   az(34,  'расчет',                                          'calculation' );
   az(35,  'РАССЧИТАТЬ',                                      'CALCULATE');
   az(36 , 'День',                                            'Day');
   az(37 , 'Неделя',                                          'Week');
   az(38 , 'Месяц',                                           'Month');
   az(39 , 'Год',                                             'Year');

   az(40 , 'рассчитать профит от количества mnx',                               'calculate profit from existing amount of mnx');
   az(41 , 'рассчитать депозит для ожидаемого профита с ограничением времени',  'calculate deposit for expecting profit amount with parks limit');
   az(42 , 'рассчитать период для ожидаемого профита от количества mnx',        'calculate period for expecting profit amount from existing amount of mnx');

   az(43 , 'ставка',                                               'parking rate');
   az(44 , 'период',                                               'park for');
   az(45 , 'дней',                                                 'day(s)');
   az(46 , 'включать профит с каждого дня',                        'include profit from every day');
   az(47 , 'недель',                                               'week(s)');
   az(48 , 'месяцев',                                              'month(s)');
   az(49 , 'лет',                                                  'year(s)');
   az(50 , 'включать профит с каждой недели',                      'include profit from every week');
   az(51 , 'включать профит с каждого месяца',                     'include profit from every month');
   az(52 , 'включать профит с каждого года',                       'include profit from every year');
   az(53 , 'максимум',                                             'max parks');
   az(54 , 'ожидаемая сумма',                                      'expecting amount');
   az(55 , 'имеющаяся сумма',                                      'existing amount');
   az(56 , 'результаты',                                           'results');
   az(57 , '[livecoin.net] цена за 1 MNX (обновлено: %s )' ,        '[livecoin.net] price for 1 MNX (update: %s )');
   az(58 , '[minexbank.com] ставки (обновлено: %s )' ,              '[minexbank.com] rates (update: %s )');
   az(59 , '[minexexplorer.com] балансы адресов (обновлено: %s )' , '[minexexplorer.com] address balance (update: %s )');
   az(60 , 'период',                                                'period');
   az(61 , 'кол-во',                                                'count');
   az(62 , 'всего MNX',                                             'MNX total');
   az(63 , 'профит в MNX',                                          'MNX profit');
   az(64 , 'профит в USD',                                          'USD profit');
   az(65 , 'профит в BTC',                                          'BTC profit');
   az(66 , 'профит в ETH',                                          'ETH profit');
   az(67 , 'отмена',                                                'abort');
   az(68 , 'необходимо MNX',                                        'MNX deposit need');
   az(69 , 'профит в MNX',                                          'MNX period profit');
   az(70 , 'необходимо USD',                                        'USD deposit need');
   az(71 , 'необходимо BTC',                                        'BTC deposit need');
   az(72 , 'необходимо ETH',                                        'ETH deposit need');
   az(73,  'свойства',                                              'properties');
   az(74,  'mnx адрес',                                             'mnx address');
   az(75,  'баланс адреса',                                         'mnx balance');
   az(76,  'название',                                              'label');
   az(77,  'показывать адрес',                                      'address visible');
   az(78,  'включить групповое обновление для адреса',              'enable group update for this address');
   az(79,  'отмена',                                                'cancel');
   az(80,  'ok',                                                    'ok');
   az(81,  'новый адрес',                                           'new address');
   az(82,  'редактировать адрес',                                   'edit address');
   az(83,   'чёзанах:',                                             'wtf:');
   az(84,   'хоум:',                                                'home:');
   az(85,   'немного о сабже:',                                     'some words about:');
   az(86,   'пожертвования',                                        'donations');
   az(87,   'баланс адреса пожертвований: %s mnx',                  'donations address balance: 0 mnx');
   az(88,   'закрыть',                                              'close');
   az(89,   'баланс адреса пожертвований: обновление ...',          'donations balance: updating ...');

    az(90,
    'Это бесплатная утилита с открытым исходным '       + //#13#10 +
    'кодом, её автор не является сотрудником '          + //#13#10 +
    'minex(coin) и никак не причастен к '               + //#13#10 +
    'этой организации. '                                + //#13#10 +
    'Подсчёт прибыли в данном калькуляторе '            + //#13#10 +
    'является '                                         + //#13#10 +
    'приблизительным, так как рэйты ставок от '         + //#13#10 +
    'minexbank-a меняются в зависимости от политики '   + //#13#10 +
    'банка, скорее всего рэйты '                        + //#13#10 +
    'определяются от стоимости MNX на бирже.',



                                                            'This is a free and open source utility. '                                                   +
                                                            'The MPC developer does not belong and is not affiliated with Minex(coin) organization. '    +
                                                            'The calculations are approximate due to the rate changes in the bank policy, '              +
                                                            'which seems to be dependent on the exchange prices.'

    );

   az(91,   'копировать как ',                                            'copy as ');
   az(92,   'вставить значение ',                                         'paste as ');




end;












































































end.
