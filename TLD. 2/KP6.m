function varargout = KP6(varargin)
% KP6 MATLAB code for KP6.fig
%      KP6, by itself, creates a new KP6 or raises the existing
%      singleton*.
%
%      H = KP6 returns the handle to a new KP6 or the handle to
%      the existing singleton*.
%
%      KP6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KP6.M with the given input arguments.
%
%      KP6('Property','Value',...) creates a new KP6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KP6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KP6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KP6

% Last Modified by GUIDE v2.5 28-Dec-2014 21:12:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KP6_OpeningFcn, ...
                   'gui_OutputFcn',  @KP6_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before KP6 is made visible.
function KP6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KP6 (see VARARGIN)

% Choose default command line output for KP6
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KP6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KP6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function KK_Callback(hObject, eventdata, handles)
% hObject    handle to KK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KK as text
%        str2double(get(hObject,'String')) returns contents of KK as a double


% --- Executes during object creation, after setting all properties.
function KK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function UU_Callback(hObject, eventdata, handles)
% hObject    handle to UU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of UU as text
%        str2double(get(hObject,'String')) returns contents of UU as a double


% --- Executes during object creation, after setting all properties.
function UU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PP_Callback(hObject, eventdata, handles)
% hObject    handle to PP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PP as text
%        str2double(get(hObject,'String')) returns contents of PP as a double


% --- Executes during object creation, after setting all properties.
function PP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function QQ_Callback(hObject, eventdata, handles)
% hObject    handle to QQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QQ as text
%        str2double(get(hObject,'String')) returns contents of QQ as a double


% --- Executes during object creation, after setting all properties.
function QQ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TAA_Callback(hObject, eventdata, handles)
% hObject    handle to TAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TAA as text
%        str2double(get(hObject,'String')) returns contents of TAA as a double


% --- Executes during object creation, after setting all properties.
function TAA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TCC_Callback(hObject, eventdata, handles)
% hObject    handle to TCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TCC as text
%        str2double(get(hObject,'String')) returns contents of TCC as a double


% --- Executes during object creation, after setting all properties.
function TCC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function INN_Callback(hObject, eventdata, handles)
% hObject    handle to INN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of INN as text
%        str2double(get(hObject,'String')) returns contents of INN as a double


