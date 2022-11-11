
clc
clear all
sss2=['_______________________________________________________________________________________________________________________'];
s2=[ '___________________________________________________________________________'];
e2=['                                               '];
e3=['                                         ANSWER                          '];
g4=['     ********************************************************************'];
aaa4=['_____________'];
aaa5=['RESPONSE'];

ss1=[' conductor  kind'];
disp(sss2);
ss2=['[1] if fox ,enter 1        [2]if mink,enter 2             [3]if dog,enter  3            [4]if partridge,enter 4 '];
ss4=['[5]if lynx,enter 5        [6]if oriiole,enter  6         [7]if  hawk,enter  7         [8] if drake,enter 8'];
ss3=['[9]if canary,enter 9    [10]if cardinal,enter  10   [11]if curlew,enter 11    [12]if  martin,enter 12'];
ss5=['[13]if FAVORITE 1,enter 13       [14]if FAVORITE2,enter 14'];
disp(ss1);
disp(sss2);
disp(ss2);
disp(ss4);
disp(ss3);
disp(ss5);
disp(sss2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         WIRE      INFO              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555

Z=[6    2.79    1       2.79    8.37    36.7    72.4    42.7    84.3    149     1346    0.7827  0.8773  0.7828  0.8774  0.2835  192     8100    19.1;
6       3.66    1       3.66    10.98   63.1    124.5   73.6    145.3   255     2223    0.4541  0.509   0.4543  0.50916 0.2664  288     8100    19.1;
6       4.72    7       1.57    14.15   105     207.2   118.5   233.9   394     3335    0.2733  0.3063  0.2736  0.3066  0.2506  417     7700    19.8;
26      2.57    7       2       16.3    135.2   266.8   156.9   309.6   546     5107    0.2134  0.2392  0.2137  0.2392  0.2405  460     7700    18.9;
30      2.79    7       2.79    19.53   183.4   361.9   226.2   446.4   842     8137    0.1576  0.1766  0.1581  0.1771  0.2277  549     8200    17.8;
30      2.69    7       2.69    18.82   170.5   236.4   210.3   415     783     7736    0.1696  0.1901  0.1701  0.1901  0.2305  530     8200    17.8;
36      3.42    7       2.68    21.8    241.7   477     281     554.6   977     8821    0.1197  0.1342  0.1204  0.1342  0.2224  670     7700    18.9;
36      4.44    7       3.45    28.14   403     795     468.6   924.8   1628    14165   0.0714  0.08    0.0725  0.08    0.2063  900     7700    18.9;
54      3.28    7       3.28    29.52   456     900     515.1   1016.6  1724    14664   0.0635  0.0712  0.0648  0.073   0.2038  970     7000    19.3;
54      3.38    7       3.38    30.38   483.4   954     546     1077.5  1828    15527   0.0598  0.067   0.0611  0.0695  0.202   1010    7000    19.3;
54      3.515   7       3.515   31.65   523.7   1033.5  591.2   1166.7  1980    16843   0.0551  0.0618  0.0566  0.0637  0.1995  1060    7000    19.3;
54      4.018   19      2.41    36.17   684.6   1351    771.6   1522.8  2584    21610   0.0422  0.0473  0.0441  0.0492  0.1908  1250    6800    19.4;
21      2       2       2       8.37    454     345     58.43   34      460     7232    25      34      32      32      23      34      17311   11.5;
21      2       2       2       4       431     2342    12.56   32      112     565.2   23      23      21      23      43      245     13000   18];

LLLL=[' do you enter another wire info'];
llll1=['[1]YES                  [2]NO'];
disp(LLLL);
disp(llll1);
disp(s2);
fdfd=input('enter kind of case');
disp(s2)
if  fdfd==2
ct=input(' enter number ofconductor  kind: ');
for  cc=1:14
if ct==cc
A=Z(cc,8);  %AREA(MM^2)
UTS=Z(cc,11);%ULTIMATE TENSILE STRENGTH
d=Z(cc,5);%DIMETER WIRE(MM)
ALFA=Z(cc,19)*(10^(-6));%ICE WILDE(MM)
e=Z(cc,18);%AIR VELOCITY
W_c=Z(cc,10)*(10^(-3));%WEIGHT CORE(KG/M)
end
end
if ct==1,nn=['Fox'];end
if ct==2,nn=['Mink'];end
if ct==3,nn=['Dog'];end
if ct==4,nn=['partridge'];end
if ct==5,nn=['Lynx'];end
if ct==6,nn=['Oriole'];end
if ct==7,nn=['Hawk'];end
if ct==8,nn=['Drake'];end
if ct==9,nn=['Canary'];end
if ct==10,nn=['Cardinal'];end
if ct==11,nn=['Curlew'];end
if ct==12,nn=['Martin'];end
if ct==13,nn=['FAVORITE 1'];end
if ct==14,nn=['FAVORITE 2'];end


elseif fdfd==1
    
    ct=input(' name of conductor : ','s');

A=input('AREA(MM^2)');
UTS=input('ULTIMATE TENSILE STRENGTH');
d=input('DIMETER WIRE(MM)');

bvn=input('ICE WILDE(MM)');
ALFA=(10^(-6))*bvn;
e=input('e: elastecite');
tyu=input('WEIGHT CORE(KG/M)');
W_c=tyu*(10^(-3));
nn=[ct];
  
end
V=input('line voltage(kv):');
%S=input('SPAN(m):') ; %SPAN(M)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   zaribe piri

dsdss=['do you want to consider impact of fatigue factor'];
dsddd=['[1]YES     [2]NO'];
    disp(dsdss);
    disp(dsddd);
yhn=input(' :');

if yhn==1;
    
ss1=[' kind of wire for fatigue factor'];
disp(sss2);
ss2=['tedae reshte for Alominiom:              [1] 7           [2]19             [3]37           [4]61'];
ss4=['tedae reshte for Alominiom Aliages  [5]7            [6]19             [7]37           [8]61'];
ss3=[' tedae reshte for ACSR (Al-ST)           [9]7-19      [10]7-32        [11]7-30      [12]30-19    [13]1-6    [14]7-26'];
ss3s=['                                                         [15]7-24     [16]7-54       [17]19-54    [18]7-45      [19]7-42'];
ss5=['tedae reshte for  fulad                        [20]140       [21]70'];
disp(ss1);

disp(sss2);
disp(ss2);
disp(ss4);
disp(ss3);
disp(ss3s);
disp(ss5);
disp(sss2);

tct=input(' kind of wire for fatigue factor: ');
disp(sss2);

if tct==1;TR_fatigue=35;end;if tct==2;TR_fatigue=35;end;if tct==3;TR_fatigue=35;end;if tct==4;TR_fatigue=35;end
if tct==5;TR_fatigue=25;end;if tct==6;TR_fatigue=25;end;if tct==7;TR_fatigue=25;end;if tct==8;TR_fatigue=25;end


if tct==9;TR_fatigue=13;end;if tct==10;TR_fatigue=13;end;if tct==11;TR_fatigue=15;end;if tct==12;TR_fatigue=16;end;if tct==13;TR_fatigue=15;end;if tct==14;TR_fatigue=17;end
if tct==15;TR_fatigue=20;end;if tct==16;TR_fatigue=20;end;if tct==17;TR_fatigue=20;end;if tct==18;TR_fatigue=23;end;if tct==19;TR_fatigue=25;end

if tct==1;TR_fatigue=35;end;if tct==2;TR_fatigue=35;end
elseif yhn==2
tct=0;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Ke for phase distance 


ss118=[' kind of phase distanse'];
disp(ss118)
disp(sss2);
sT118=[' [1]VERTICAL WIRE              [2]FOR Triangular WIRES WITH 2 WIRE IN ONE CORE     [3]HORIZINTAL WIRE'];
disp(sT118)
sctf=input(' enter number of kind of phase distanse: ');




ss1=[' kind of wire for phase distance'];
disp(sss2);

ss112=[' sathe maghtae for mes-boronz-fulad(mm^2):'];

ss2=['     [1]16      [2]25        [3]35      [4]50     [5]70        [6]95         [7]bigger than 95 ' ];

ss113=[' sathe maghtae  for Alominiom and Alominiom Aliages:  '];
ss4=['    [8]35    [9]50      [10]70        [11]95      [12]120    [13]150    [14]bigger than 150'];
ss115=[' sathe maghtae  for alominiom with fulad core: '];

ss3=['   [15]35.6         [16]50.8        [17]70.12      [18]95.15    [19]120.20   [20]150.25    [21]125.30     [22]50.30       [23]44.32     [24]450.40      [25]490.65'];
ss3s=[' [26]560.50   [27]170.40     [28]210.50    [29]95.55      [30]120.7      [31]105.75    [32]185.30     [33]210.35      [34]240.40   [35]265.35     [36]300.50  '];
ss5=['   [37]340.3      [38]380.5      [39]435.55     [40]385.55   [41]550.70     [42]680.85]'];
disp(ss1);
disp(sss2);
disp(ss112)
disp(ss2);
disp(ss113)
disp(ss4);
disp(ss115)
disp(ss3);
disp(ss3s);
disp(ss5);
disp(sss2);

sct=input(' enter kind of wire for phase distance: ');

disp(sss2);


if  sctf==1;

    
    if   sct==8  || sct==9  ||  sct==10  || sct==11 || sct==15  
    ke=.95;
    elseif  sct==1  || sct==12  ||  sct==13  || sct==16 || sct==17
    ke=.85;
    elseif  sct==2  || sct==14  ||  sct==18  || sct==19 || sct==22  || sct==23
    ke=.85;
    elseif  sct==3  || sct==20  ||  sct==21 
    ke=.75;
    elseif  sct==4 || sct==5 || sct==24  ||  sct==25 || sct==26 || sct==27 || sct==28 || sct==29 || sct==30  ||  sct==31 || sct==32 || sct==33  ||sct==34 || sct==35 || sct==36  ||  sct==37 || sct==38 || sct==39  || sct==40 
    ke=.75;
     elseif  sct==6   
    ke=.7;
      elseif  sct==7  || sct==41  ||  sct==42 
    ke=.7;
    end
    
    
    
    
elseif sctf==2;
    
     if   sct==8  || sct==9  ||  sct==10  || sct==11 || sct==15  
    ke=.75;
    elseif  sct==1  || sct==12  ||  sct==13  || sct==16 || sct==17
    ke=.7;
    elseif  sct==2  || sct==14  ||  sct==18  || sct==19 || sct==22  || sct==23
    ke=.7;
    elseif  sct==3  || sct==20  ||  sct==21 
    ke=.65;
    elseif  sct==4 || sct==5 || sct==24  ||  sct==25 || sct==26 || sct==27 || sct==28 || sct==29 || sct==30  ||  sct==31 || sct==32 || sct==33  ||sct==34 || sct==35 || sct==36  ||  sct==37 || sct==38 || sct==39  || sct==40 
    ke=.65;
     elseif  sct==6   
    ke=.62;
      elseif  sct==7  || sct==41  ||  sct==42 
    ke=.62;
    end
    
    
  
elseif sctf==3;
    
     if   sct==8  || sct==9  ||  sct==10  || sct==11 || sct==15  
    ke=.7;
    elseif  sct==1  || sct==12  ||  sct==13  || sct==16 || sct==17
    ke=.65;
    elseif  sct==2  || sct==14  ||  sct==18  || sct==19 || sct==22  || sct==23
    ke=.65;
    elseif  sct==3  || sct==20  ||  sct==21 
    ke=.62;
    elseif  sct==4 || sct==5 || sct==24  ||  sct==25 || sct==26 || sct==27 || sct==28 || sct==29 || sct==30  ||  sct==31 || sct==32 || sct==33  ||sct==34 || sct==35 || sct==36  ||  sct==37 || sct==38 || sct==39  || sct==40 
    ke=.62;
     elseif  sct==6   
    ke=.6;
      elseif  sct==7  || sct==41  ||  sct==42 
    ke=.6;
    end
    
    
end








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%          kind of  borj  ***********

if V==63;
   disp(['Different towers for voltage 63 KV']); 
ss2=['[1]N      [2]T    [3]C   [4]A    [5]NN   [6]AA    [7]CC     [8]CC(SAE)       '];
ss4=['[9]SA     [10]SB    [11]DA   [12]DB   [13]SC     [14]SD   '];
ss3=['[15]DC     [16]DD    [17]S2FL   [18]S     [19]MS   [20]HS    '];
ss5=['[21]T30   [22]T60    [23]T90'];

disp(sss2);
disp(ss2);
disp(ss4);
disp(ss3);
disp(ss5);
disp(sss2);

elseif V==132;
 disp(['Different towers for voltage 132 KV']); 
 ss2=['[1]T30     [2]T60     [3]T90      [4]HS      [5]MS     [6]T3'];
ss4=['[7]T1SA            [8]T1TA     [9]T1DA    [10]T1EA'];
ss3=['[11]S2EL         [12]S2CL'  ];
ss5=['  '];



disp(sss2);
disp(ss2);
disp(ss4);
disp(ss3);
disp(ss5);
disp(sss2);


elseif V==230;
 disp(['Different towers for voltage 230 KV']); 
 ss2=['[1]S2CL      [2]S1AL      [3]S1BL      [3]S2AL      [4]S2BL      [5]DC '];
ss4=['[6]DC10       [7]DC30        [8]DC60       [9]DC90       [10]LS2 '];
ss3=['[11]LS      [12]T60        [13]SC        [14]D    [15]D10   [16]D30    [17]D60   [18]DT'];
ss5=['[19]DT45    [20]D90   [21]D   [22]S10   [23]S30   [24]S60    [25]S2     [26]S3     [27]T2    [28]TE1'];

disp(sss2);
disp(ss2);
disp(ss4);
disp(ss3);
disp(ss5);
disp(sss2);

elseif V==400;
 disp(['Different towers for voltage 400 KV']); 
 ss2=['[1] S-2   [2]D30-2    [3]D60-2     [4]T1      [5]LS-2       [6]MS-2       [7]HS-2     [8]LS-2      [9]T30-2 '];
ss4=['[10]T60-2         [11]LS     [12]MS      [13]HS     [14]T30       [15]T60     [16]SJA    [17]SJG '];
ss3=['  [18]SCT       [19]SCG        [20]SCA       [21]SCH        [22]SBA      [23]SBG       [24]SBH     '];
ss5=['[25]SL6T      [27]TA60     [28]MA35      [29]LA20     [30]AS-60     [31]LT   [32]LA   [33]MA     [34]H  '];


disp(sss2);
disp(ss2);
disp(ss4);
disp(ss3);
disp(ss5);
disp(sss2);
end









%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555555555

tt74=['Warning'];
tt75=['to end span enter,enter 0'];
disp(tt74);
disp(aaa4);
disp(tt75);
disp(s2);
section=input('number   of   section:');
noft=input('number of first tower:');   
kkk=1;
kj=noft;
rrr=1;
for j=1:section
 
    kkkk=['section ' num2str(j) ];
    disp(s2);
    disp(kkkk)
    disp(s2);
    
    if kj==noft
    disp(['enter type of tower' num2str(kj)]);
   nmn1=input(':','s');
    end
    
for i=1:10000;
    cc(j,i)=input('span(m)' );
    if cc(j,i)==0
        break
    else  
    kj=noft+rrr;
    disp(['enter type of tower' num2str(kj)]);
    kkk=kkk+1;
    if j==1 && i==1;nmn11=input(':','s');end
if j==1 && i==2;nmn12=input(':','s');end
if j==1 && i==3;nmn13=input(':','s');end
if j==1 && i==4;nmn14=input(':','s');end
if j==1 && i==5;nmn15=input(':','s');end
if j==1 && i==6;nmn16=input(':','s');end
if j==1 && i==7;nmn17=input(':','s');end
if j==1 && i==8;nmn18=input(':','s');end
if j==1 && i==9;nmn19=input(':','s');end
if j==2 && i==1;nmn21=input(':','s');end
if j==2 && i==2;nmn22=input(':','s');end
if j==2 && i==3;nmn23=input(':','s');end
if j==2 && i==4;nmn24=input(':','s');end
if j==2 && i==5;nmn25=input(':','s');end
if j==2 && i==6;nmn26=input(':','s');end
if j==2 && i==7;nmn27=input(':','s');end
if j==2 && i==8;nmn28=input(':','s');end
if j==2 && i==9;nmn29=input(':','s');end
if j==3 && i==1;nmn31=input(':','s');end
if j==3 && i==2;nmn32=input(':','s');end
if j==3 && i==3;nmn33=input(':','s');end
if j==3 && i==4;nmn34=input(':','s');end
if j==3 && i==5;nmn35=input(':','s');end
if j==3 && i==6;nmn36=input(':','s');end
if j==3 && i==7;nmn37=input(':','s');end
if j==3 && i==8;nmn38=input(':','s');end
if j==3 && i==9;nmn39=input(':','s');end
if j==4 && i==1;nmn41=input(':','s');end
if j==4 && i==2;nmn42=input(':','s');end
if j==4 && i==3;nmn43=input(':','s');end
if j==4 && i==4;nmn44=input(':','s');end
if j==4 && i==5;nmn45=input(':','s');end
if j==4 && i==6;nmn46=input(':','s');end
if j==4 && i==7;nmn47=input(':','s');end
if j==4 && i==8;nmn48=input(':','s');end
if j==4 && i==9;nmn49=input(':','s');end
if j==5 && i==1;nmn51=input(':','s');end
if j==5 && i==2;nmn52=input(':','s');end
if j==5 && i==3;nmn53=input(':','s');end
if j==5 && i==4;nmn54=input(':','s');end
if j==5 && i==5;nmn55=input(':','s');end
if j==5 && i==6;nmn56=input(':','s');end
if j==5 && i==7;nmn57=input(':','s');end
if j==5 && i==8;nmn58=input(':','s');end
if j==5 && i==9;nmn59=input(':','s');end
if j==6 && i==1;nmn61=input(':','s');end
if j==6 && i==2;nmn62=input(':','s');end
if j==6 && i==3;nmn63=input(':','s');end
if j==6 && i==4;nmn64=input(':','s');end
if j==6 && i==5;nmn65=input(':','s');end
if j==6 && i==6;nmn66=input(':','s');end
if j==6 && i==7;nmn67=input(':','s');end
if j==6 && i==8;nmn68=input(':','s');end
if j==6 && i==9;nmn69=input(':','s');end
if j==7 && i==1;nmn71=input(':','s');end
if j==7 && i==2;nmn72=input(':','s');end
if j==7 && i==3;nmn73=input(':','s');end
if j==7 && i==4;nmn74=input(':','s');end
if j==7 && i==5;nmn75=input(':','s');end
if j==7 && i==6;nmn76=input(':','s');end
if j==7 && i==7;nmn77=input(':','s');end
if j==7 && i==8;nmn78=input(':','s');end
if j==7 && i==9;nmn79=input(':','s');end
if j==8&& i==1;nmn81=input(':','s');end
if j==8&& i==2;nmn82=input(':','s');end
if j==8 && i==3;nmn83=input(':','s');end
if j==8 && i==4;nmn84=input(':','s');end
if j==8 && i==5;nmn85=input(':','s');end
if j==8 && i==6;nmn86=input(':','s');end
if j==8 && i==7;nmn87=input(':','s');end
if j==8 && i==8;nmn88=input(':','s');end
if j==8 && i==9;nmn89=input(':','s');end
if j==9 && i==1;nmn91=input(':','s');end
if j==9 && i==2;nmn92=input(':','s');end
if j==9 && i==3;nmn93=input(':','s');end
if j==9 && i==4;nmn94=input(':','s');end
if j==9 && i==5;nmn95=input(':','s');end
if j==9 && i==6;nmn96=input(':','s');end
if j==9 && i==7;nmn97=input(':','s');end
if j==9 && i==8;nmn98=input(':','s');end
if j==9 && i==9;nmn99=input(':','s');end
    end
   rrr=rrr+1;
  
end

end


[aaa,bbb]=size(cc);
saiz=zeros(1,section);
for j=1:section
    
    for kkk=1:bbb
    if  cc(j,kkk)~=0
      saiz(j)=saiz(j)+1;
    end
    end
end
for j=1:section
c1=0;
c2=0;
for i=1:saiz(j)
    c1=cc(j,i)^3+c1;
    c2=cc(j,i)+c2;
end
S_R(j)=sqrt(c1/c2);
end
S=cc;

for j=1:section
   totalspan(j)=0;
 end

for j=1:section
 for i=1:saiz(j)
      totalspan(j)=totalspan(j)+S(j,i);
 end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5%%%%%%%%%%%5 REJIME NASB

tt81=['What do you want for the output temperature?'];
tt82=['[1] if for all temperature enter 1             [2] if for favorite temperature,enter 2'];
disp(tt81);
disp(s2);
disp(tt82);
disp(s2);
tt83=input('what do you do?');


if tt83==2;
T_S=input('SECOND TEMRATURE(m):');end

i_S=input('SECOND ICE WILDE(MM):');
P_w_Ss=input('SECOND VELOCITY OF WIND(KG/M^2):');
P_w_S=(P_w_Ss^2)/16;


W_i_S=0.913*pi*i_S*(i_S+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w_S=P_w_S*(d+2*i_S)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_S=sqrt( (W_c+W_i_S)^2+W_w_S^2 );%TOTAL WEIGHT




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     H avaliye
tt1=['first information'];
tt2=['[1]if have sag(F) ,enter 1              [2]if have parameter (a),enter 2                 [3]if have safty factor(SF),enter 3'];
disp(tt1)
disp(sss2)
disp(tt2);
disp(sss2);
vh=input('enter number of first information');
maxxx=max(saiz);
 H=zeros(section,maxxx);
 
 
if vh==1

    
  for  j=1:section
   kjh=['SAG TENSION (a)of section' num2str( j)];
 disp(kjh);
F(j)=input(':');
  end
   T_R1=input('first temprature(c):');
i1=input('first ice wild(mm):');
P_www=input('first Velocity of wind(m/s):');
P_w1=(P_www^2)/16;

W_i1=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w1=P_w1*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R1=sqrt( (W_c+W_i1)^2+W_w1^2 );%TOTAL WEIGHT

if tt83==1;
for j=1:section
for ll=1:saiz(j)
 for T_S=2:5:57
   T_R(j,ll,T_S)=T_R1;
   i(j,ll,T_S)=i1;
 P_w(j,ll,T_S)=P_w1;
  W_i(j,ll,T_S)=W_i1;
  W_w(j,ll,T_S)=W_w1;
W_T_R(j,ll,T_S)=W_T_R1;
end
end
end
elseif tt83==2
for j=1:section
for ll=1:saiz(j)

    T_R(j,ll)=T_R1;
   i(j,ll)=i1;
 P_w(j,ll)=P_w1;
  W_i(j,ll)=W_i1;
  W_w(j,ll)=W_w1;
W_T_R(j,ll)=W_T_R1;
end
end
end


for j=1:section
for i=1:saiz(j)
H(j,i)=W_T_R1*(S(j,i)^2)/(8*F(j));
end
end


elseif vh==2
    
    
    for  j=1:section
        kjh=['enter parameter (a)of section' num2str( j)];
        disp(kjh);
a(j)=input(':');
    end
    
T_R1=input('first temprature(c):');
i1=input('first ice wild(mm):');
P_www=input('first Velocity of wind(m/s):');
P_w1=(P_www^2)/16;

W_i1=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w1=P_w1*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R1=sqrt( (W_c+W_i1)^2+W_w1^2 );%TOTAL WEIGHT

if tt83==1
for j=1:section
for ll=1:saiz(j)
 for T_S=2:5:57
  T_R(j,ll,T_S)=T_R1;
   i(j,ll,T_S)=i1;
 P_w(j,ll,T_S)=P_w1;
  W_i(j,ll,T_S)=W_i1;
  W_w(j,ll,T_S)=W_w1;
W_T_R(j,ll,T_S)=W_T_R1;
 end
end
end
elseif tt83==2
for j=1:section
for ll=1:saiz(j)

  T_R(j,ll)=T_R1;
   i(j,ll)=i1;
 P_w(j,ll)=P_w1;
  W_i(j,ll)=W_i1;
  W_w(j,ll)=W_w1;
W_T_R(j,ll)=W_T_R1;

end
end
end

for j=1:section
for i=1:saiz(j)
H(j,i)=W_T_R1*a(j);
end
end


elseif vh==3
     for  j=1:section
        kjh=['safety factor(SF) of section' num2str( j)];
        disp(kjh);
SF(j)=input(':');
    end

for j=1:section
for i=1:saiz(j)
H(j,i)=UTS/SF(j);
end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%             rejime avaliye

ss81=['do you Know critical rejim?'];
ss82=['[1] YES           [2] NO'];
disp(ss81);
disp(s2);
disp(ss82);
disp(s2);
reponc=input('what do you do?');

%%%%%%%%%%%%%%%%%%%%%%%%%%   REJIM MALUM
if reponc==1
for j=1:section
 disp(['eneter information of regims for section' num2str(j) ]);   
 disp(s2)
T_R1(j)=input('first temprature(c):');
i1(j)=input('first ice wild(mm):');
P_www(j)=input('first Velocity of wind(m/s):');
P_w1(j)=(P_www(j)^2)/16;

W_i1(j)=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w1(j)=P_w1(j)*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R1(j)=sqrt( (W_c+W_i1(j))^2+W_w1(j)^2 );%TOTAL WEIGHT
end

if tt83==1
for j=1:section
for ll=1:saiz(j)
 for T_S=2:5:57
    
   T_R(j,ll,T_S)=T_R1(j);
 i(j,ll,T_S)=i1(j);
 P_w(j,ll,T_S)=P_w1(j);
  W_i(j,ll,T_S)=W_i1(j);
  W_w(j,ll,T_S)=W_w1(j);
W_T_R(j,ll,T_S)=W_T_R1(j);
 end
end
end
elseif tt83==2
for j=1:section
for ll=1:saiz(j)
  T_R(j,ll)=T_R1(j);
     i(j,ll)=i1(j);
 P_w(j,ll)=P_w1(j);
 W_i(j,ll)=W_i1(j);
 W_w(j,ll)=W_w1(j);
W_T_R(j,ll)=W_T_R1(j);
end
end
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%   MALUM NABASHE %%%%%%5
elseif reponc==2

    
 %www=['Critical regim is constant for all section'];
%disp(www)  
%www=['[1]yes               [2]no'];
%disp(www)
%zxc=input(':');
%if zxc==1
%end
   


for j=1:section

  disp(['eneter information of regims for section' num2str(j) ]);   
 disp(s2)
www=['rejim of wind'];
disp(www)
disp(s2)
T_R1(j,1)=input('Temprature Of  Rejim(c):');
i1(j,1)=input('Ice Wiled Of Rejim(mm):');
P_www1=input('Velocity of windOf Rejim(m/s):');
P_w1(j,1)=(P_www1^2)/16;
disp(s2)
wwww=['rejim of winter'];
disp(wwww)
disp(s2)
T_R1(j,2)=input('Temprature Of  Rejim(c):');
i1(j,2)=input('Ice Wiled Of Rejim(mm):');
P_www2=input('Velocity of windOf Rejim(m/s):');
P_w1(j,2)=(P_www2^2)/16;
disp(s2)
wwwww=['rejim of wind+winter'];
disp(wwwww)
disp(s2)
T_R1(j,3)=input('Temprature Of  Rejim(c):');
i1(j,3)=input('Ice Wiled Of Rejim(mm):');
P_www3=input('Velocity of windOf Rejim(m/s):');
P_w1(j,3)=(P_www3^2)/16;
disp(s2)
www1=['rejim of Summer'];
disp(www1)
disp(s2)
T_R1(j,4)=input('Temprature Of  Rejim(c):');
i1(j,4)=input('Ice Wiled Of Rejim(mm):');
P_www4=input('Velocity of windOf Rejim(m/s):');
P_w1(j,4)=(P_www4^2)/16;
disp(s2)
end



                                          % FORCES  CALCULATION

W_i1=[0 0 0 0];
W_w1=[0 0 0 0];
W_T_R1=[0 0 0 0];
for j=1:section
  for id=1:4
W_i1(j,id)=0.913*pi*i1(j,id)*(i1(j,id)+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w1(j,id)=P_w1(j,id)*(d+2*i1(j,id))*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R1(j,id)=sqrt( (W_c+W_i1(j,id))^2+W_w1(j,id)^2 );%TOTAL WEIGHT
  end
end

  for ii=1:section
  H1(ii)=H(ii,1);
  end
  
 for ii=1:section
 Rolling_span(ii)=(abs(((24*ALFA*(H(ii,1)^2)*(T_R1(ii,1)-T_R1(ii,2)))/(W_T_R1(ii,1)-W_T_R1(ii,2)))))^(.5); 
 end
 
 

 BBB=[0 0 0];
DDD=[0 0 0];
H_s=[0 0 0];
F1=[0 0 0];

if tt83==1


for j=1:section
for ll=1:saiz(j)
         TS=-8;
 for T_S=2:5:57;
     
    TS=TS+5;
        
for ii=1:4
   
BBB(ii)=((A*e*(S(j,ll)^2)*(W_T_R1(j,ii)^2))/(24*(H1(j)^2)))+(ALFA*A*e*(TS-T_R1(j,ii)))-H1(j);
DDD(ii)=-(A*e*(S(j,ll)^2)*(W_T_S^2))/24;

if  T_R1(ii)==0 && i1(ii)==0 &&  P_w1(ii)==0
    H_s(ii)=10000000;
    F1(ii)=.000000001;
else
 PPP=[1 BBB(ii) 0 DDD(ii)];
H_P=roots(PPP);
for ia=1:3
     if  H_P(ia)>0 &&  H_P(ia)<UTS
         H_s(j,ll,T_S,ii)=H_P(ia);
         break
     else
         H_s(j,ll,T_S,ii)=10000000000;
     end
end
%F1(j,ii)=(W_T_S*(s(j,ll)^2))/(8*H_s(j,ii));
end
end
end
end
end

for j=1:section
for ll=1:saiz(j)
      
 for T_S=2:5:57;
     
    H_prim(j,ll,T_S)=min(H_s(j,ll,T_S,:));
 end
end
end


for j=1:section
for ll=1:saiz(j)
      
 for T_S=2:5:57;
     
for ii=1:4
    if  H_s(j,ll,T_S,ii)==H_prim(j,ll,T_S);
        T_R(j,ll,T_S)=T_R1(j,ii);
        
       i(j,ll,T_S)=i1(j,ii);
       P_w(j,ll,T_S)=P_w1(j,ii);
       W_i(j,ll,T_S)=W_i1(j,ii);
       W_w(j,ll,T_S)=W_w1(j,ii);
       W_T_R(j,ll,T_S)=W_T_R1(j,ii);
       
    %if ii==1;rejem=['rejime wind is critical rejim'];end
   % if ii==2;rejem=['rejime winter is critical rejim'];end
    %if ii==3;rejem=['rejime wind+winter is critical rejim'];end
    %if ii==4;rejem=['rejime summer is critical rejim'];end
    end
end
 end
end
end


elseif   tt83==2
for j=1:section
for ll=1:saiz(j)

        
for ii=1:4
   
BBB(ii)=((A*e*(S(j,ll)^2)*(W_T_R1(j,ii)^2))/(24*(H1(j)^2)))+(ALFA*A*e*(T_S-T_R1(j,ii)))-H1(j);
DDD(ii)=-(A*e*(S(j,ll)^2)*(W_T_S^2))/24;

if  T_R1(ii)==0 && i1(ii)==0 &&  P_w1(ii)==0
    H_s(ii)=10000000;
    F1(ii)=.000000001;
else
 PPP=[1 BBB(ii) 0 DDD(ii)];
H_P=roots(PPP);
for ia=1:3
     if  H_P(ia)>0 &&  H_P(ia)<UTS
         H_s(j,ll,ii)=H_P(ia);
         break
     else
         H_s(j,ll,ii)=10000000000;
     end
end
%F1(j,ii)=(W_T_S*(s(j,ll)^2))/(8*H_s(ii));
end
end
end
end


for j=1:section
for ll=1:saiz(j)
          
    H_prim(j,ll)=min(H_s(j,ll,:));
 end
end


for j=1:section
for ll=1:saiz(j)
           
for ii=1:4
    if  H_s(j,ll,ii)==H_prim(j,ll);
        T_R(j,ll)=T_R1(j,ii);
        
       i(j,ll)=i1(j,ii);
       P_w(j,ll)=P_w1(j,ii);
       W_i(j,ll)=W_i1(j,ii);
       W_w(j,ll)=W_w1(j,ii);
       W_T_R(j,ll)=W_T_R1(j,ii);
       
    %if ii==1;rejem=['rejime wind is critical rejim'];end
   % if ii==2;rejem=['rejime winter is critical rejim'];end
    %if ii==3;rejem=['rejime wind+winter is critical rejim'];end
    %if ii==4;rejem=['rejime summer is critical rejim'];end
    end
end
 end
end
 
end




















end
end
w_g=input('Allowable distance from the wire to the ground:');


























%%%%%%%%%%%%%%%%%%   for all temprature  %%%%%%%%%%%%%%%%%%%
if tt83==1
F3=zeros(section,maxxx,57);
T=zeros(section,maxxx,57);
a2=zeros(section,maxxx,57);
phase_distance=zeros(section,maxxx,57);


for i=1:section
   
  for j=1:saiz(i)
      TS=-8;
 for T_S=2:5:57;
     
     TS=TS+5;
     BBB=((A*e*(S(i,j)^2)*(W_T_R(i,j,T_S)^2))/(24*(H(i,j)^2)))+(ALFA*A*e*(TS-T_R(i,j,T_S)-tct))-H(i,j);
      DDD=-(A*e*(S(i,j)^2)*(W_T_S^2))/24;
      PPP=[1 BBB 0 DDD];
      H_P=roots(PPP);
for ia=1:3
     if  H_P(ia)>0 &&  H_P(ia)<UTS
         H_s(i)=H_P(ia);
         break
     else
         H_s(i)=0;
     end
end
H_s;
F3(i,j,T_S)=(W_T_S*(S(i,j)^2))/(8*H_s(i));
T(i,j,T_S)=H_s(i)+W_T_S*F3(i,j,T_S);
a2(i,j,T_S)=(S(i,j)^2)/(8*F3(i,j,T_S));
 if V==20
     n_L_I=2;       %tedade maghare
     L_L_I=.18;     %tole maghare
     Y_L_I=.20;     %tole yaragh
     %ke=.63;
 elseif V==63
     n_L_I=5;       %tedade maghare
     L_L_I=.18;     %tole maghare
     Y_L_I=.50;     %tole yaragh
     %ke=.63;
 elseif  V==230
     n_L_I=15;     %tedade maghare
     L_L_I=.20;
     Y_L_I=.50;
     %ke=.63;
 elseif  V==400
     n_L_I=25;     %tedade maghare
     L_L_I=.20;
     Y_L_I=.50;
     %ke=.63;
 end
  L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
  phase_distance(i,j,T_S)=ke*sqrt(F3(i,j,T_S)+L_I)+(V/150);
  end
  end
end
 aaa1=['Type Of Conductor=' nn           ];
aaa6=[' Temprature =         -3                 2                  7                 12                    17          22          27          32          37          42          47          52'];

 %aaa3=[  'Span=' num2star(S(1))  '         '  'Tension=' num2str(T(1))     '          '   'Sag=' num2str(F3(1))   '             '    'Second Parameter=' num2str(a2(1))   '               '   'phase_distance=' num2str(phase_distance(1))] ;
aaa4=['_____________'];
aaa5=['RESPONSE'];
disp(aaa4);
disp(aaa5);
disp(aaa4);
disp(sss2);
disp(aaa1);



disp(e2);
disp(e2);
disp(e2);
disp(e2);
disp(e2);



%%%%%%%%%%%%%%%%%%%%%%%%  sag
disp(sss2);
display('            SAG     TENSION')
disp(sss2);

jm=noft;
for i=1:section
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);  
 
 
 if vh==1;aaa21=[   'first sag=' num2str(F(i))  ];disp(aaa21);end
 if vh==2;aaa22=[ 'Parameter=' num2str(a(i)) ];disp(aaa22);end
if vh==3;aaa22=[ 'SAFTY FACTOR=' num2str(SF(i) ) ];disp(aaa22);end
if vh==3 && reponc==2;
%    disp(rejem);
  qwer=['Rolling span=' num2str(Rolling_span(i))];disp(qwer);
end

asd1=['Equivalent Span=' num2str(S_R(i))];
disp(asd1);
asdf=['TOTAL SPAN=' num2str( totalspan(i))];
disp(asdf);


 for j=1:saiz(i)
    ll=1;
    c_s(j)=S(i,j);
 for th=2:5:57
 c_f(j,ll)=F3(i,j,th);
ll=ll+1;
 end
 end
 [sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end

F31=[c_s',c_f];
display(' TOWER     TYPE      SPAN             -3             2                  7                   12                  17                    22                    27                    32                    37                   42                  47                     52  ')
jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end


for ok=1:saiz(i)    
 k=0;
ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);
jm=jm+1;        
if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end

end
 
end
disp(sss2);







%%%%%%%%%%%%%%%%%%%%%%%%  Tension
display('          TENSION')
disp(sss2);

jm=noft;
for i=1:section
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);  

 for j=1:saiz(i)
    ll=1;
    c_s(j)=S(i,j);
 for th=2:5:57
 c_f(j,ll)=T(i,j,th);
ll=ll+1;
 end
 end
 [sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end

F31=[c_s',c_f];
display(' TOWER     TYPE      SPAN             -3                 2                    7                    12                   17                   22                  27                 32                   37                   42                  47                 52 ')

jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end



for ok=1:saiz(i)    
 k=0;

ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);
jm=jm+1;   
if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end



end


 
end
disp(sss2);


%%%%%%%%%%%%%%%%%%%%%%%%  parameter
display('         SPAN   PARAMETER');
disp(sss2);
aE=1;
jm=noft;
for i=1:section
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);  

 for j=1:saiz(i)
    ll=1;
    c_s(j)=S(i,j);
 for th=2:5:57
 c_f(j,ll)=a2(i,j,th);
ll=ll+1;
 end
 end
 [sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end

F31=[c_s',c_f];
display(' TOWER     TYPE      SPAN             -3               2                 7                    12                   17                    22                   27                   32                   37                   42                 47                     52  ')

jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end






for ok=1:saiz(i)    
 k=0;

ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);
jm=jm+1;   
if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end


end

 
end
disp(sss2);

%%%%%%%%%%%%%%%%%%%%%%%%  phase distance
display('         PHASE  DISTANCE');
disp(sss2);

aE=1;
jm=noft;
for i=1:section
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);  

 for j=1:saiz(i)
    ll=1;
    c_s(j)=S(i,j);
 for th=2:5:57
 c_f(j,ll)=phase_distance(i,j,th);
ll=ll+1;
 end
 end
 [sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end

F31=[c_s',c_f];
display(' TOWER     TYPE      SPAN            -3              2                   7                   12                   17                   22                  27                   32                   37                     42                  47                    52    ')


jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end




for ok=1:saiz(i)    
 k=0;

ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);
jm=jm+1;   
if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end



end


end
disp(sss2);



%%%%%%%%%%%%%%%%%%%%%%%%%%%   for one  temprature    %%%%%%%%555 
elseif tt83==2



F3=zeros(section,maxxx);
T=zeros(section,maxxx);
a2=zeros(section,maxxx);
phase_distance=zeros(section,maxxx);



for i=1:section
   
  for j=1:saiz(i)
 
      BBB=((A*e*(S(i,j)^2)*(W_T_R(i,j)^2))/(24*(H(i,j)^2)))+(ALFA*A*e*(T_S-T_R(i,j)-tct))-H(i,j);
      DDD=-(A*e*(S(i,j)^2)*(W_T_S^2))/24;
      PPP=[1 BBB 0 DDD];
      H_P=roots(PPP);
for ia=1:3
     if  H_P(ia)>0 &&  H_P(ia)<UTS
         H_s(i)=H_P(ia);
         break
     else
         H_s(i)=0;
     end
end
H_s;
F3(i,j)=(W_T_S*(S(i,j)^2))/(8*H_s(i));
T(i,j)=H_s(i)+W_T_S*F3(i,j);
a2(i,j)=(S(i,j)^2)/(8*F3(i,j));
 if V==20
     n_L_I=2;       %tedade maghare
     L_L_I=.18;     %tole maghare
     Y_L_I=.20;     %tole yaragh
     %ke=.63;
 elseif V==63
     n_L_I=5;       %tedade maghare
     L_L_I=.18;     %tole maghare
     Y_L_I=.50;     %tole yaragh
     %ke=.63;
 elseif  V==230
     n_L_I=15;     %tedade maghare
     L_L_I=.20;
     Y_L_I=.50;
     %ke=.63;
 elseif  V==400
     n_L_I=25;     %tedade maghare
     L_L_I=.20;
     Y_L_I=.50;
     %ke=.63;
 end
  L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
  phase_distance(i,j)=ke*sqrt(F3(i,j)+L_I)+(V/150);
  end
end
 aaa1=['Type Of Conductor=' nn '              '     'First Temprature=' num2str(T_R(1,1))    ];
%aaa3=[  'Span=' num2star(S(1))  '         '  'Tension=' num2str(T(1))     '          '   'Sag=' num2str(F3(1))   '             '    'Second Parameter=' num2str(a2(1))   '               '   'phase_distance=' num2str(phase_distance(1))] ;
aaa4=['_____________'];
aaa5=['RESPONSE'];
disp(aaa4);
disp(aaa5);
disp(aaa4);
disp(sss2);
disp(aaa1);


disp(e2);
disp(e2);
disp(e2);

%%%%%%%%%%%%%%%%%%%%%%%%  sag
disp(sss2);
display('           SAG   TENSION')
disp(sss2);

aE=1;
jm=noft;
for i=1:section
  
c_f=F3(i,:);
c_s=S(i,:);
 
 [sa,sai]=size(c_f);
  abn=1;
for ia=1:sai
 if c_f(:,abn)==0
c_f(:,abn)=[];
abn=abn-1;
 end
 abn=abn+1; 
end
[sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end
F31=[c_s',c_f'];
    
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);
 disp(s2);  
 
  if vh==1;aaa21=[   'first sag=' num2str(F(i))  ];disp(aaa21);end
 if vh==2;aaa22=[ 'Parameter=' num2str(a(i)) ];disp(aaa22);end
 if vh==3;aaa22=[ 'SAFTY FACTOR=' num2str(SF(i) ) ];disp(aaa22);end
 if vh==3 && reponc==2;qwer=['Rolling span=' num2str(Rolling_span(i))];disp(qwer);end

 asd1=['Equivalent Span=' num2str(S_R(i))];
disp(asd1);
asdf=['TOTAL SPAN=' num2str(totalspan(i))];
disp(asdf); 



display(' TOWER     TYPE      SPAN       SAG')
jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end

for ok=1:saiz(i)
  


 k=0;
ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);
jm=jm+1;   


if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end


end


end
disp(sss2);
%%%%%%%%%%%%%%%%%%%%%%%%  Tension
display('             TENSION')
disp(sss2);
aE=1;
jm=noft;
for i=1:section
  
c_f=T(i,:);
c_s=S(i,:);
 
 [sa,sai]=size(c_f);
  abn=1;
for ia=1:sai
 if c_f(:,abn)==0
c_f(:,abn)=[];
abn=abn-1;
 end
 abn=abn+1; 
end
[sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end
F31=[c_s',c_f'];
    
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);
 
display(' TOWER     TYPE      SPAN       TENSION')

jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end


for ok=1:saiz(i)
  
 k=0;
ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);
jm=jm+1;   
if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end


end

end
disp(sss2);
%%%%%%%%%%%%%%%%%%%%%%%%  parameter
display('         PARAMETER');
disp(sss2);
aE=1;
jm=noft;
for i=1:section
  
c_f=a2(i,:);
c_s=S(i,:);
 
 [sa,sai]=size(c_f);
  abn=1;
for ia=1:sai
 if c_f(:,abn)==0
c_f(:,abn)=[];
abn=abn-1;
 end
 abn=abn+1; 
end
[sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end
F31=[c_s',c_f'];
    
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);
 
display(' TOWER     TYPE      SPAN       PARAMETER')


jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end



for ok=1:saiz(i)
  
 k=0;
ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);
jm=jm+1;   


