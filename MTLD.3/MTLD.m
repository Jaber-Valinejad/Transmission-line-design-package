function varargout = MTLD(varargin)
% MTLD MATLAB code for MTLD.fig
%      MTLD, by itself, creates a new MTLD or raises the existing
%      singleton*.
%
%      H = MTLD returns the handle to a new MTLD or the handle to
%      the existing singleton*.
%
%      MTLD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MTLD.M with the given input arguments.
%
%      MTLD('Property','Value',...) creates a new MTLD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MTLD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MTLD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MTLD

% Last Modified by GUIDE v2.5 06-May-2015 17:18:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MTLD_OpeningFcn, ...
                   'gui_OutputFcn',  @MTLD_OutputFcn, ...
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


% --- Executes just before MTLD is made visible.
function MTLD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MTLD (see VARARGIN)

% Choose default command line output for MTLD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MTLD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MTLD_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fdffd.
function fdffd_Callback(hObject, eventdata, handles)
% hObject    handle to fdffd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fdfd=get(handles.fdffd,'value');
if fdfd==1
    GUII1_handle=GUII1; %opens the subgui
GUII1_data_handle=guidata(GUII1_handle); %points to the handles of the subgui

GUII1_data_handle.variable='passed to GUII1';
GUII1_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui

guidata(GUII1_handle, GUII1_data_handle); %update subgui's handles
elseif fdfd==2
    GUII2_handle=GUII2; %opens the subgui
GUII2_data_handle=guidata(GUII2_handle); %points to the handles of the subgui
GUII2_data_handle.variable='passed to GUII2';
GUII2_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui
guidata(GUII2_handle, GUII2_data_handle); %update subgui's handles
end
% Hints: contents = cellstr(get(hObject,'String')) returns fdffd contents as cell array
%        contents{get(hObject,'Value')} returns selected item from fdffd


% --- Executes during object creation, after setting all properties.
function fdffd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fdffd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vv_Callback(hObject, eventdata, handles)
% hObject    handle to Vv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
V=str2double(get(handles.Vv,'string'));
% Hints: get(hObject,'String') returns contents of Vv as text
%        str2double(get(hObject,'String')) returns contents of Vv as a double


% --- Executes during object creation, after setting all properties.
function Vv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in yhnn.
function yhnn_Callback(hObject, eventdata, handles)
% hObject    handle to yhnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
yhn=get(handles.yhnn,'value');

if yhn==1
    % main gui function:
    GUIyhn1_handle=GUIyhn1; %opens the subgui
    GUIyhn1_data_handle=guidata(GUIyhn1_handle); %points to the handles of the subgui
    GUIyhn1_data_handle.variable='passed to GUIyhn1';
    GUIyhn1_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui
    guidata(GUIyhn1_handle, GUIyhn1_data_handle); %update subgui's handles
elseif yhn==2
    tct=0;
end
% Hints: contents = cellstr(get(hObject,'String')) returns yhnn contents as cell array
%        contents{get(hObject,'Value')} returns selected item from yhnn


