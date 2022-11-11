function varargout = ICTLD(varargin)
% ICTLD MATLAB code for ICTLD.fig
%      ICTLD, by itself, creates a new ICTLD or raises the existing
%      singleton*.
%
%      H = ICTLD returns the handle to a new ICTLD or the handle to
%      the existing singleton*.
%
%      ICTLD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ICTLD.M with the given input arguments.
%
%      ICTLD('Property','Value',...) creates a new ICTLD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ICTLD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ICTLD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ICTLD

% Last Modified by GUIDE v2.5 22-Jun-2015 01:13:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ICTLD_OpeningFcn, ...
                   'gui_OutputFcn',  @ICTLD_OutputFcn, ...
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


% --- Executes just before ICTLD is made visible.
function ICTLD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ICTLD (see VARARGIN)

% Choose default command line output for ICTLD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ICTLD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ICTLD_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in qww.
function qww_Callback(hObject, eventdata, handles)
% hObject    handle to qww (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qwe=(get(handles.qww,'value'));
% if qwe==1
%      GUI1_handle=GUI1; %opens the subgui
%    GUI1_data_handle=guidata(GUI1_handle); %points to the handles6 of the subgui
%     GUI1_data_handle.kp4_gui_handle=hObject; %hObject=handle to main gui
%     guidata(GUI1_handle,GUI1_data_handle); %update subgui's handles6
% elseif qwe==2
%      GUI2_handle= GUI2; %opens the subgui
%      GUI2_data_handle=guidata( GUI2_handle); %points to the handles6 of the subgui
%     GUI2_data_handle.kp4_gui_handle=hObject; %hObject=handle to main gui
%     guidata(GUI2_handle, GUI2_data_handle); %update subgui's handles6
%     elseif qwe==3
%      GUI3_handle= GUI3; %opens the subgui
%      GUI3_data_handle=guidata( GUI3_handle); %points to the handles6 of the subgui
%     GUI3_data_handle.kp4_gui_handle=hObject; %hObject=handle to main gui
%     guidata(GUI3_handle, GUI3_data_handle); %update subgui's handles6
% end
% Hints: contents = cellstr(get(hObject,'String')) returns qww contents as cell array
%        contents{get(hObject,'Value')} returns selected item from qww


% --- Executes during object creation, after setting all properties.
function qww_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qww (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in U_mmm.
function U_mmm_Callback(hObject, eventdata, handles)
% hObject    handle to U_mmm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
U_m=(get(handles.U_mmm,'value'));

% Hints: contents = cellstr(get(hObject,'String')) returns U_mmm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from U_mmm


% --- Executes during object creation, after setting all properties.
function U_mmm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to U_mmm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Hh_Callback(hObject, eventdata, handles)
% hObject    handle to Hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
H=str2double(get(handles.Hh,'string'));
% Hints: get(hObject,'String') returns contents of Hh as text
%        str2double(get(hObject,'String')) returns contents of Hh as a double


% --- Executes during object creation, after setting all properties.
function Hh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pullotion.
function pullotion_Callback(hObject, eventdata, handles)
% hObject    handle to pullotion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pullotion_rate=(get(handles.pullotion,'value'));
% Hints: contents = cellstr(get(hObject,'String')) returns pullotion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pullotion


% --- Executes during object creation, after setting all properties.
function pullotion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pullotion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fdfdd1.
function fdfdd1_Callback(hObject, eventdata, handles)
% hObject    handle to fdfdd1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fdfd=get(handles.fdfdd1,'value');
if fdfd==1
   fdd1_handle=fdd1; %opens the subgui
fdd1_data_handle=guidata(fdd1_handle); %points to the handles of the subgui

fdd1_data_handle.variable='passed to fdd1';
fdd1_data_handle.kp4_gui_handle=hObject; %hObject=handle to main gui

guidata(fdd1_handle, fdd1_data_handle); %update subgui's handles
elseif fdfd==2
    fdd2_handle=fdd2; %opens the subgui
fdd2_data_handle=guidata(fdd2_handle); %points to the handles of the subgui
fdd2_data_handle.variable='passed to fdd2';
fdd2_data_handle.kp4_gui_handle=hObject; %hObject=handle to main gui
guidata(fdd2_handle, fdd2_data_handle); %update subgui's handles
end
% Hints: contents = cellstr(get(hObject,'String')) returns fdfdd1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from fdfdd1


% --- Executes during object creation, after setting all properties.
function fdfdd1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fdfdd1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MVv.
function MVv_Callback(hObject, eventdata, handles)
% hObject    handle to MVv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MV=str2double(get(handles.MVv,'string'));
% Hints: contents = cellstr(get(hObject,'String')) returns MVv contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MVv


% --- Executes during object creation, after setting all properties.
function MVv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MVv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nn_Callback(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=str2double(get(handles.nn,'string'));
% Hints: get(hObject,'String') returns contents of nn as text
%        str2double(get(hObject,'String')) returns contents of nn as a double


% --- Executes during object creation, after setting all properties.
function nn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sigma_CFO00.
function sigma_CFO00_Callback(hObject, eventdata, handles)
% hObject    handle to sigma_CFO00 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sigma_CFO0=(get(handles.sigma_CFO00,'value'));
% Hints: contents = cellstr(get(hObject,'String')) returns sigma_CFO00 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sigma_CFO00


% --- Executes during object creation, after setting all properties.
function sigma_CFO00_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_CFO00 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ac_erorr.
function ac_erorr_Callback(hObject, eventdata, handles)
% hObject    handle to ac_erorr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ac_eror=(get(handles.ac_erorr,'value'));

% Hints: contents = cellstr(get(hObject,'String')) returns ac_erorr contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ac_erorr


% --- Executes during object creation, after setting all properties.
function ac_erorr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ac_erorr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in K_ggg.
function K_ggg_Callback(hObject, eventdata, handles)
% hObject    handle to K_ggg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
K_gg=(get(handles.K_ggg,'value'));
% Hints: contents = cellstr(get(hObject,'String')) returns K_ggg contents as cell array
%        contents{get(hObject,'Value')} returns selected item from K_ggg


% --- Executes during object creation, after setting all properties.
function K_ggg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K_ggg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BFRR_Callback(hObject, eventdata, handles)
% hObject    handle to BFRR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
BFR=str2double(get(handles.BFRR,'string'));
% Hints: get(hObject,'String') returns contents of BFRR as text
%        str2double(get(hObject,'String')) returns contents of BFRR as a double


% --- Executes during object creation, after setting all properties.
function BFRR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BFRR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_gg_Callback(hObject, eventdata, handles)
% hObject    handle to h_gg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h_g=str2double(get(handles.h_gg,'string'));

% Hints: get(hObject,'String') returns contents of h_gg as text
%        str2double(get(hObject,'String')) returns contents of h_gg as a double


% --- Executes during object creation, after setting all properties.
function h_gg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h_gg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function f_gg_Callback(hObject, eventdata, handles)
% hObject    handle to f_gg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f_g=str2double(get(handles.f_gg,'string'));
% Hints: get(hObject,'String') returns contents of f_gg as text
%        str2double(get(hObject,'String')) returns contents of f_gg as a double

% --- Executes during object creation, after setting all properties.
function f_gg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_gg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function bb_Callback(hObject, eventdata, handles)
% hObject    handle to bb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=str2double(get(handles.bb,'string'));
% Hints: get(hObject,'String') returns contents of bb as text
%        str2double(get(hObject,'String')) returns contents of bb as a double


% --- Executes during object creation, after setting all properties.
function bb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z_tt_Callback(hObject, eventdata, handles)
% hObject    handle to Z_tt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Z_t=str2double(get(handles.Z_tt,'string'));
% Hints: get(hObject,'String') returns contents of Z_tt as text
%        str2double(get(hObject,'String')) returns contents of Z_tt as a double


% --- Executes during object creation, after setting all properties.
function Z_tt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z_tt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MV=str2double(get(handles.MVv,'string'));
n=str2double(get(handles.nn,'string'));
sigma_CFO0=(get(handles.sigma_CFO00,'value'));
b=str2double(get(handles.bb,'string'));
BFR=str2double(get(handles.BFRR,'string'));
C=str2double(get(handles.Cc,'string'));
f_g=str2double(get(handles.f_gg,'string'));
h_g=str2double(get(handles.h_gg,'string'));
K_pf=str2double(get(handles.K_pff,'string'));
K_wf=str2double(get(handles.K_wff,'string'));
Z_t=str2double(get(handles.Z_tt,'string'));
K_gg=(get(handles.K_ggg,'value'));
TT=(get(handles.TTT,'value'));
fdfd=get(handles.fdfdd1,'value');
% tt30=['maximum phase-phase voltage'];
%   tt31=['[1]for 63(66)kv,enter 1     [2]for 132kv,enter 2     [3]for 230 kv,enter 3'];
%   tt32=['[4]for 400kv,enter 4         [5]for 765kv  enter 5'];
%   disp(tt30);
%   disp(s2);
%   disp(tt31);
%   disp(tt32);
%   disp(s2);
%  U_m=input('maximum phase voltage:');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%      insulation information          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
insuinfo=[70    70      80      100     120     120     160     160     210     300     80      100     120     160     210    70      80      100     120     120  123   160     160     210     300     80      100     120     160     210     210     80     100     120     160     210;  %KN
175 210 255 255 280 255 255 280 255 280 280 330 280 330 300 330 330 400 380 380 255 280 255 280 255 280 280 330 300 330 330 255 255 255 330 330;               %GHOTR
110 110 127 146 146 127 146 146 146 146 146 146 170 170 170 170 195 195 205 240 146 146 146 146 146 146 170 170 178 178 195 146 146 146 170 170;                  % SPACE UNIT
190 295 295 295 440 295 295 440 295 440 315 440 340 525 370 525 390 590 525 600 295 440 295 440 295 440 340 525 370 525 390 440 440 440 525 525;                 %CREEPING
5.2     4.4     5.4     5.2     5.4     5.2     6.6     8.5     8.5     13      8.3     8.3     8.3     11.5 12     4.4     5.4     5.2     5.4     5.2     6.6     8.5     8.5     13      8.3     8.3     8.3     11.5     12     12     13      8.3     8.3     8.3     11.5     12];                                     %WEIGHT   
% ggg1=['kind of insulator'];
% ggg2=['[1]U 40 B/40*110*190(mm)                                                         enter 1'];
% ggg3=['[2]U 40 BP /40*110*295                                                               enter 2'];
% ggg4=['[3]U 70 BS/70*127*295                                                                enter 3'];
% ggg5=['[4]U 70 BL/70*146*295                                                                enter 4'];
% ggg6=['[5]U 70 BLP/70*146*440                                                              enter 5'];
% ggg7=['[6]U 100 BS/100*127*295                                                            enter 6'];
% ggg8=['[7]U 100 BL/100*146*295                                                               enter 7'];
% ggg9=['[8]U 100 BLP/100*146*440                                                              enter 8'];
% ggg10=['[9]U 120 B/120*146*295                                                                enter 9'];
% ggg11=['[10]U 120 BP/120*146*440                                                            enter 10'];
% ggg12=['[11]U 160 BS/160*146*315                                                           enter 11'];
% ggg13=['[12]U 160 BSP/160*146*440                                                         enter 12'];
% ggg14=['[13]U 160 BL/160*170*340                                                            enter 13'];
% ggg15=['[14]U 160 BLP/160*170*525                                                          enter 14'];
% ggg16=['[15]U 210 B/210*170*370                                                              enter 15'];
% ggg17=['[16]U 210 BP/210*170*525                                                            enter 16'];
% ggg18=['[17]U 300 B/300*195*390                                                              enter 17'];
% ggg19=['[18]U 300 BP/300*195*590                                                            enter 18'];
% ggg20=['[19]U 400 B/400*205*525                                                              enter 19'];
% ggg21=['[20]U 530 B/530*240*600                                                              enter 20'];
% ggg22=['[21]U 70 C /70*146*295                                                               enter 21'];
% ggg23=['[22]U 70 CP/70*146*440                                                              enter 22'];
% ggg24=['[23]U 100 C/100*146*295                                                              enter 23'];
% ggg25=['[24]U 100 CP/100*146*440                                                            enter 24'];
% ggg26=['[25]U 120 C /120*146*295                                                             enter 25'];
% ggg27=['[26]U 120 CP/120*146*440                                                            enter 26'];
% ggg28=['[27]U 60 C/160*170*340                                                                enter 27'];
% ggg29=['[28]U 160 CP/160*170*525                                                            enter 28'];
% ggg30=['[29]U 210 C/210*178*370                                                              enter 29'];
%  ggg31=['[30]U 210 CP/210*178*525                                                           enter 30']; 
%   ggg32=['Fog Type'];
% ggg33=['[31]FOG,Ball SoCket,Disk Type,80 KN,8.3 Kg/minimum creepage distance:390(mm)         enter 31'];
% ggg34=['[32]FOG,Ball SoCket,Disk Type,100 KN,8.3 Kg/minimum creepage distance:440(mm)       enter 32'];
% ggg35=['[33]FOG,Ball SoCket,Disk Type,120 KN,8.3 Kg/minimum creepage distance:440(mm)       enter 33'];
% ggg36=['[34]FOG,Ball SoCket,Disk Type,160 KN,11.5 Kg/minimum creepage distance:525(mm)     enter 34'];
% ggg37=['[35]FOG,Ball SoCket,Disk Type,210 KN,12 Kg/minimum creepage distance:525(mm)        enter 35'];
%  
%  
 

%%%%%            insulation cordination            %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



    
    
    
    
                                        %insulation cordination for    constant voltage and temporary over voltage
 U_m=(get(handles.U_mmm,'value'));

H=str2double(get(handles.Hh,'string'));
% tt11=['pullotion_rate'];
% tt12=['[1] if  verylight,enter 1     [2]if light,enter 2                [3]if  mediume,enter 3'];
% tt13=['[4] if heavy,enter 4           [5]if veryheavy ,enter 5:'];
g12=(get(handles.g122,'value'));

if  g12==1
    m=1;
elseif  g12==2
    m=.5;
else
    m=.8;
end
% disp(tt11);
% disp(s2);
% disp(tt12);
% disp(tt13);
% disp(s2);
pullotion_rate=(get(handles.pullotion,'value'));
if  pullotion_rate==1;
RUSCD=.022;
elseif pullotion_rate==2;
RUSCD=.0278;
elseif pullotion_rate==3;
RUSCD=.0347;
elseif pullotion_rate==4;
RUSCD=.0433;
elseif pullotion_rate==5;
RUSCD=.0537;
end
K_a=exp((m*H)/8150);
USCD=RUSCD*K_a*1000;

 if U_m==1;U_m2=63;end
 if U_m==2;U_m2=132;end
 if U_m==3;U_m2=230;end
 if U_m==4;U_m2=400;end
 if U_m==5;U_m2=765;end
l_e_crep=U_m2*USCD;
     

                          %insulation cordination for    switch over voltage
MV=MV(1);
% MV=input('Over voltage per unit:');
 if U_m==1;U_mm=63;end
 if U_m==2;U_mm=132;end
 if U_m==3;U_mm=230;end
 if U_m==4;U_mm=400;end
 if U_m==5;U_mm=765;end
    E2=MV*U_mm;
     E2p=MV;                              %switch over voltage
%   n=input('enter The average number of towers along the transmission line:');
% tt17=['magnitude sigma_f/cfo'];
% tt18=['[1]if 0.02,enter 1   [2]if 0.05,enter 2    [3]if  0.07,enter 3'];
% disp(tt17)
% disp(s2)
% disp(tt18)
% disp(s2)
% sigma_CFO0=input('magnitude sigma_f/cfo:');
if sigma_CFO0==1;sigma_CFO=.02;end
if sigma_CFO0==2;sigma_CFO=.05;end
if sigma_CFO0==3;sigma_CFO=.07;end
if  sigma_CFO==.02;
    sigma_CFOm=1;
elseif sigma_CFO==.05;
    sigma_CFOm=2;
else sigma_CFOm=3;
end
gama=1-.15*((E2p)-1);  %nahveye tozie profile evervoltage dar emtedade line
if (1-(.04*sigma_CFO))>gama
    n_e=(0.4*sigma_CFO*n)/(1-gama);
elseif (1-(.04*sigma_CFO))<gama
    n_e=n;
end
if n_e<25;nem=1;end
if n_e>2.5 && n_e<7.5;nem=2;end
if n_e>7.5 && n_e<15;nem=3;end
if n_e>15 && n_e<35;nem=4;end
if n_e>35 && n_e<75;nem=5;end
if n_e>75 && n_e<150;nem=6;end
if n_e>150 && n_e<350;nem=7;end
if n_e>350 && n_e<750;nem=8;end
if n_e>750 && n_e<1500;nem=9;end
if n_e>1500;nem=10;end
KF=[0.94        0.85    0.79;
0.9617  0.9009  0.8578;
0.9691  0.9189  0.8826;
0.9756  0.9353  0.9057;
0.9833  0.9553  0.9341;
0.9887  0.9693  0.9545;
0.9937  0.9827  0.9742;
0.9998  0.9996  0.9993;
1.0042  1.0118  1.0178;
1.0084  1.0236  1.036];
K_f=KF(nem,sigma_CFOm);
% tt20=['accecepted eror in 100 switching'];
% tt21=['[1] if 10 times ,enter 1        [2] if  5 times,enter 2               [3] if  1 times,enter 3'];
% tt22=['[4] if  0.5 times,enter 4       [5] if  0.2 times,enter 5            [6]  if  0.1 times,enter 6'];
% disp(tt20)
% disp(s2)
% disp(tt21)
% disp(tt22)
% disp(s2)
ac_eror=(get(handles.ac_erorr,'value'));

sigma0=.17*(E2p-1);
sigma0_E2=sigma0/E2p;
if sigma0_E2<.06;sigma0m_E2=1;end
if sigma0_E2>.06 && sigma0_E2 <=.085 ;sigma0m_E2=2;end
if sigma0_E2>.085 && sigma0_E2<.125 ;sigma0m_E2=3;end
if sigma0_E2>.125;sigma0m_E2=4;end
KG=[0.9394      0.9151  0.8787  0.8181;
0.9614  0.9459  0.9228  0.8841;
1       1       1       1;
1.0136  1.0191  1.0273  1.0409;
1.0299  1.0419  1.0598  1.0897;
1.0412  1.0577  1.0824  1.1236];
K_G=KG(ac_eror,sigma0m_E2);
V3=E2*K_f*K_G;  %voltage tahamole amari
CFO_A=V3/(1-3*sigma_CFO);
delta=exp((-H)/8150);
% tt24=['kind of  tower'];
%  tt25=['[1]if Lattice enter `1    [2] if Telescopic enter 2'];
%  disp(tt24);
%  disp(s2);
%  disp(tt25)
%  disp(s2);
%  K_gg=input('kind of  tower:');
 if  K_gg==1;K_g=1.2;end
 if  K_gg==2;K_g=1.25;end
S_s=ones(1,10000);
S_s(1,1)=.5;%minimum air distance fo get good SSFOR
CFO_S=ones(1,10000);
G0=ones(1,10000);
M=ones(1,10000);
M(1,1)=.5;
S_s(1,1)=8/(((.96*3400*K_g*(delta^(M(1,1))))/CFO_A)-1); 
for i=1:10000
  CFO_S(1,i)=(.96*K_g*(3400))/(1+(8/S_s(1,i)));
 G0(1,i)=CFO_S(1,i)/(500*S_s(1,i));
 M(1,i+1)=1.25*G0(1,i)*(G0(1,i)-.2);
 S_s(1,i+1)=8/(((.96*3400*K_g*(delta^(M(1,i+1))))/CFO_A)-1);
 if  abs(M(1,i+1)-M(1,i))<0.00000001  ;
      S_S=S_s(1,i+1);
      break
 end
end

S_S;
L2_siwtch=1.1*S_S;         % length of insulator chain
 
 


 %insulation cordination for    light over voltage

% BFR=input('number of desired outage in per 100km line:');
% tt26=['about thunder'];
% tt27=['[1] have number of days, enter 1            [2] have hours ,enter 2'];
%  disp(tt26);
%  disp(s2);
%  disp(tt27);
%  disp(s2);
%  TT=input('enter number of about thunder:');
 if TT==1;
     load T_d
%      T_d=input('number lighteneing days in years:');
     N_g=.04*(T_d^(1.25));
 elseif TT==2
     load T_h
%      T_h=input(' thunder hours in years:');
     N_g=.04*(T_h^(1.1));
 end
%   h_g=input('Line guard tower height(m):');
%   f_g=input('Line gard flash(m):');
  h=h_g-((2*f_g)/3);
% b=input('distance betwin tow line wire(m):');
 N_l=N_g*(28*(h^(.6))+b)/10;    %average number light barkhordi  be ezaye har 100 km khat
 P_Ic=BFR/N_l;
 I_c=31*(((1-P_Ic)/P_Ic)^(1/26));    %bohrani current(KA)
%  K_pf=input('Voltage correction factor of power line frequency (0.83)');
%   Z_t=input('Equivalent surge impedance of tower(10-30)');
 if U_m==1;U_mm2=72.5;end
 if U_m==2;U_mm2=145;end
 if U_m==3;U_mm2=245;end
 if U_m==4;U_mm2=420;end
 if U_m==5;U_mm2=800;end
%  load C
%  load K_wf
%   C=input('coopling coefition betwin line wire and conductor phase (our offer: 0.3)');
%   K_wf=input('The correction factor for wave figure(our offerr:1.31):');
CFO_l=(1/K_wf)*(((1-C)*Z_t*I_c)+((2/3)^(1/2))*K_pf*U_mm2) ; %critical jeraghe voltage of light over voltage
   %H=input('Height above sea level(m):');
  delta=exp((-H)/8150);
 S_l_light=CFO_l/(605*delta);  %minimum air distance for get good BFR
  Lm_light=1.05*S_l_light ;        % minimum length of insulator chain for intermediate phase
 LO_light=S_l_light ;       % minimum length of insulator chain for out phase


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if  fdfd==2
%      disp(s2)
      load  g12%
    for g13=1:35
        if g12==g13
            kindd=insuinfo(1,g13);
        D_a=insuinfo(2,g13);             % average diameter insulator(mm)
L_i=insuinfo(3,g13)/10;
      l_e_i=insuinfo(4,g13);                      %creep distance insulators(mm)
        weight=insuinfo(5,g13);
        end
    end
    if  g12<31
        m=.5;
    else
        m=.8;
    end
 elseif fdfd==1
     load kindd
     load D_a
     load L_i
     load l_e_i
     load weight
     load g12
%         kindd=input(' name of insulator : ','s');
% D_a=input('average diameter insulator(mm)');
% L_i=input('space unit');
% l_e_i=input('creepage distance insulators(mm)');
% weight=input(' weight of insulator');
%  g12=input('is insulator ,antifog: [1]yes,enter 1      [2]no,enter 2') ;
if  g12==2
    m=.5;
else
    m=.8;
end
end
% disp(s2)



matt(1,1)=l_e_crep/1000;
matt(1,2)=S_S;
matt(1,3)=L2_siwtch;
matt(1,4)=S_l_light;
matt(1,5)=Lm_light;
matt(1,6)= LO_light;


matt;


n1=l_e_crep/l_e_i;    %number of insulator
L1=(n1*L_i)/100;       % length of insulator chain
%aaa2=['%number of insulator/creepage-pullotion=' num2str(n1)   '           '   'length of insulator chain/creepage-pullotion=' num2str(L1)  ];
%%%%%%%%%
n21=(100*S_S)/L_i; 
n2=(100*L2_siwtch)/L_i; %%number of insulator
%aaa64=['%Minimum permissible air gap for better SSFOR (m)/switching=' num2str(S_S) ];
%aaa6=['%number of insulator/switching=' num2str(n2)   '           '   'length of insulator chain(m)/switching=' num2str(L2_siwtch)  ];
%%%%%%%%%%%
nm1=(100*S_l_light)/L_i ; 
nm=(100*Lm_light)/L_i ; %%number of insulator
 nO=(100*LO_light)/L_i;              %%number of insulator
%aaa8=['%number of insulator/lightening=' num2str(nm) ];
%aaa9=['minimum length of insulator chain for intermediate phase/lightening=' num2str(Lm_light)  ];
%aaa10=['%number of insulator for out phase/lightening=' num2str(nO) ];
%aaa11=['minimum length of insulator chain for out phase/lightening=' num2str(LO_light) ];
matt(2,1)=n1;
matt(2,2)=n21;
matt(2,3)=n2;
matt(2,4)=nm1;
matt(2,5)=nm;
matt(2,6)=nO;

matt(3,1)=L1;
matt(3,2)=S_S;
matt(3,3)=L2_siwtch;
matt(3,4)=S_l_light;
matt(3,5)=Lm_light;
matt(3,6)=LO_light;
% format short
colNames={'LIGHTENING|(SIDE PHASE)','LITENING|(MIDDEL PHASE-FACTOR:0.5%','LIGHTENING','SWITCHING*(1,1)','SWITCHING','pollution condition'};
F31=[matt(:,end:-1:1)];

            fd=figure('Position',[200 500 1120 200]);
            dat=[F31];
           

                rowNames={'CHAIN DISTANCE(A:CREEPAGE DISTANCE)','INSULATOR NUMBER','CHAIN DISTANCE'};
         
            
            t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
                'ColumnWidth',{'auto'},'Position',[20 20 1080 150]);

            figure
   z122=[1 2 3 4 5 6];
y122=matt(2,:);
bar(z122,y122);
ylabel('INSULATOR NUMBER');
xlabel('pollution  SWITCHING  SWITCHING *1.1 LIGHTENEING LIGHTENEING_M LIGHTENEING_L');
         

% --- Executes on selection change in TTT.
function TTT_Callback(hObject, eventdata, handles)
% hObject    handle to TTT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
TT=(get(handles.TTT,'value'));
if TT==1
     TT1_handle=TT1; %opens the subgui
   TT1_data_handle=guidata(TT1_handle); %points to the handles6 of the subgui
    TT1_data_handle.kp4_gui_handle=hObject; %hObject=handle to main gui
    guidata(TT1_handle, TT1_data_handle); %update subgui's handles6
elseif TT==2
     TT2_handle= TT2; %opens the subgui
     TT2_data_handle=guidata( TT2_handle); %points to the handles6 of the subgui
    TT2_data_handle.kp4_gui_handle=hObject; %hObject=handle to main gui
    guidata( TT2_handle,  TT2_data_handle); %update subgui's handles6
end
% Hints: contents = cellstr(get(hObject,'String')) returns TTT contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TTT


% --- Executes during object creation, after setting all properties.
function TTT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TTT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function K_pff_Callback(hObject, eventdata, handles)
% hObject    handle to K_pff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
K_pf=str2double(get(handles.K_pff,'string'));
% Hints: get(hObject,'String') returns contents of K_pff as text
%        str2double(get(hObject,'String')) returns contents of K_pff as a double


% --- Executes during object creation, after setting all properties.
function K_pff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K_pff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Cc_Callback(hObject, eventdata, handles)
% hObject    handle to Cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
C=str2double(get(handles.Cc,'string'));
% Hints: get(hObject,'String') returns contents of Cc as text
%        str2double(get(hObject,'String')) returns contents of Cc as a double


% --- Executes during object creation, after setting all properties.
function Cc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function K_wff_Callback(hObject, eventdata, handles)
% hObject    handle to K_wff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
K_wf=str2double(get(handles.K_wff,'string'));
% Hints: get(hObject,'String') returns contents of K_wff as text
%        str2double(get(hObject,'String')) returns contents of K_wff as a double


% --- Executes during object creation, after setting all properties.
function K_wff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K_wff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fdfdd3.
% function fdfdd3_Callback(hObject, eventdata, handles)
% % hObject    handle to fdfdd3 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: contents = cellstr(get(hObject,'String')) returns fdfdd3 contents as cell array
% %        contents{get(hObject,'Value')} returns selected item from fdfdd3
% 
% 
% % --- Executes during object creation, after setting all properties.
% function fdfdd3_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to fdfdd3 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: popupmenu controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end


% --- Executes on selection change in popupmenu15.
function popupmenu15_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu15


% --- Executes during object creation, after setting all properties.
function popupmenu15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in g122.
function g122_Callback(hObject, eventdata, handles)
% hObject    handle to g122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g12=(get(handles.g122,'value'));
% Hints: contents = cellstr(get(hObject,'String')) returns g122 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from g122


% --- Executes during object creation, after setting all properties.
function g122_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