if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end


end

end
disp(sss2);
%%%%%%%%%%%%%%%%%%%%%%%%  phase distance
display('      PHASE  DISTANCE');
disp(sss2);

aE=1;
jm=noft;
for i=1:section
  
c_f= phase_distance(i,:);
c_s=S(i,:);
 
 [sa,sai]=size(c_f);
  abn=1;
for ia=1:sai
 if c_f(:,abn)==0
c_f(:,abn)=[];
abn=abn-1;
 end
 abn=abn+1; 
end
[sa2,sai2]=size(c_s);
abb=1;
for ib=1:sai2
 if c_s(:,abb)==0
c_s(:,abb)=[];
abb=abb-1;
 end
 abb=abb+1; 
end
F31=[c_s',c_f'];
    
 kkkk=['section ' num2str(i) ];
 disp(s2);
 disp(kkkk)
 disp(s2);
 
display(' TOWER     TYPE      SPAN       PHASE DISTANCE')

jmm=noft;
if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end

if i==2;
if saiz(1)==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if saiz(1)==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if saiz(1)==3 ; disp(['       ' num2str(jm) '      ' nmn13]);end
if saiz(1)==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if saiz(1)==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if saiz(1)==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if saiz(1)==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if saiz(1)==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if saiz(1)==9; disp(['       ' num2str(jm) '      ' nmn19]);end
  