% --- Executes during object creation, after setting all properties.
function yhnn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yhnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sctff.
function sctff_Callback(hObject, eventdata, handles)
% hObject    handle to sctff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sctf=get(handles.sctff,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns sctff contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sctff


% --- Executes during object creation, after setting all properties.
function sctff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sctff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sctt.
function sctt_Callback(hObject, eventdata, handles)
% hObject    handle to sctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sct=get(handles.sctt,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns sctt contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sctt


% --- Executes during object creation, after setting all properties.
function sctt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sectionn_Callback(hObject, eventdata, handles)
% hObject    handle to sectionn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
section=str2double(get(handles.sectionn,'string'));
% Hints: get(hObject,'String') returns contents of sectionn as text
%        str2double(get(hObject,'String')) returns contents of sectionn as a double


% --- Executes during object creation, after setting all properties.
function sectionn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sectionn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function noftt_Callback(hObject, eventdata, handles)
% hObject    handle to noftt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
noft=str2double(get(handles.noftt,'string'));
% Hints: get(hObject,'String') returns contents of noftt as text
%        str2double(get(hObject,'String')) returns contents of noftt as a double


% --- Executes during object creation, after setting all properties.
function noftt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noftt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ccc_Callback(hObject, eventdata, handles)
% hObject    handle to ccc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% cc=eval(get(handles.ccc,'string'));
% cc=cc';

cc=str2num(get(handles.ccc,'String'));
nRowsc = size(cc,1);
ncolm=size(cc,2);
nSpan=ncolm-1;

% Hints: get(hObject,'String') returns contents of ccc as text
%        str2double(get(hObject,'String')) returns contents of ccc as a double


% --- Executes during object creation, after setting all properties.
function ccc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ccc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt833.
function tt833_Callback(hObject, eventdata, handles)
% hObject    handle to tt833 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tt83=get(handles.tt833,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tt833 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt833


% --- Executes during object creation, after setting all properties.
function tt833_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt833 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TSS_Callback(hObject, eventdata, handles)
% hObject    handle to TSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T_S=str2double(get(handles.TSS,'string'));
% Hints: get(hObject,'String') returns contents of TSS as text
%        str2double(get(hObject,'String')) returns contents of TSS as a double


% --- Executes during object creation, after setting all properties.
function TSS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ISS_Callback(hObject, eventdata, handles)
% hObject    handle to ISS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i_S=str2double(get(handles.ISS,'string'));
% Hints: get(hObject,'String') returns contents of ISS as text
%        str2double(get(hObject,'String')) returns contents of ISS as a double


% --- Executes during object creation, after setting all properties.
function ISS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ISS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PWSS_Callback(hObject, eventdata, handles)
% hObject    handle to PWSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
P_w_Ss=str2double(get(handles.PWSS,'string'));
% Hints: get(hObject,'String') returns contents of PWSS as text
%        str2double(get(hObject,'String')) returns contents of PWSS as a double


% --- Executes during object creation, after setting all properties.
function PWSS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PWSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in vhh.
function vhh_Callback(hObject, eventdata, handles)
% hObject    handle to vhh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vh=get(handles.vhh,'value');
if vh==1
    GUIF_handle=GUIF; %opens the subgui
    GUIF_data_handle=guidata(GUIF_handle); %points to the handles of the subgui
     GUIF_data_handle.variable='passed to GUIF';
    GUIF_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui
    guidata(GUIF_handle, GUIF_data_handle); %update subgui's handles
elseif vh==2
    GUIa_handle=GUIa; %opens the subgui
    GUIa_data_handle=guidata(GUIa_handle); %points to the handles of the subgui
    GUIa_data_handle.variable='passed to GUIa';
    GUIa_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui
    guidata(GUIa_handle, GUIa_data_handle); %update subgui's handles
elseif vh==3
    GUISF_handle=GUISF; %opens the subgui
    GUISF_data_handle=guidata(GUISF_handle); %points to the handles of the subgui
    GUISF_data_handle.variable='passed to GUISF';
    GUISF_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui
    guidata(GUISF_handle, GUISF_data_handle); %update subgui's handles
end
% Hints: contents = cellstr(get(hObject,'String')) returns vhh contents as cell array
%        contents{get(hObject,'Value')} returns selected item from vhh


% --- Executes during object creation, after setting all properties.
function vhh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vhh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wgg_Callback(hObject, eventdata, handles)
% hObject    handle to wgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
w_g=str2double(get(handles.wgg,'string'));
% Hints: get(hObject,'String') returns contents of wgg as text
%        str2double(get(hObject,'String')) returns contents of wgg as a double


% --- Executes during object creation, after setting all properties.
function wgg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nmnnn_Callback(hObject, eventdata, handles)
% hObject    handle to nmnnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% nmnn=(get(handles.nmnnn,'string'));
%  nRowsn = size(nmnnn,1);
nmn=get(handles.nmnnn,'string');


% Hints: get(hObject,'String') returns contents of nmnnn as text
%        str2double(get(hObject,'String')) returns contents of nmnnn as a double


% --- Executes during object creation, after setting all properties.
function nmnnn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nmnnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% nmn=str2double(get(handles.nmnnn,'string'));

% nmn = strvcat(handles.nmnnn,'string');
% nmn(i,j) = uicontrol('style','edit','units','pixels',...
%     'position',[b a 50 50],'fontsize',20,'string','', ...
%     'Callback', 'B(A == gco) = str2double(get(gco, ''string''));');
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
%  nmna=str2num(get(handles.nmnnn,'string'));
% nmn=get(handles.nmnnn,'string');
nmn=cellstr(get(handles.nmnnn,'string'));
% kp2_gui_data_handle=handles;
fdfd=get(handles.fdffd,'value');
V=str2double(get(handles.Vv,'string'));
yhn=get(handles.yhnn,'value');
sctf=get(handles.sctff,'value');
sct=get(handles.sctt,'value');
section=str2double(get(handles.sectionn,'string'));
noft=str2double(get(handles.noftt,'string'));
% cc=eval(get(handles.ccc,'string'));
% cc=cc';
tt83=get(handles.tt833,'value');
T_S=str2double(get(handles.TSS,'string'));
i_S=str2double(get(handles.ISS,'string'));
P_w_Ss=str2double(get(handles.PWSS,'string'));
vh=get(handles.vhh,'value');
w_g=str2double(get(handles.wgg,'string'));

cc=str2num(get(handles.ccc,'String'));
nRowsc = size(cc,1);
ncolm=size(cc,2);
nSpan=ncolm-1;



%%
% GUIyhn1_handle=GUIyhn1; %opens the subgui
% GUIyhn1_data_handle=guidata(GUIyhn1_handle); %points to the handles of the subgui
% 
% %now, in the main gui writing
% GUIyhn1_data_handle.variable=2;
% %is the same as saying
% %handles.variable=5; in the subgui. It's very useful for passing data around.
% 
% GUIyhn1_data_handle.variable='passed to GUIyhn1'; %setting random variable in subgui to 'passed to subgui'
% GUIyhn1_data_handle.kp2_gui_handle=hObject; %hObject is the handle to the current gui, the main gui in this case.
% 
% guidata(GUIyhn1_handle, GUIyhn1_data_handle); %update subgui's handles
% 
% %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

if  fdfd==2
%     ct=get(handles.ctt,'value');
load ct
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
    
    load ct
    load A
    load UTS
    load d
%     ct=get(handles.TSS,'string');
%     
%     A=str2double(get(handles.AA,'string'));
%     UTS=str2double(get(handles.UTSS,'string'));
%     d=str2double(get(handles.dd,'string'));
%     
%     bvn=str2double(get(handles.bvnn,'string'));
    ALFA=(10^(-6))*bvn;
%     e=str2double(get(handles.ee,'string'));
%     tyu=str2double(get(handles.tyuu,'string'));
    W_c=tyu*(10^(-3));
    nn=[ct];
    
end
% V=input('line voltage(kv):');
% %S=input('SPAN(m):') ; %SPAN(M)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   zaribe piri
% 
% dsdss=['do you want to consider impact of fatigue factor'];
% dsddd=['[1]YES     [2]NO'];
% disp(dsdss);
% disp(dsddd);
% yhn=input(' :');

if yhn==1;
    
%     ss1=[' kind of wire for fatigue factor'];
%     disp(sss2);
%     ss2=['tedae reshte for Alominiom:              [1] 7           [2]19             [3]37           [4]61'];
%     ss4=['tedae reshte for Alominiom Aliages  [5]7            [6]19             [7]37           [8]61'];
%     ss3=[' tedae reshte for ACSR (Al-ST)           [9]7-19      [10]7-32        [11]7-30      [12]30-19    [13]1-6    [14]7-26'];
%     ss3s=['                                                         [15]7-24     [16]7-54       [17]19-54    [18]7-45      [19]7-42'];
%     ss5=['tedae reshte for  fulad                        [20]140       [21]70'];
%     disp(ss1);
%     
%     disp(sss2);
%     disp(ss2);
%     disp(ss4);
%     disp(ss3);
%     disp(ss3s);
%     disp(ss5);
%     disp(sss2);
    
%     tct=get(handles.tctt,'value');
%     disp(sss2);
    load tct
    if tct==1;TR_fatigue=35;end;if tct==2;TR_fatigue=35;end;if tct==3;TR_fatigue=35;end;if tct==4;TR_fatigue=35;end
    if tct==5;TR_fatigue=25;end;if tct==6;TR_fatigue=25;end;if tct==7;TR_fatigue=25;end;if tct==8;TR_fatigue=25;end
    
    
    if tct==9;TR_fatigue=13;end;if tct==10;TR_fatigue=13;end;if tct==11;TR_fatigue=15;end;if tct==12;TR_fatigue=16;end;if tct==13;TR_fatigue=15;end;if tct==14;TR_fatigue=17;end
    if tct==15;TR_fatigue=20;end;if tct==16;TR_fatigue=20;end;if tct==17;TR_fatigue=20;end;if tct==18;TR_fatigue=23;end;if tct==19;TR_fatigue=25;end
    
    if tct==21;TR_fatigue=35;end;if tct==20;TR_fatigue=35;end
elseif yhn==2
    tct=0;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Ke for phase distance


% ss118=[' kind of phase distanse'];
% disp(ss118)
% disp(sss2);
% sT118=[' [1]VERTICAL WIRE              [2]FOR Triangular WIRES WITH 2 WIRE IN ONE CORE     [3]HORIZINTAL WIRE'];
% disp(sT118)
% sctf=get(handles.sctff,'value');




% ss1=[' kind of wire for phase distance'];
% disp(sss2);
% 
% ss112=[' sathe maghtae for mes-boronz-fulad(mm^2):'];
% 
% ss2=['     [1]16      [2]25        [3]35      [4]50     [5]70        [6]95         [7]bigger than 95 ' ];
% 
% ss113=[' sathe maghtae  for Alominiom and Alominiom Aliages:  '];
% ss4=['    [8]35    [9]50      [10]70        [11]95      [12]120    [13]150    [14]bigger than 150'];
% ss115=[' sathe maghtae  for alominiom with fulad core: '];
% 
% ss3=['   [15]35.6         [16]50.8        [17]70.12      [18]95.15    [19]120.20   [20]150.25    [21]125.30     [22]50.30       [23]44.32     [24]450.40      [25]490.65'];
% ss3s=[' [26]560.50   [27]170.40     [28]210.50    [29]95.55      [30]120.7      [31]105.75    [32]185.30     [33]210.35      [34]240.40   [35]265.35     [36]300.50  '];
% ss5=['   [37]340.3      [38]380.5      [39]435.55     [40]385.55   [41]550.70     [42]680.85]'];
% disp(ss1);
% disp(sss2);
% disp(ss112)
% disp(ss2);
% disp(ss113)
% disp(ss4);
% disp(ss115)
% disp(ss3);
% disp(ss3s);
% disp(ss5);
% disp(sss2);

sct=get(handles.sctt,'value');
% 
% disp(sss2);

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
%     disp(['Different towers for voltage 63 KV']);
    ss2=['[1]N      [2]T    [3]C   [4]A    [5]NN   [6]AA    [7]CC     [8]CC(SAE)       '];
    ss4=['[9]SA     [10]SB    [11]DA   [12]DB   [13]SC     [14]SD   '];
    ss3=['[15]DC     [16]DD    [17]S2FL   [18]S     [19]MS   [20]HS    '];
    ss5=['[21]T30   [22]T60    [23]T90'];
    
%     disp(sss2);
%     disp(ss2);
%     disp(ss4);
%     disp(ss3);
%     disp(ss5);
%     disp(sss2);
    
elseif V==132;
%     disp(['Different towers for voltage 132 KV']);
    ss2=['[1]T30     [2]T60     [3]T90      [4]HS      [5]MS     [6]T3'];
    ss4=['[7]T1SA            [8]T1TA     [9]T1DA    [10]T1EA'];
    ss3=['[11]S2EL         [12]S2CL'  ];
    ss5=['  '];
    
    
    
%     disp(sss2);
%     disp(ss2);
%     disp(ss4);
%     disp(ss3);
%     disp(ss5);
%     disp(sss2);
    
    
elseif V==230;
%     disp(['Different towers for voltage 230 KV']);
    ss2=['[1]S2CL      [2]S1AL      [3]S1BL      [3]S2AL      [4]S2BL      [5]DC '];
    ss4=['[6]DC10       [7]DC30        [8]DC60       [9]DC90       [10]LS2 '];
    ss3=['[11]LS      [12]T60        [13]SC        [14]D    [15]D10   [16]D30    [17]D60   [18]DT'];
    ss5=['[19]DT45    [20]D90   [21]D   [22]S10   [23]S30   [24]S60    [25]S2     [26]S3     [27]T2    [28]TE1'];
    
%     disp(sss2);
%     disp(ss2);
%     disp(ss4);
%     disp(ss3);
%     disp(ss5);
%     disp(sss2);
    
elseif V==400;
%     disp(['Different towers for voltage 400 KV']);
    ss2=['[1] S-2   [2]D30-2    [3]D60-2     [4]T1      [5]LS-2       [6]MS-2       [7]HS-2     [8]LS-2      [9]T30-2 '];
    ss4=['[10]T60-2         [11]LS     [12]MS      [13]HS     [14]T30       [15]T60     [16]SJA    [17]SJG '];
    ss3=['  [18]SCT       [19]SCG        [20]SCA       [21]SCH        [22]SBA      [23]SBG       [24]SBH     '];
    ss5=['[25]SL6T      [27]TA60     [28]MA35      [29]LA20     [30]AS-60     [31]LT   [32]LA   [33]MA     [34]H  '];
    
    
%     disp(sss2);
%     disp(ss2);
%     disp(ss4);
%     disp(ss3);
%     disp(ss5);
%     disp(sss2);
end









%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555555555

% tt74=['Warning'];
% tt75=['to end span enter,enter 0'];
% disp(tt74);
% disp(aaa4);
% disp(tt75);
% disp(s2);
section=str2double(get(handles.sectionn,'string'));
noft=str2double(get(handles.noftt,'string'));
 nmn=cellstr(get(handles.nmnnn,'string'));%str2num(get(handles.nmnnn,'string'));

% nmn=get(handles.nmnnn,'string');
       
%  
%          disp(['enter type of tower' num2str(kj)]);
%         nmn1=str2double(handles.ccc,'string');%~input(':','s');
%     end
    
   
%         cc=eval(get(handles.ccc,'string'));
% cc=cc';
nmnn=str2num(get(handles.nmnnn,'string'));
 nRowsn = size(nmnn,1);
% nmnVec=[str2num(nmnn)];


cc=str2num(get(handles.ccc,'String'));
nRowsc = size(cc,1);
% ccVec=[str2num(cc)];

% for j = 1:nRowsc
% eval(cc(j,:));
% end

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

tt83=(get(handles.tt833,'value'));


if tt83==2;
    T_S=str2double(get(handles.TSS,'string'));
end

i_S=str2double(get(handles.ISS,'string'));
P_w_Ss=str2double(get(handles.PWSS,'string'));

P_w_S=(P_w_Ss^2)/16;


W_i_S=0.913*pi*i_S*(i_S+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w_S=P_w_S*(d+2*i_S)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_S=sqrt( (W_c+W_i_S)^2+W_w_S^2 );%TOTAL WEIGHT




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     H avaliye
% tt1=['first information'];
% tt2=['[1]if have sag(F) ,enter 1              [2]if have parameter (a),enter 2                 [3]if have safty factor(SF),enter 3'];
% disp(tt1)
% disp(sss2)
% disp(tt2);
% disp(sss2);
vh=(get(handles.vhh,'value'));
maxxx=max(saiz);
H=zeros(section,maxxx);


if vh==1
    
    
%     for  j=1:section
%         kjh=['SAG TENSION (a)of section' num2str( j)];
%         disp(kjh);
%         F(j)=input(':');
       load  F %=eval(get(handles.FF,'string'));
%     end
%     T_R1=input('first temprature(c):');
%     i1=input('first ice wild(mm):');
%     P_www=input('first Velocity of wind(m/s):');
%     T_R1=str2double(get(handles.TR11,'string'));
% i1=str2double(get(handles.i11,'string'));
% P_www=str2double(get(handles.Pwww,'string')); 
load T_R1
load i1
load P_www
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
    
    
%     for  j=1:section
%  a=eval(get(handles.aa,'string'));
%     end
%    
load a
load T_R1
load i1
load P_www
% T_R1=str2double(get(handles.TR11,'string'));
% i1=str2double(get(handles.i11,'string'));
% P_www=str2double(get(handles.Pwww,'string')); 
    P_w1=(P_www.^2)/16;
    
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
%     for  j=1:section
%         kjh=['safety factor(SF) of section' num2str( j)];
%         disp(kjh);
%         SF=eval(get(handles.SFF,'string'));
%     end
    load SF
    for j=1:section
        for i=1:saiz(j)
            H(j,i)=UTS/SF(j);
        end
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%             rejime avaliye
    
%     ss81=['do you Know critical rejim?'];
%     ss82=['[1] YES           [2] NO'];
%     disp(ss81);
%     disp(s2);
%     disp(ss82);
%     disp(s2);
    load reponc %=get(handles.reponcc,'value');
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%   REJIM MALUM
    if reponc==1
%         for j=1:section
%             disp(['eneter information of regims for section' num2str(j) ]);
%             disp(s2)
% i1=eval(get(handles.i11,'string'));
% T_R1=eval(get(handles.TR11,'string'));
% P_www=eval(get(handles.Pwww,'string'));
load T_R1
load i1
load P_www
            P_w1=(P_www.^2)/16;
            
            W_i1(j)=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
            W_w1(j)=P_w1(j)*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
            W_T_R1(j)=sqrt( (W_c+W_i1(j))^2+W_w1(j)^2 );%TOTAL WEIGHT
%         end
        
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
        
        
        
%         for j=1:section
            
%             disp(['eneter information of regims for section' num2str(j) ]);
%             disp(s2)
%             www=['rejim of wind'];
%             disp(www)
%             disp(s2)
%             T_R11=eval(get(handles.TR111,'string'));
%             i11=eval(get(handles.i111,'string'));
%             P_www11=eval(get(handles.Pwww111,'string'));
 load T_R11
load i11
load P_www11         
            P_w11=(P_www11.^2)/16;
%             disp(s2)
%             wwww=['rejim of winter'];
%             disp(wwww)
%             disp(s2)
% T_R12=eval(get(handles.TR112,'string'));
% i12=eval(get(handles.i112,'string'));
% P_www22=eval(get(handles.Pwww22,'string'));
load T_R12
load i12
load P_www22
           
            P_w12=(P_www22.^2)/16;
% T_R13=eval(get(handles.TR113,'string')); 
% i13=eval(get(handles.i113,'string'));
% P_www33=eval(get(handles.Pwww33,'string'));
          load T_R13
load i13
load P_www33
P_w13=(P_www33.^2)/16;

load T_R14
load i14
load P_www44

% T_R14=eval(get(handles.TR114,'string')); 
% i14=eval(get(handles.i114,'string'));
% P_www44=eval(get(handles.Pwww44,'string'));
i1=[i11' i12' i13' i14'];
T_R1=[T_R11' T_R12' T_R13' T_R14'];
            P_w14=(P_www44.^2)/16;

%         end
        
   P_w1=[P_w11' P_w12' P_w13' P_w14'];   
        
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


w_g=str2double(get(handles.wgg,'string'));

%%%%%%%%%%%%%%%%%%   for all temprature  %%%%%%%%%%%%%%%%%%%
if tt83==1
    maxxx=section;
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
    
    %%
    %%
    %%
    %%
    %%
    %%
    %%
    
   aaa1=['Type Of Conductor=' nn           ];
    aaa6=[' Temprature =         -3                 2                  7                 12                    17          22          27          32          37          42          47          52'];
    
%     nmn=reshape(nmn,section,nSpan);
    
     if section==1 && length(nmn(:))==1
            nmn1=nmn;
            
        elseif section==1 && length(nmn(:))==2
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
        elseif section==1 && length(nmn(:))==3
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            
        elseif section==1 && length(nmn(:))==4
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            
        elseif section==1 && length(nmn(:))==5
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            
        elseif section==1 && length(nmn(:))==6
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            
        elseif section==1 && length(nmn(:))==7
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            
        elseif section==1 &&length(nmn(:))==8
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            
        elseif section==1 && length(nmn(:))==9
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);
        end
        %% i2
        if section==2 && length(nmn(:))==2
            nmn11=nmn(1,1);
            nmn21=nmn(2,1);
        
        elseif section==2 && length(nmn(:))==4
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
                    nmn21=nmn(2,1);
            nmn22=nmn(2,2);
        elseif section==2 && length(nmn(:))==6
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
                    nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
        elseif section==2 && length(nmn(:))==8
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
             nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);      
        elseif section==2 && length(nmn(:))==10
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);       
        elseif section==2 && length(nmn(:))==12
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);        
        elseif section==2 && length(nmn(:))==14
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);        
        elseif section==2 && length(nmn(:))==16
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
                    nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
        elseif section==2 && length(nmn(:))==18
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);
                        nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn29=nmn(2,9);
        end
        %% i3
        if section==3 && length(nmn(:))==3
            nmn11=nmn(1,1);
        nmn21=nmn(2,1);
        nmn31=nmn(3,1);
        elseif section==3 && length(nmn(:))==6
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
                        nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            
        elseif section==3 && length(nmn(:))==9
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
                        nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            
        elseif section==3 && length(nmn(:))==12
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            
        elseif section==3 && length(nmn(:))==15
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            
        elseif section==3 && length(nmn(:))==18
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            
            
        end
        if section==3 && length(nmn(:))==21
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
        elseif section==3 && length(nmn(:))==24
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            
        elseif section==3 && length(nmn(:))==27
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn39=nmn(2,9);           
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            nmn39=nmn(3,9);
        end
        %% i4
        if section==4 && length(nmn(:))==4
            nmn11=nmn(1,1);
     nmn21=nmn(2,1);
     nmn31=nmn(3,1);
     nmn41=nmn(4,1);
        elseif section==4 && length(nmn(:))==8
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
        elseif section==4 && length(nmn(:))==12
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
       
        elseif section==4 && length(nmn(:))==16
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
        
        elseif section==4 && length(nmn(:))==20
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
        
        elseif section==4 && length(nmn(:))==24
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
        
        elseif section==4 && length(nmn(:))==28
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);            
            nmn21=nmn(1,1);
            nmn22=nmn(1,2);
            nmn23=nmn(1,3);
            nmn24=nmn(1,4);
            nmn25=nmn(1,5);
            nmn26=nmn(1,6);
            nmn27=nmn(1,7);           
            nmn31=nmn(1,1);
            nmn32=nmn(1,2);
            nmn33=nmn(1,3);
            nmn34=nmn(1,4);
            nmn35=nmn(1,5);
            nmn36=nmn(1,6);
            nmn37=nmn(1,7);            
            nmn41=nmn(1,1);
            nmn42=nmn(1,2);
            nmn43=nmn(1,3);
            nmn44=nmn(1,4);
            nmn45=nmn(1,5);
            nmn46=nmn(1,6);
            nmn47=nmn(1,7);
        
        elseif section==4 && length(nmn(:))==32
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);
          
        
        elseif section==4 && length(nmn(:))==36
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn29=nmn(2,9);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            nmn39=nmn(3,9);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);
            nmn49=nmn(4,9);
            
        end
        %% i5
        if section==5 && length(nmn(:))==5
            nmn11=nmn(1,1);
            nmn21=nmn(2,1);
            nmn31=nmn(3,1);
            nmn41=nmn(4,1);
            nmn51=nmn(5,1);
        
        elseif section==5 && length(nmn(:))==10
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            
        
        elseif section==5 && length(nmn(:))==15
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
        
        elseif section==5 && length(nmn(:))==20
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
        
        elseif section==5 && length(nmn(:))==25
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
        
        elseif section==5 && length(nmn(:))==30
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
        
        elseif section==5 && length(nmn(:))==35
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
        
        elseif section==5 && length(nmn(:))==40
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(4,8);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);
        
        elseif section==5 && length(nmn(:))==45
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn29=nmn(2,9);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            nmn39=nmn(3,9);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);
            nmn49=nmn(4,9);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);
            nmn59=nmn(5,9);
        end
        %% i6
        if section==6 && length(nmn(:))==6
            nmn11=nmn(1,1);
            nmn21=nmn(2,1);
            nmn31=nmn(3,1);
            nmn41=nmn(4,1);
            nmn51=nmn(5,1);
         nmn61=nmn(6,1);
        elseif section==6 && length(nmn(:))==12
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            
        
        elseif section==6 && length(nmn(:))==18
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
        
        elseif section==6 && length(nmn(:))==24
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
        
        elseif section==6 && length(nmn(:))==30
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
       
        elseif section==6 && length(nmn(:))==36
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
        
        elseif section==6 && length(nmn(:))==42
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
        elseif section==6 && length(nmn(:))==48
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(4,8);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
        
        elseif section==6 && length(nmn(:))==54
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn29=nmn(2,9);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            nmn39=nmn(3,9);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);
            nmn49=nmn(4,9);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);
            nmn59=nmn(5,9);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
            nmn69=nmn(6,9);
        end
        %% i7
                if section==7 && length(nmn(:))==7
            nmn11=nmn(1,1);
            nmn21=nmn(2,1);
            nmn31=nmn(3,1);
            nmn41=nmn(4,1);
            nmn51=nmn(5,1);
         nmn61=nmn(6,1);
               nmn71=nmn(7,1);
        elseif section==7 && length(nmn(:))==14
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);            
        
        elseif section==7 && length(nmn(:))==21
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);        
        elseif section==7 && length(nmn(:))==28
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);        
        elseif section==7 && length(nmn(:))==35
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);       
        elseif section==7 && length(nmn(:))==42
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);        
        elseif section==7 && length(nmn(:))==49
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
        elseif section==7 && length(nmn(:))==56
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(4,8);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn78=nmn(7,8);        
        elseif section==7 && length(nmn(:))==63
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn29=nmn(2,9);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            nmn39=nmn(3,9);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);
            nmn49=nmn(4,9);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);
            nmn59=nmn(5,9);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
            nmn69=nmn(6,9);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn78=nmn(7,8);
            nmn79=nmn(7,9);
        end
        %% i8
                if section==8 && length(nmn(:))==8
            nmn11=nmn(1,1);
            nmn21=nmn(2,1);
            nmn31=nmn(3,1);
            nmn41=nmn(4,1);
            nmn51=nmn(5,1);
         nmn61=nmn(6,1);
               nmn71=nmn(7,1);
                 nmn81=nmn(8,1);
        elseif section==8 && length(nmn(:))==16
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);            
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);         
        elseif section==8 && length(nmn(:))==24
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);  
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
        elseif section==8 && length(nmn(:))==32
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);  
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4); 
        elseif section==8 && length(nmn(:))==40
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);             
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);      
        elseif section==8 && length(nmn(:))==48
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);            
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);        
        elseif section==8 && length(nmn(:))==56
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);
            nmn87=nmn(8,7);
        elseif section==8 && length(nmn(:))==64
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(4,8);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn78=nmn(7,8); 
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);
            nmn87=nmn(8,7);
            nmn88=nmn(8,8);
            
        elseif section==8 && length(nmn(:))==72
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn29=nmn(2,9);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            nmn39=nmn(3,9);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);
            nmn49=nmn(4,9);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);
            nmn59=nmn(5,9);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
            nmn69=nmn(6,9);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn78=nmn(7,8);
            nmn79=nmn(7,9);
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);
            nmn87=nmn(8,7);
            nmn88=nmn(8,8);
            nmn89=nmn(8,9);
                end
                %% i9
                       if section==9 && length(nmn(:))==9
            nmn11=nmn(1,1);
            nmn21=nmn(2,1);
            nmn31=nmn(3,1);
            nmn41=nmn(4,1);
            nmn51=nmn(5,1);
         nmn61=nmn(6,1);
               nmn71=nmn(7,1);
                 nmn81=nmn(8,1);
                 nmn91=nmn(9,1);
        elseif section==9 && length(nmn(:))==18
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);            
            nmn81=nmn(8,1);
            nmn82=nmn(8,2); 
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
        elseif section==9 && length(nmn(:))==27
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);  
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
            nmn93=nmn(9,3);
        elseif section==9 && length(nmn(:))==36
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);  
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4); 
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
            nmn93=nmn(9,3);
            nmn94=nmn(9,4); 
        elseif section==9 && length(nmn(:))==45
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);             
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5); 
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
            nmn93=nmn(9,3);
            nmn94=nmn(9,4);
            nmn95=nmn(9,5);
        elseif section==9 && length(nmn(:))==54
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);            
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
            nmn93=nmn(9,3);
            nmn94=nmn(9,4);
            nmn95=nmn(9,5);
            nmn96=nmn(9,6);
        elseif section==9 && length(nmn(:))==63
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);
            nmn87=nmn(8,7);
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
            nmn93=nmn(9,3);
            nmn94=nmn(9,4);
            nmn95=nmn(9,5);
            nmn96=nmn(9,6);
            nmn97=nmn(9,7);
        elseif section==9 && length(nmn(:))==72
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(4,8);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);            
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn78=nmn(7,8); 
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);
            nmn87=nmn(8,7);
            nmn88=nmn(8,8);
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
            nmn93=nmn(9,3);
            nmn94=nmn(9,4);
            nmn95=nmn(9,5);
            nmn96=nmn(9,6);
            nmn97=nmn(9,7);
            nmn98=nmn(9,8);
        elseif section==9 && length(nmn(:))==81
            nmn11=nmn(1,1);
            nmn12=nmn(1,2);
            nmn13=nmn(1,3);
            nmn14=nmn(1,4);
            nmn15=nmn(1,5);
            nmn16=nmn(1,6);
            nmn17=nmn(1,7);
            nmn18=nmn(1,8);
            nmn19=nmn(1,9);            
            nmn21=nmn(2,1);
            nmn22=nmn(2,2);
            nmn23=nmn(2,3);
            nmn24=nmn(2,4);
            nmn25=nmn(2,5);
            nmn26=nmn(2,6);
            nmn27=nmn(2,7);
            nmn28=nmn(2,8);
            nmn29=nmn(2,9);            
            nmn31=nmn(3,1);
            nmn32=nmn(3,2);
            nmn33=nmn(3,3);
            nmn34=nmn(3,4);
            nmn35=nmn(3,5);
            nmn36=nmn(3,6);
            nmn37=nmn(3,7);
            nmn38=nmn(3,8);
            nmn39=nmn(3,9);            
            nmn41=nmn(4,1);
            nmn42=nmn(4,2);
            nmn43=nmn(4,3);
            nmn44=nmn(4,4);
            nmn45=nmn(4,5);
            nmn46=nmn(4,6);
            nmn47=nmn(4,7);
            nmn48=nmn(4,8);
            nmn49=nmn(4,9);            
            nmn51=nmn(5,1);
            nmn52=nmn(5,2);
            nmn53=nmn(5,3);
            nmn54=nmn(5,4);
            nmn55=nmn(5,5);
            nmn56=nmn(5,6);
            nmn57=nmn(5,7);
            nmn58=nmn(5,8);
            nmn59=nmn(5,9);
            nmn61=nmn(6,1);
            nmn62=nmn(6,2);
            nmn63=nmn(6,3);
            nmn64=nmn(6,4);
            nmn65=nmn(6,5);
            nmn66=nmn(6,6);
            nmn67=nmn(6,7);
            nmn68=nmn(6,8);
            nmn69=nmn(6,9);
            nmn71=nmn(7,1);
            nmn72=nmn(7,2);
            nmn73=nmn(7,3);
            nmn74=nmn(7,4);
            nmn75=nmn(7,5);
            nmn76=nmn(7,6);
            nmn77=nmn(7,7);
            nmn78=nmn(7,8);
            nmn79=nmn(7,9);
            nmn81=nmn(8,1);
            nmn82=nmn(8,2);
            nmn83=nmn(8,3);
            nmn84=nmn(8,4);
            nmn85=nmn(8,5);
            nmn86=nmn(8,6);
            nmn87=nmn(8,7);
            nmn88=nmn(8,8);
            nmn89=nmn(8,9);
            nmn91=nmn(9,1);
            nmn92=nmn(9,2);
            nmn93=nmn(9,3);
            nmn94=nmn(9,4);
            nmn95=nmn(9,5);
            nmn96=nmn(9,6);
            nmn97=nmn(9,7);
            nmn98=nmn(9,8);
            nmn99=nmn(9,9);
                end
    %aaa3=[  'Span=' num2star(S(1))  '         '  'Tension=' num2str(T(1))     '          '   'Sag=' num2str(F3(1))   '             '    'Second Parameter=' num2str(a2(1))   '               '   'phase_distance=' num2str(phase_distance(1))] ;