% --- Executes during object creation, after setting all properties.
function INN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to INN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in II.
function II_Callback(hObject, eventdata, handles)
% hObject    handle to II (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns II contents as cell array
%        contents{get(hObject,'Value')} returns selected item from II


% --- Executes during object creation, after setting all properties.
function II_CreateFcn(hObject, eventdata, handles)
% hObject    handle to II (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NCC_Callback(hObject, eventdata, handles)
% hObject    handle to NCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Nc=str2double(get(handles.NCC,'string'));
if Nc==2
    set(handles.HA,'string','distance between circuits a,c`(cm)')
    h=str2double(get(handles.HH,'string'));
    set(handles.H11,'string','distance between circuits b,b`(cm)')
    h1=str2double(get(handles.HH1,'string'));
else
       set(handles.HA,'string','-----')
       set(handles.H11,'string','-----')
end
% Hints: get(hObject,'String') returns contents of NCC as text
%        str2double(get(hObject,'String')) returns contents of NCC as a double


% --- Executes during object creation, after setting all properties.
function NCC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NSS_Callback(hObject, eventdata, handles)
% hObject    handle to NSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ns=str2double(get(handles.NSS,'string'));
if ns~=1 
    set(handles.DS1,'string','distance between subconductor(cm)')
    ds=str2double(get(handles.DSS,'string'));
else
       set(handles.DS1,'string','-----')
end
% Hints: get(hObject,'String') returns contents of NSS as text
%        str2double(get(hObject,'String')) returns contents of NSS as a double


% --- Executes during object creation, after setting all properties.
function NSS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HH_Callback(hObject, eventdata, handles)
% hObject    handle to HH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HH as text
%        str2double(get(hObject,'String')) returns contents of HH as a double


% --- Executes during object creation, after setting all properties.
function HH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HH1_Callback(hObject, eventdata, handles)
% hObject    handle to HH1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HH1 as text
%        str2double(get(hObject,'String')) returns contents of HH1 as a double


% --- Executes during object creation, after setting all properties.
function HH1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HH1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DSS_Callback(hObject, eventdata, handles)
% hObject    handle to DSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DSS as text
%        str2double(get(hObject,'String')) returns contents of DSS as a double


% --- Executes during object creation, after setting all properties.
function DSS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GMM_Callback(hObject, eventdata, handles)
% hObject    handle to GMM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GMM as text
%        str2double(get(hObject,'String')) returns contents of GMM as a double


% --- Executes during object creation, after setting all properties.
function GMM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GMM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function XLL_Callback(hObject, eventdata, handles)
% hObject    handle to XLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XLL as text
%        str2double(get(hObject,'String')) returns contents of XLL as a double


% --- Executes during object creation, after setting all properties.
function XLL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BB_Callback(hObject, eventdata, handles)
% hObject    handle to BB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BB as text
%        str2double(get(hObject,'String')) returns contents of BB as a double


% --- Executes during object creation, after setting all properties.
function BB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZII_Callback(hObject, eventdata, handles)
% hObject    handle to ZII (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZII as text
%        str2double(get(hObject,'String')) returns contents of ZII as a double


% --- Executes during object creation, after setting all properties.
function ZII_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZII (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PII_Callback(hObject, eventdata, handles)
% hObject    handle to PII (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PII as text
%        str2double(get(hObject,'String')) returns contents of PII as a double


% --- Executes during object creation, after setting all properties.
function PII_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PII (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Z=[6	2.79	1	2.79	8.37	36.7	72.4	42.7	84.3	149	1346	0.7827	0.8773	0.7828	0.8774	0.2835	192	8100	19.1;
6	3.66	1	3.66	10.98	63.1	124.5	73.6	145.3	255	2223	0.4541	0.509	0.4543	0.50916	0.2664	288	8100	19.1;
6	4.72	7	1.57	14.15	105	207.2	118.5	233.9	394	3335	0.2733	0.3063	0.2736	0.3066	0.2506	417	7700	19.8;
26	2.57	7	2	16.3	135.2	266.8	156.9	309.6	546	5107	0.2134	0.2392	0.2137	0.2392	0.2405	460	7700	18.9;
30	2.79	7	2.79	19.53	183.4	361.9	226.2	446.4	842	8137	0.1576	0.1766	0.1581	0.1771	0.2277	549	8200	17.8;
30	2.69	7	2.69	18.82	170.5	236.4	210.3	415	783	7736	0.1696	0.1901	0.1701	0.1901	0.2305	530	8200	17.8;
36	3.42	7	2.68	21.8	241.7	477	281	554.6	977	8821	0.1197	0.1342	0.1204	0.1342	0.2224	670	7700	18.9;
36	4.44	7	3.45	28.14	403	795	468.6	924.8	1628	14165	0.0714	0.08	0.0725	0.08	0.2063	900	7700	18.9;
54	3.28	7	3.28	29.52	456	900	515.1	1016.6	1724	14664	0.0635	0.0712	0.0648	0.073	0.2038	970	7000	19.3;
54	3.38	7	3.38	30.38	483.4	954	546	1077.5	1828	15527	0.0598	0.067	0.0611	0.0695	0.202	1010	7000	19.3;
54	3.515	7	3.515	31.65	523.7	1033.5	591.2	1166.7	1980	16843	0.0551	0.0618	0.0566	0.0637	0.1995	1060	7000	19.3;
54	4.018	19	2.41	36.17	684.6	1351	771.6	1522.8	2584	21610	0.0422	0.0473	0.0441	0.0492	0.1908	1250	6800	19.4;
21	2	2	2	8.37	454	345	58.43	34	460	7232	25	34	32	32	23	34	17311	11.5;
21	2	2	2	4	431	2342	12.56	32	112	565.2	23	23	21	23	43	245	13000	18];


insuinfo=[70	70	80	100	120	120	160	160	210	300	80	100	120	160	210;
225	255	255	255	255	255	255	280	280	330	255	255	255	330	330;
146	146	146	146	146	146	146	170	170	195	146	146	146	170	170;
295	295	320	295	320	295	320	370	380	390	440	440	440	525	525;
5.2	4.4	5.4	5.2	5.4	5.2	6.6	8.5	8.5	13	8.3	8.3	8.3	11.5 12];

K=str2double(get(handles.KK,'string'));
U=str2double(get(handles.UU,'string'));
P=str2double(get(handles.PP,'string'));
QL=str2double(get(handles.QQ,'string'));
Ta=str2double(get(handles.TAA,'string'));
Tc=str2double(get(handles.TCC,'string'));
IN=str2double(get(handles.INN,'string'));
i=get(handles.II,'value');

Nc=str2double(get(handles.NCC,'string'));
ns=str2double(get(handles.NSS,'string'));
h=str2double(get(handles.HH,'string'));
h1=str2double(get(handles.HH1,'string'));
ds=str2double(get(handles.DSS,'string'));
         
         
         F=50;  %System Ferqency (HZ)
%L1=input('line model. enter 0 or 1 .o=khat kootah .1=khat motevaset');
%ro=input(' enter number of ro=');

%table of conductor
%conductor information
if i==1,N=['Fox'];c=[8.37 0.7822];end
if i==2,N=['Mink'];c=[10.98 0.4546];end
if i==3,N=['Dog']; c=[14.15 0.2733];end
if i==4,N=['Hyena'];c=[14.57 0.2733];end
if i==5,N=['Lynx'];c=[19.53 0.1576];end
if i==6,N=['partridge'];c=[16.29 0.2136];end
if i==7,N=['Oriole'];c=[18.83 0.1693];end
if i==8,N=['Hawk'];c=[21.78 0.1196];end
if i==9,N=['Drake'];c=[28.13 0.07176];end
if i==10,N=['Canary'];c=[29.51 0.06332];end
if i==11,N=['Cardinal'];c=[30.39 0.05973];end
if i==12,N=['Curlew'];c=[31.62 0.05518];end
if i==13,N=['Martin'];c=[36.16 0.04238];end
% take from data file,GMD,GMR for N-boundel
    Rac=(c(1,2)*(228+Tc))/(228+Ta);
    d=c(1,1);
    GMR(1)=0.7788*d/20; 
  
    if Nc~=2
         set(handles.HA,'string','-----');%h=input(' distance between circuits a,c`(cm)=');
         set(handles.H11,'string','-----');%h1=input(' distance between circuits b,b`(cm)=');
    end
     
     if ns==1
            set(handles.DS1,'string','-----');%ds=input (' distance between subconductor(cm)=');%more the conditional bondel
      end
    %for one circuit line and one boundel
    io=0;
    SILl=zeros(1,6);
for GMD=50:50:300
    io=io+1;
    if  ns==1
      xl= 0.1447*log10(GMD/GMR(1));%calculated per kiloometer(ohm/k)
      xc=0.1318*log10(GMD/GMR(1)); %calculated per kiloometer(Mohm/k)
    end
   %for boundel line
   if ns~=1 
      GMR(ns)=((ns* GMR(1)*ds/(2*sin(pi/ns))))^(1/ns);
      e1=['   ' num2str(ns) ' Bondel '];
      xl= 0.1447*log10(GMD/GMR(ns));%calculated per kiloometer(ohm/k)
      xc=0.1318*log10(GMD/GMR(ns)); %calculated per kiloometer(Mohm/k)
   end
   %for two circuit line
  if Nc==2
     q=sqrt(GMD^2+h^2);
     GMRa=sqrt(GMR(ns)*q);%GMRa=GMRc
     GMRb=sqrt(GMR(ns)*h1);
     GMR2b=(GMRa^2*GMRb)^(1/3);
   s=h1-h;f=sqrt(GMD^2-(s/2)^2);f1=sqrt((h+(s/2))^2+f^2);
     GMDab=sqrt(GMD*f1);%GMDab=GMDbc
     GMDca=sqrt(GMD*h);
     GMD1=(GMDab^2*GMDca)^(1/3);
     xl= 0.1447*log10(GMD1/GMR2b);%calculated per kiloometer(ohm/k)
     xc=0.1318*log10(GMD1/GMR2b); %calculated per kiloometer(Mohm/k)          
   end
 % do caculate file
  Xl(io)=xl ; Xc=xc;%calculated  in K kiloometer
  W=2*pi*F; C=(1/(Xc*W))*10e-3;
  L(io)=Xl(io)/W; 
  B(io)=(1/(Xc))*(10^-6); 
  Zi(io)=(sqrt(xl*xc))*1000;%(ohm)
%for QL=0.7:0.02:1
  A=acos(QL); Q=P*tan(A);
  Ir=P*1000/(sqrt(3)*U*QL);
  P=1.73*U*IN/1000;
 % if L1==0
        Ud=((((Rac*P)+(Xl(io)*Q))/(U^2)))*100; %voltage drop
        %  elseif L1==1
       %idm=j/Xc;
       %Z=Rac+(j*Xl);Z_idm=Z*idm;
       %Z_Ir=Z*Ir;
       %UR=(U-(Z_Ir))/(Z_idm);
       %du=U-UR;
       %mag_du=abs(du);mag_UR=abs(UR)
      %Ud=((mag_du)/(mag_UR))*100;%voltage drop with pi model
      %end
  Pn(io)=(U^2)/Zi(io);%power natural line with Zi or SIL
  Pl=(1000*Rac/(Nc*ns))*(P/(U*QL));
  V(io)=1/(sqrt(L(io)*C));%wave speed
  SILc=C*V*U^2;
  SILl(io)=(U^2)./(L(io)*V(io)); 
  Y(io)=V(io)/F;
  SILyc=Y*F*C*U^2;
  SILyl(io)=U^2/(Y(io)*F*L(io));%with y,l,c
  P_Pn(io)=P/Pn(io);
  U1=U-((Ud/100)*U);
  U_U1=U/U1;
  
  %P/Pn
 %j=1;
 %U1=U-((Ud/100)*U);
 %PO=(1/Y)*((sqrt((tan(A))^2+2*((U/U1)-1-((ro*j*K*QL)/U1)+(Y^2))))-tan(A));
  %p1=['U2=' num2str(U1) 'KV' '      P/Pn=' num2str(PO) ];
  % carector section file
%    sw=['GMD=' num2str(GMD) ' cm' '  Xl=' num2str(Xl) ' ohm/km' '  B=' num2str(B) ' umho/km' '  Zi=' num2str(Zi) ' ohm' '  SIL=' num2str(Pn) ' MVA'  ];
%   disp(e2)
%   disp(sw)    
end

%  GMD=50:50:300;
    if  ns==1
      xl= 0.1447*log10(GMD/GMR(1));%calculated per kiloometer(ohm/k)
     xc=0.1318*log10(GMD/GMR(1)); %calculated per kiloometer(Mohm/k)
    end  
   if Nc==2
      q=sqrt(GMD^2+h^2);
      GMRa=sqrt(GMR(ns)*q);%GMRa=GMRc
      GMRb=sqrt(GMR(ns)*h1);
      GMR2b=(GMRa^2*GMRb)^(1/3);
      s=h1-h;f=sqrt(GMD^2-(s/2)^2);f1=sqrt((h+(s/2))^2+f^2);
      GMDab=sqrt(GMD*f1);%GMDab=GMDbc
      GMDca=sqrt(GMD*h);
      GMD1=(GMDab^2*GMDca)^(1/3);
      xl= 0.1447*log10(GMD1/GMR2b);%calculated per kiloometer(ohm/k)
      xc=0.1318*log10(GMD1/GMR2b); %calculated per kiloometer(Mohm/k)          
   end
GMD=50:50:300;
   fd=figure('Position',[200 500 570 200]);
   dat=[GMD',Xl',B',Zi',Pn'];
   colNames={' GMD(cm)','XL(ohm/km)','B(umho/km)','Zi(ohm)','SIL or Pn(MVA)'};

     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,...
    'ColumnWidth',{100},'Position',[20 20 542 150]);