end


if i==3;

if saiz(2)==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if saiz(2)==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if saiz(2)==3 ; disp(['       ' num2str(jm) '      ' nmn23]);end
if saiz(2)==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if saiz(2)==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if saiz(2)==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if saiz(2)==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if saiz(2)==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if saiz(2)==9; disp(['       ' num2str(jm) '      ' nmn29]);end

end




if i==4;

 if saiz(3)==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if saiz(3)==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if saiz(3)==3 ; disp(['       ' num2str(jm) '      ' nmn33]);end
if saiz(3)==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if saiz(3)==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if saiz(3)==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if saiz(3)==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if saiz(3)==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if saiz(3)==9; disp(['       ' num2str(jm) '      ' nmn39]);end

end



if i==5;
 if saiz(4)==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if saiz(4)==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if saiz(4)==3 ; disp(['       ' num2str(jm) '      ' nmn43]);end
if saiz(4)==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if saiz(4)==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if saiz(4)==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if saiz(4)==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if saiz(4)==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if saiz(4)==9; disp(['       ' num2str(jm) '      ' nmn49]);end
end


if i==6;

 if saiz(5)==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if saiz(5)==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if saiz(5)==3 ; disp(['       ' num2str(jm) '      ' nmn53]);end
if saiz(5)==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if saiz(5)==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if saiz(5)==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if saiz(5)==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if saiz(5)==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if saiz(5)==9; disp(['       ' num2str(jm) '      ' nmn59]);end
  