%     aaa4=['_____________'];
%     aaa5=['RESPONSE'];

    for i=1:section
    ssa=['section' num2str(i)];
    colNames(i)={ssa};
     % Sag|2 deg',' Sag|7deg',' Sag|12deg',' Sag|17deg','Sag|22deg','Sag|27deg','Sag|32deg','Sag|37deg','Sag|42deg','Sag|47deg','Sag|52deg'};
end

            fd=figure('Position',[200 500 450 200]);
            if vh==1
            dat=[F; S_R; totalspan];
            elseif vh==2
              dat=[a; S_R; totalspan];  
            elseif vh==3
                dat=[SF; S_R; totalspan];
            end
            
            
if vh==3 && reponc==2;
%    disp(rejem);
 dat=[SF; S_R; totalspan;Rolling_span];
%   qwer=['Rolling span=' num2str(Rolling_span(i))];disp(qwer);
end
            
            if vh==1
                rowNames={'First Sag','Equivalent Span','Total Span'};%{noft((i-1)*nSpan+1:i*nSpan)};
            elseif vh==2
                rowNames={'First Parameter','Equivalent Span','Total Span'};%{noft((i-1)*nSpan+1:i*nSpan)};
            elseif vh==3
                rowNames={'First Safty factor','Equivalent Span','Total Span'};%{noft((i-1)*nSpan+1:i*nSpan)};
            end
            
            if vh==3 && reponc==2;
                rowNames={'First Safty factor','Equivalent Span','Total Span','Rolling span'};%{noft((i-1)*nSpan+1:i*nSpan)};

            end
            
            t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
                'ColumnWidth',{'auto'},'Position',[20 20 680 150]);
        
    
    %%%%%%%%%%%%%%%%%%%%%%%%  sag
