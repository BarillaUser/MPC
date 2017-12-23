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


   az(0,   '��������',                                        'update');
   az(1,   '���������',                                       'settings');
   az(2,   '����������',                                      'info');
   az(3,   '���',                                             'update all');
   az(4,   '�������� ������ minexbank',                       'update minexbank rates');
   az(5,   '�������� ���� �� livecoin',                       'update livecoin prices');
   az(6,   '�������� ������� mnx �������',                    'update mnx addresses balance');
   az(7,   '��������� ������ minexbank ����� �������',        'update minexbank rates on startup');
   az(8,   '��������� ���� livecoin ����� �������',           'update livecoin prices on startup'  );
   az(9,   '��������� ������� ������� mnx ����� �������' ,    'update mnx addresses on startup');
   az(10,  '������ ����� �������',                            'result digits after comma');
   az(11,  '�� ����',                                         'day');
   az(12,  '�� ������',                                       'week');
   az(13,  '�� �����',                                        'month');
   az(14,  '�� ���',                                          'year');
   Az(15,  '�����: ',                                         'best ask: ' );
   az(16,  '�����������: ',                                   'best bid: ' );
   az(17,  '�����: ',                                         'total: ');
   az(18,  '������������ ��� ��������� �����',                'place to existing amount');
   az(19,  'mnx �����',                                       'mnx address');
   az(20,  'mnx ������',                                      'mnx balance');
   az(21,  '��������',                                        'label');
   az(22,  '��������� ����������',                            'last update');
   az(23,  '���������� ��� ��������� �����',                  'set balance value as existing amount');
   az(24,  '����� ����� ...',                                 'new address ...');
   az(25,  '������������� ...',                               'edit ...');
   az(26,  '�������� ������ ������',                          'update balance for selected address');
   az(27,  '����� ���������� ������',                         'enable address common update');
   az(28,  '������ ���������',                                'hide selected');
   az(29,  '������������� �� ���� �������',                   'all addresses');
   az(30,  '�������',                                         'delete' );
   az(31,  '�������� ������� ������',                         'show hidden');
   az(32,  '�������� ����� ����������',                   'enable common updates');
   az(33,  '��������� ����� ����������',                  'disable common updates');
   az(34,  '������',                                          'calculation' );
   az(35,  '����������',                                      'CALCULATE');
   az(36 , '����',                                            'Day');
   az(37 , '������',                                          'Week');
   az(38 , '�����',                                           'Month');
   az(39 , '���',                                             'Year');

   az(40 , '���������� ������ �� ���������� mnx',                               'calculate profit from existing amount of mnx');
   az(41 , '���������� ������� ��� ���������� ������� � ������������ �������',  'calculate deposit for expecting profit amount with parks limit');
   az(42 , '���������� ������ ��� ���������� ������� �� ���������� mnx',        'calculate period for expecting profit amount from existing amount of mnx');

   az(43 , '������',                                               'parking rate');
   az(44 , '������',                                               'park for');
   az(45 , '����',                                                 'day(s)');
   az(46 , '�������� ������ � ������� ���',                        'include profit from every day');
   az(47 , '������',                                               'week(s)');
   az(48 , '�������',                                              'month(s)');
   az(49 , '���',                                                  'year(s)');
   az(50 , '�������� ������ � ������ ������',                      'include profit from every week');
   az(51 , '�������� ������ � ������� ������',                     'include profit from every month');
   az(52 , '�������� ������ � ������� ����',                       'include profit from every year');
   az(53 , '��������',                                             'max parks');
   az(54 , '��������� �����',                                      'expecting amount');
   az(55 , '��������� �����',                                      'existing amount');
   az(56 , '����������',                                           'results');
   az(57 , '[livecoin.net] ���� �� 1 MNX (���������: %s )' ,        '[livecoin.net] price for 1 MNX (update: %s )');
   az(58 , '[minexbank.com] ������ (���������: %s )' ,              '[minexbank.com] rates (update: %s )');
   az(59 , '[minexexplorer.com] ������� ������� (���������: %s )' , '[minexexplorer.com] address balance (update: %s )');
   az(60 , '������',                                                'period');
   az(61 , '���-��',                                                'count');
   az(62 , '����� MNX',                                             'MNX total');
   az(63 , '������ � MNX',                                          'MNX profit');
   az(64 , '������ � USD',                                          'USD profit');
   az(65 , '������ � BTC',                                          'BTC profit');
   az(66 , '������ � ETH',                                          'ETH profit');
   az(67 , '������',                                                'abort');
   az(68 , '���������� MNX',                                        'MNX deposit need');
   az(69 , '������ � MNX',                                          'MNX period profit');
   az(70 , '���������� USD',                                        'USD deposit need');
   az(71 , '���������� BTC',                                        'BTC deposit need');
   az(72 , '���������� ETH',                                        'ETH deposit need');
   az(73,  '��������',                                              'properties');
   az(74,  'mnx �����',                                             'mnx address');
   az(75,  '������ ������',                                         'mnx balance');
   az(76,  '��������',                                              'label');
   az(77,  '���������� �����',                                      'address visible');
   az(78,  '�������� ��������� ���������� ��� ������',              'enable group update for this address');
   az(79,  '������',                                                'cancel');
   az(80,  'ok',                                                    'ok');
   az(81,  '����� �����',                                           'new address');
   az(82,  '������������� �����',                                   'edit address');
   az(83,   '�������:',                                             'wtf:');
   az(84,   '����:',                                                'home:');
   az(85,   '������� � �����:',                                     'some words about:');
   az(86,   '�������������',                                        'donations');
   az(87,   '������ ������ �������������: %s mnx',                  'donations address balance: 0 mnx');
   az(88,   '�������',                                              'close');
   az(89,   '������ ������ �������������: ���������� ...',          'donations balance: updating ...');

    az(90,
    '��� ���������� ������� � �������� �������� '       + //#13#10 +
    '�����, � ����� �� �������� ����������� '          + //#13#10 +
    'minex(coin) � ����� �� ��������� � '               + //#13#10 +
    '���� �����������. '                                + //#13#10 +
    '������� ������� � ������ ������������ '            + //#13#10 +
    '�������� '                                         + //#13#10 +
    '���������������, ��� ��� ����� ������ �� '         + //#13#10 +
    'minexbank-a �������� � ����������� �� �������� '   + //#13#10 +
    '�����, ������ ����� ����� '                        + //#13#10 +
    '������������ �� ��������� MNX �� �����.',



                                                            'This is a free and open source utility. '                                                   +
                                                            'The MPC developer does not belong and is not affiliated with Minex(coin) organization. '    +
                                                            'The calculations are approximate due to the rate changes in the bank policy, '              +
                                                            'which seems to be dependent on the exchange prices.'

    );

   az(91,   '���������� ��� ',                                            'copy as ');
   az(92,   '�������� �������� ',                                         'paste as ');




end;












































































end.