end


if i==7;
 if saiz(6)==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if saiz(6)==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if saiz(6)==3 ; disp(['       ' num2str(jm) '      ' nmn63]);end
if saiz(6)==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if saiz(6)==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if saiz(6)==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if saiz(6)==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if saiz(6)==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if saiz(6)==9; disp(['       ' num2str(jm) '      ' nmn69]);end
end



if i==8;
 if saiz(7)==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if saiz(7)==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if saiz(7) ==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if saiz(7)==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if saiz(7)==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if saiz(7)==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if saiz(7)==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if saiz(7)==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if saiz(7)==9; disp(['       ' num2str(jm) '      ' nmn79]);end
end

if i==9;
 if saiz(8)==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if saiz(8)==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if saiz(8)==3 ; disp(['       ' num2str(jm) '      ' nmn83]);end
if saiz(8)==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if saiz(8)==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if saiz(8)==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if saiz(8)==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if saiz(8)==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if saiz(8)==9; disp(['       ' num2str(jm) '      ' nmn89]);end
end



for ok=1:saiz(i)
  
 k=0;
ggg=F31(ok,:);
hhh=['                                ' num2str(ggg) ];
disp(hhh);

jm=jm+1;   
if i==1 && ok==1; disp(['       ' num2str(jm) '      ' nmn11]);end
if i==1 && ok==2; disp(['       ' num2str(jm) '      ' nmn12]);end
if i==1 && ok==3; disp(['       ' num2str(jm) '      ' nmn13]);end
if i==1 && ok==4; disp(['       ' num2str(jm) '      ' nmn14]);end
if i==1 && ok==5; disp(['       ' num2str(jm) '      ' nmn15]);end
if i==1 && ok==6; disp(['       ' num2str(jm) '      ' nmn16]);end
if i==1 && ok==7; disp(['       ' num2str(jm) '      ' nmn17]);end
if i==1 && ok==8; disp(['       ' num2str(jm) '      ' nmn18]);end
if i==1 && ok==9; disp(['       ' num2str(jm) '      ' nmn19]);end
if i==2 && ok==1; disp(['       ' num2str(jm) '      ' nmn21]);end
if i==2 && ok==2; disp(['       ' num2str(jm) '      ' nmn22]);end
if i==2 && ok==3; disp(['       ' num2str(jm) '      ' nmn23]);end
if i==2 && ok==4; disp(['       ' num2str(jm) '      ' nmn24]);end
if i==2 && ok==5; disp(['       ' num2str(jm) '      ' nmn25]);end
if i==2 && ok==6; disp(['       ' num2str(jm) '      ' nmn26]);end
if i==2 && ok==7; disp(['       ' num2str(jm) '      ' nmn27]);end
if i==2 && ok==8; disp(['       ' num2str(jm) '      ' nmn28]);end
if i==2 && ok==9; disp(['       ' num2str(jm) '      ' nmn29]);end
if i==3 && ok==1; disp(['       ' num2str(jm) '      ' nmn31]);end
if i==3 && ok==2; disp(['       ' num2str(jm) '      ' nmn32]);end
if i==3 && ok==3; disp(['       ' num2str(jm) '      ' nmn33]);end
if i==3 && ok==4; disp(['       ' num2str(jm) '      ' nmn34]);end
if i==3 && ok==5; disp(['       ' num2str(jm) '      ' nmn35]);end
if i==3 && ok==6; disp(['       ' num2str(jm) '      ' nmn36]);end
if i==3 && ok==7; disp(['       ' num2str(jm) '      ' nmn37]);end
if i==3 && ok==8; disp(['       ' num2str(jm) '      ' nmn38]);end
if i==3 && ok==9; disp(['       ' num2str(jm) '      ' nmn39]);end
if i==4 && ok==1; disp(['       ' num2str(jm) '      ' nmn41]);end
if i==4 && ok==2; disp(['       ' num2str(jm) '      ' nmn42]);end
if i==4 && ok==3; disp(['       ' num2str(jm) '      ' nmn43]);end
if i==4 && ok==4; disp(['       ' num2str(jm) '      ' nmn44]);end
if i==4 && ok==5; disp(['       ' num2str(jm) '      ' nmn45]);end
if i==4 && ok==6; disp(['       ' num2str(jm) '      ' nmn46]);end
if i==4 && ok==7; disp(['       ' num2str(jm) '      ' nmn47]);end
if i==4 && ok==8; disp(['       ' num2str(jm) '      ' nmn48]);end
if i==4 && ok==9; disp(['       ' num2str(jm) '      ' nmn49]);end
if i==5 && ok==1; disp(['       ' num2str(jm) '      ' nmn51]);end
if i==5 && ok==2; disp(['       ' num2str(jm) '      ' nmn52]);end
if i==5 && ok==3; disp(['       ' num2str(jm) '      ' nmn53]);end
if i==5 && ok==4; disp(['       ' num2str(jm) '      ' nmn54]);end
if i==5 && ok==5; disp(['       ' num2str(jm) '      ' nmn55]);end
if i==5 && ok==6; disp(['       ' num2str(jm) '      ' nmn56]);end
if i==5 && ok==7; disp(['       ' num2str(jm) '      ' nmn57]);end
if i==5 && ok==8; disp(['       ' num2str(jm) '      ' nmn58]);end
if i==5 && ok==9; disp(['       ' num2str(jm) '      ' nmn59]);end
if i==6 && ok==1; disp(['       ' num2str(jm) '      ' nmn61]);end
if i==6 && ok==2; disp(['       ' num2str(jm) '      ' nmn62]);end
if i==6 && ok==3; disp(['       ' num2str(jm) '      ' nmn63]);end
if i==6 && ok==4; disp(['       ' num2str(jm) '      ' nmn64]);end
if i==6 && ok==5; disp(['       ' num2str(jm) '      ' nmn65]);end
if i==6 && ok==6; disp(['       ' num2str(jm) '      ' nmn66]);end
if i==6 && ok==7; disp(['       ' num2str(jm) '      ' nmn67]);end
if i==6 && ok==8; disp(['       ' num2str(jm) '      ' nmn68]);end
if i==6 && ok==9; disp(['       ' num2str(jm) '      ' nmn69]);end
if i==7 && ok==1; disp(['       ' num2str(jm) '      ' nmn71]);end
if i==7 && ok==2; disp(['       ' num2str(jm) '      ' nmn72]);end
if i==7 && ok==3; disp(['       ' num2str(jm) '      ' nmn73]);end
if i==7 && ok==4; disp(['       ' num2str(jm) '      ' nmn74]);end
if i==7 && ok==5; disp(['       ' num2str(jm) '      ' nmn75]);end
if i==7 && ok==6; disp(['       ' num2str(jm) '      ' nmn76]);end
if i==7 && ok==7; disp(['       ' num2str(jm) '      ' nmn77]);end
if i==7 && ok==8; disp(['       ' num2str(jm) '      ' nmn78]);end
if i==7 && ok==9; disp(['       ' num2str(jm) '      ' nmn79]);end
if i==8&& ok==1; disp(['       ' num2str(jm) '      ' nmn81]);end
if i==8&& ok==2; disp(['       ' num2str(jm) '      ' nmn82]);end
if i==8 && ok==3; disp(['       ' num2str(jm) '      ' nmn83]);end
if i==8 && ok==4; disp(['       ' num2str(jm) '      ' nmn84]);end
if i==8 && ok==5; disp(['       ' num2str(jm) '      ' nmn85]);end
if i==8 && ok==6; disp(['       ' num2str(jm) '      ' nmn86]);end
if i==8 && ok==7; disp(['       ' num2str(jm) '      ' nmn87]);end
if i==8 && ok==8; disp(['       ' num2str(jm) '      ' nmn88]);end
if i==8 && ok==9; disp(['       ' num2str(jm) '      ' nmn89]);end
if i==9 && ok==1; disp(['       ' num2str(jm) '      ' nmn91]);end
if i==9 && ok==2; disp(['       ' num2str(jm) '      ' nmn92]);end
if i==9 && ok==3; disp(['       ' num2str(jm) '      ' nmn93]);end
if i==9 && ok==4; disp(['       ' num2str(jm) '      ' nmn94]);end
if i==9 && ok==5; disp(['       ' num2str(jm) '      ' nmn95]);end
if i==9 && ok==6; disp(['       ' num2str(jm) '      ' nmn96]);end
if i==9 && ok==7; disp(['       ' num2str(jm) '      ' nmn97]);end
if i==9 && ok==8; disp(['       ' num2str(jm) '      ' nmn98]);end
if i==9 && ok==9; disp(['       ' num2str(jm) '      ' nmn99]);end


end

end
disp(sss2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%% end of one temprature %%%%%%
end