%     disp(sss2);
%     display('            SAG     TENSION')
%     disp(sss2);
%     
rr=0;
    jm=noft;
    for i=1:section
%         kkkk=['section ' num2str(i) ];
% %         disp(s2);
%         disp(kkkk)

        for j=1:saiz(i)
            ll=1;
       rr=rr+1;     
            c_s(rr)=S(i,j);
            for th=2:5:57
                c_f(rr,ll)=F3(i,j,th);
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
        
    %%
    %%
    %%
    %%
    %%
    %%
    
         F31=[c_s',c_f];
         
%               for ij=1:section*nSpan
%           
%             noft(ij+1)=noft(ij)+1;
%               end
%       
%             ss=i*ones(1,nSpan);
%            F31=[ss' (noft((i-1)*nSpan+1:i*nSpan))' nmn(i,:)'  F31];
% 
% 
%      colNames={'Section','Tower','TowerType','Span',' Sag|-3deg',' Sag|2 deg',' Sag|7deg',' Sag|12deg',' Sag|17deg','Sag|22deg','Sag|27deg','Sag|32deg','Sag|37deg','Sag|42deg','Sag|47deg','Sag|52deg'};
% 
%             fd=figure('Position',[200 500 1250 200]);
%             dat=[F31];
% 
%                 rowNames=[];%{noft((i-1)*nSpan+1:i*nSpan)};
%          
%             
%             t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
%                 'ColumnWidth',{'auto'},'Position',[20 20 1480 150]);
% 

    end

  
    %%%%%%%%%%%%%%%%%%%%%%%%  Tension
%     display('          TENSION')
% %     disp(sss2);
% %     
 
    %%%%%%%%%%%%%%%%%%%%%%%  Tension
%     display('          TENSION')
%     disp(sss2);
rr=0;  
    jm=noft;
    for i=1:section
%         kkkk=['section ' num2str(i) ];
% %         disp(s2);
%         disp(kkkk)
%         disp(s2);


        for j=1:saiz(i)
            ll=1;
            rr=rr+1;
            c_sT(rr)=S(i,j);
            for th=2:5:57
                c_fT(rr,ll)=T(i,j,th);
                ll=ll+1;
            end
        end
        
        [sa2,sai2]=size(c_sT);
        abb=1;
        for ib=1:sai2
            if c_sT(:,abb)==0
                c_sT(:,abb)=[];
                abb=abb-1;
            end
            abb=abb+1;
        end
        
        F31T=[c_sT',c_fT];
%         display(' TOWER     TYPE      SPAN             -3                 2                    7                    12                   17                   22                  27                 32                   37                   42                  47                 52 ')
        
        jmm=noft;
%         if i==1;disp(['       ' num2str(jmm) '      ' nmn1]);end
        
      
 
        
%         for ok=1:saiz(i)
%             k=0;
%             
%             ggg=F31T(ok,:);
%             hhh=['                                ' num2str(ggg) ];
%             disp(hhh);
%             jm=jm+1;
%  
%         end
        
        

%               for ij=1:section*nSpan
%           
%             noft(ij+1)=noft(ij)+1;
%               end
%       
%             ss=i*ones(1,nSpan);
%            F31=[ss' (noft((i-1)*nSpan+1:i*nSpan))' nmn(i,:)'  F31];
% 
% 
%      colNames={'Section','Tower','TowerType','Span',' Tension|-3deg',' Tension|2 deg',' Tension|7deg',' Tension|12deg',' Tension|17deg',' Tension|22deg',' Tension|27deg',' Tension|32deg',' Tension|37deg',' Tension|42deg',' Tension|47deg',' Tension|52deg'};
% 
%             fd=figure('Position',[200 500 1250 200]);
%             dat=[F31];
% 
%                 rowNames=[];%{noft((i-1)*nSpan+1:i*nSpan)};
%          
%             
%             t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
%                 'ColumnWidth',{'auto'},'Position',[20 20 1350 150]);
    end
    
     
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %%%%%%%%%%%%%%%%%%%%%%%%  parameter
%     display('         SPAN   PARAMETER');
rr=0;
    aE=1;
    jm=noft;
    for i=1:section
        kkkk=['section ' num2str(i) ];
        
        for j=1:saiz(i)
            ll=1;
            rr=rr+1;
            c_sa(rr)=S(i,j);
            for th=2:5:57
                c_fa(rr,ll)=a2(i,j,th);
                ll=ll+1;
            end
        end
        [sa2,sai2]=size(c_sa);
        abb=1;
        for ib=1:sai2
            if c_sa(:,abb)==0
                c_sa(:,abb)=[];
                abb=abb-1;
            end
            abb=abb+1;
        end
        
        F31a=[c_sa',c_fa];
%         display(' TOWER     TYPE      SPAN             -3               2                 7                    12                   17                    22                   27                   32                   37                   42                 47                     52  ')
        
        jmm=noft;
       
       
%         for ok=1:saiz(i)
%             k=0;
%             
%             ggg=F31a(ok,:);
%             hhh=['                                ' num2str(ggg) ];
%             disp(hhh);
%             jm=jm+1;
% 
%            
%         end
        

%            for ij=1:section*nSpan
%           
%             noft(ij+1)=noft(ij)+1;
%               end
%       
%             ss=i*ones(1,nSpan);
%            F31=[ss' (noft((i-1)*nSpan+1:i*nSpan))' nmn(i,:)'  F31];
% 
% 
%      colNames={'Section','Tower','TowerType','Span','Parameter|-3deg','Parameter|2 deg','Parameter|7deg','Parameter|12deg','Parameter|17deg','Parameter|22deg','Parameter|27deg','Parameter|32deg','Parameter|37deg','Parameter|42deg','Parameter|47deg','Parameter|52deg'};
% 
%             fd=figure('Position',[200 500 1280 200]);
%             dat=[F31];
% 
%                 rowNames=[];%{noft((i-1)*nSpan+1:i*nSpan)};
%          
%             
%             t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
%                 'ColumnWidth',{'auto'},'Position',[20 20 1450 150]);
    end

   %     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%     
%     %%%%%%%%%%%%%%%%%%%%%%%%  phase distance
%     display('         PHASE  DISTANCE');

    rr=0;
    aE=1;
    jm=noft;
    for i=1:section
%         kkkk=['section ' num2str(i) ];
%         disp(kkkk)

        for j=1:saiz(i)
            ll=1;
            rr=rr+1;
            c_sd(rr)=S(i,j);
            for th=2:5:57
                c_fd(rr,ll)=phase_distance(i,j,th);
                ll=ll+1;
            end
        end
        
        [sa2,sai2]=size(c_sd);
        abb=1;
        for ib=1:sai2
            if c_sd(:,abb)==0
                c_sd(:,abb)=[];
                abb=abb-1;
            end
     
            abb=abb+1;
        end
        
        F31d=[c_sd',c_fd];     
        
        jmm=noft;

%         for ok=1:saiz(i)
%             k=0;
%             
%             ggg=F31d(ok,:);
%             hhh=['                                ' num2str(ggg) ];
%             disp(hhh);
%             jm=jm+1;
% 
%         end
        
%            for ij=1:section*nSpan
%           
%             noft(ij+1)=noft(ij)+1;
%               end
%       
%             ss=i*ones(1,nSpan);
%            F31=[ss' (noft((i-1)*nSpan+1:i*nSpan))' nmn(i,:)'  F31];
% 
% 
%      colNames={'Section','Tower','TowerType','Span','Phase Distance|-3deg','Phase Distance|2 deg','Phase Distance|7deg','Phase Distance|12deg','Phase Distance|17deg','Phase Distance|22deg','Phase Distance|27deg','Phase Distance|32deg','Phase Distance|37deg','Phase Distance|42deg','Phase Distance|47deg','Phase Distance|52deg'};
% 
%             fd=figure('Position',[200 500 1520 200]);
%             dat=[F31];
% 
%                 rowNames=[];%{noft((i-1)*nSpan+1:i*nSpan)};
%          
%             
%             t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
%                 'ColumnWidth',{'auto'},'Position',[20 20 1650 150]);
            
    end
    
    nmna=nmn;
    nmnType=nmna(:);
 [ssa2,ssai2]=size(nmnType);
        abbb=1;
        for ib=1:length(nmnType)
            if nmnType{ib}=='0'
                nmnType(ib)=[];
%                 abbb=abbb-1;
            end
     
%             abbb=abbb+1;
        end
        
    mnmp=repmat(nmnType,4,1);
            for ij=1:sum(saiz)
          
            noft(ij+1)=noft(ij)+1;
            end
            
            k=0;
      for i=1:section
          for jj=1:saiz(i)
              k=k+1;
              aa(k)=i;
          end
      end
      ss=[aa aa aa aa]';
        no=noft(1:end-1);
        noft=[no no no no]';
              F311=[F31;F31T;F31d;F31a];

 ss1={ss};
 noft1={noft};
 F3111={F311};
F31new={ss noft mnmp F311};

F311new=(F31new);
     colNames={'Section','Tower|start','Tower|end','Span','-3deg','2 deg','7deg','12deg','17deg','22deg','27deg','32deg','37deg','42deg','47deg','52deg'};

 fd=figure('Position',[50 100 1550 600]);
data1=F311new{1};
data2=F311new{2};
data3=F311new{3};
data4=F311new{4};
dat=[data1 data2 data2+1 data4];
qw=length(data1)/4;
sp=repmat('Sag',qw,1);
Ten=repmat('Tension',qw,1);
Pa=repmat('Parameter',qw,1);
pha=repmat('Phase Distance',qw,1);
we=char(sp,Ten,pha,Pa);
                rowNames={we};%{noft((i-1)*nSpan+1:i*nSpan)};
 t = uitable('Data', dat,... 
            'ColumnName', colNames,...
               'RowName', rowNames,...
               'ColumnWidth',{'auto'},'Position',[25 20 1500 550]);
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%     
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%   for one  temprature    %%%%%%%%555
elseif tt83==2
%     
    
    
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
%     aaa1=['Type Of Conductor=' nn '              '     'First Temprature=' num2str(T_R(1,1))    ];
%      aaa5=['RESPONSE'];

%        %     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%     %%%%%%%%%%%%%%%%%%%%%%%%  sag

%     

c_f=zeros(sum(saiz),1);
c_s=zeros(sum(saiz),1);
f31=F3';
F33=f31(:);
S(:,end)=[];
s1=S';
S1=s1(:);
    aE=1;
    jm=noft;
    for i=1:sum(saiz)
        
        c_f(i)=F33(i);
        c_s(i)=S1(i);
        
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
        F31=[c_s,c_f];

        
%         if vh==1;aaa21=[   'first sag=' num2str(F(i))  ];disp(aaa21);end
%         if vh==2;aaa22=[ 'Parameter=' num2str(a(i)) ];disp(aaa22);end
%         if vh==3;aaa22=[ 'SAFTY FACTOR=' num2str(SF(i) ) ];disp(aaa22);end
%         if vh==3 && reponc==2;qwer=['Rolling span=' num2str(Rolling_span(i))];disp(qwer);end
        
        jmm=noft;         
    

        
%               for ij=1:section*nSpan
%           
%             noft(ij+1)=noft(ij)+1;
%               end
%       
%             ss=i*ones(1,nSpan);
%            F31=[ss' (noft((i-1)*nSpan+1:i*nSpan))' nmn(i,:)'  F31];
% 
%     colNames={'Section','Tower','TowerType','Span','Sag'};
% 
% 
%             fd=figure('Position',[200 500 420 200]);
%             dat=[F31];
%            
% 
%                 rowNames=[];
%          
%             
%             t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
%                 'ColumnWidth',{'auto'},'Position',[20 20 480 150]);
%     
    end
      for i=1:section
    ssa=['section' num2str(i)];
    colNames(i)={ssa};
     % Sag|2 deg',' Sag|7deg',' Sag|12deg',' Sag|17deg','Sag|22deg','Sag|27deg','Sag|32deg','Sag|37deg','Sag|42deg','Sag|47deg','Sag|52deg'};
end

            fd=figure('Position',[200 500 450 200]);
            if vh==1
            dat=[F; S_R; totalspan];
            elseif vh==2
              dat=[a; S_R; totalspan];  
            elseif vh==3
                dat=[SF; S_R; totalspan];
            end
            
            
if vh==3 && reponc==2;
%    disp(rejem);
 dat=[SF; S_R; totalspan;Rolling_span];
%   qwer=['Rolling span=' num2str(Rolling_span(i))];disp(qwer);
end
            
            if vh==1
                rowNames={'First Sag','Equivalent Span','Total Span'};%{noft((i-1)*nSpan+1:i*nSpan)};
            elseif vh==2
                rowNames={'First Parameter','Equivalent Span','Total Span'};%{noft((i-1)*nSpan+1:i*nSpan)};
            elseif vh==3
                rowNames={'First Safty factor','Equivalent Span','Total Span'};%{noft((i-1)*nSpan+1:i*nSpan)};
            end
            
            if vh==3 && reponc==2;
                rowNames={'First Safty factor','Equivalent Span','Total Span','Rolling span'};%{noft((i-1)*nSpan+1:i*nSpan)};

            end
            
            t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
                'ColumnWidth',{'auto'},'Position',[20 20 680 150]);

%        %     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% %     %%%%%%%%%%%%%%%%%%%%%%%%  Tension

c_fT=zeros(sum(saiz),1);
c_sT=zeros(sum(saiz),1);
T1=T';
T11=T1(:);
    aE=1;
    jm=noft;
    for i=1:sum(saiz)
        
        c_fT(i)=T11(i);
        c_sT(i)=S(i);
        
        [sa,sai]=size(c_fT);
        abn=1;
        for ia=1:sai
            if c_fT(:,abn)==0
                c_fT(:,abn)=[];
                abn=abn-1;
            end
            abn=abn+1;
        end
        [sa2,sai2]=size(c_sT);
        abb=1;
        for ib=1:sai2
            if c_sT(:,abb)==0
                c_sT(:,abb)=[];
                abb=abb-1;
            end
            abb=abb+1;
        end
        F31T=[c_fT'];
        
      kkkk=['section ' num2str(i) ];

  disp(kkkk)
        
        jmm=noft;
   
        
%            F31=[nmn(i,:)'  F31];

%     colNames={'TowerType','Span','-3deg','2 deg','7deg','12deg','17deg','22deg','27deg','32deg','37deg','42deg','47deg','52deg'};
%     colNames={'TowerType','Span','faverite temp'};

%       for ij=1:section*nSpan
%           
%             noft(ij+1)=noft(ij)+1;
%       end
%       
%                   ss=i*ones(1,nSpan);
%            F31=[ss' (noft((i-1)*nSpan+1:i*nSpan))' nmn(i,:)'  F31];
% 
%     colNames={'Section','Tower','TowerType','Span','Tension'};
%     
%             fd=figure('Position',[200 500 420 200]);
%             dat=[F31];
% %             colNames={'Sag'};
%            
% 
%                 rowNames=[];
%          
%             
%             t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
%                 'ColumnWidth',{'auto'},'Position',[20 20 480 150]);
        
    end

    
%        %     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% %     %%%%%%%%%%%%%%%%%%%%%%%%  parameter

c_fa=zeros(sum(saiz),1);
c_sa=zeros(sum(saiz),1);
a21=a2';
a22=a21(:);
    aE=1;
    jm=noft;
    for i=1:sum(saiz)
        c_fa(i)=a22(i);
        c_sa(i)=S(i);
        
        [sa,sai]=size(c_fa);
        abn=1;
        for ia=1:sai
            if c_fa(:,abn)==0
                c_fa(:,abn)=[];
                abn=abn-1;
            end
            abn=abn+1;
        end
        [sa2,sai2]=size(c_sa);
        abb=1;
        for ib=1:sai2
            if c_sa(:,abb)==0
                c_sa(:,abb)=[];
                abb=abb-1;
            end
            abb=abb+1;
        end
        F31a=[c_fa'];
        
      

        
%               for ij=1:section*nSpan
%           
%             noft(ij+1)=noft(ij)+1;
%               end
%       
% %                    F31=[nmn(i,:)'  F31];
% 
% %     colNames={'TowerType','Span','-3deg','2 deg','7deg','12deg','17deg','22deg','27deg','32deg','37deg','42deg','47deg','52deg'};
% 
%           ss=i*ones(1,nSpan);
%            F31=[ss' (noft((i-1)*nSpan+1:i*nSpan))' nmn(i,:)'  F31];
% 
%     colNames={'Section','Tower','TowerType','Span','Parameter'};
%  %     colNames={'TowerType','Span','faverite temp'};
% 
% 
%             fd=figure('Position',[200 500 420 200]);
%             dat=[F31];
% %             colNames={'Sag'};
%            
% 
%                 rowNames=[];
%          
%             
%             t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
%                 'ColumnWidth',{'auto'},'Position',[20 20 480 150]);
%         
    end

%     
%        %     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% %     %%%%%%%%%%%%%%%%%%%%%%%%  phase distance
  
rr=0;
c_fd=zeros(sum(saiz),1);
c_sd=zeros(sum(saiz),1);
phase_distanc1=phase_distance';
phase_distanc=phase_distanc1(:);
    aE=1;
    jm=noft;
    for i=1:sum(saiz)
        rr=rr+1;
        c_fd(rr)= phase_distanc(i);
        c_sd(rr)=S1(i);
        
        [sa,sai]=size(c_fd);
        abn=1;
        for ia=1:sai
            if c_fd(:,abn)==0
                c_fd(:,abn)=[];
                abn=abn-1;
            end
            abn=abn+1;
        end
        [sa2,sai2]=size(c_sd);
        abb=1;
        for ib=1:sai2
            if c_sd(:,abb)==0
                c_sd(:,abb)=[];
                abb=abb-1;
            end
            abb=abb+1;
        end
        F31d=[c_fd'];
       
    end
%     mnmp=repmat(nmnType,4,1);
            for ij=1:sum(saiz)
          
            noft(ij+1)=noft(ij)+1;
            end
            
            k=0;
      for i=1:section
          for jj=1:saiz(i)
              k=k+1;
              aa(k)=i;
          end
      end
      
      ss=[aa]';
          nmna=nmn;
    nmnType=nmna(:);
 [ssa2,ssai2]=size(nmnType);
        abbb=1;
        for ib=1:length(nmnType)
            if nmnType{ib}=='0'
                nmnType(ib)=[];
%                 abbb=abbb-1;
            end
     
%             abbb=abbb+1;
        end
            
F311=[F31 F31T' F31d' F31a'];
ss1={ss};
noft1={noft};
F3111={F311};
F31new={ss noft(1:end-1)' nmnType F311};

F311new=(F31new);

fd=figure('Position',[200 500 800 200]);
data1=F311new{1};
data2=F311new{2};
data3=F311new{3};
data4=F311new{4};
dat=[data1 data2 data2+1 data4];
                           
  colNames={'Section','Tower|start','Tower|end','Span','Sag','Tension','Phase Distance','Parameter'};

                rowNames=[];
         
 t = uitable('Data', dat,... 
            'ColumnName', colNames,...
               'RowName', rowNames,...
               'ColumnWidth',{'auto'},'Position',[20 20 680 150]);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%% end of one temprature %%%%%%
  end
