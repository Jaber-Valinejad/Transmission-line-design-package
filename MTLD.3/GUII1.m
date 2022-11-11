function varargout = GUII1(varargin)
% GUII1 MATLAB code for GUII1.fig
%      GUII1, by itself, creates a new GUII1 or raises the existing
%      singleton*.
%
%      H = GUII1 returns the handle to a new GUII1 or the handle to
%      the existing singleton*.
%
%      GUII1('CALLBACK',hObject,eventData,handles2,...) calls the local
%      function named CALLBACK in GUII1.M with the given input arguments.
%
%      GUII1('Property','Value',...) creates a new GUII1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUII1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUII1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIhandles2

% Edit the above text to modify the response to help GUII1

% Last Modified by GUIDE v2.5 08-Apr-2015 16:54:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUII1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUII1_OutputFcn, ...
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


% --- Executes just before GUII1 is made visible.
function GUII1_OpeningFcn(hObject, eventdata, handles2, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
% varargin   command line arguments to GUII1 (see VARARGIN)

% Choose default command line output for GUII1
handles2.output = hObject;

% Update handles2 structure
guidata(hObject, handles2);

% UIWAIT makes GUII1 wait for user response (see UIRESUME)
% uiwait(handles2.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUII1_OutputFcn(hObject, eventdata, handles2) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)

% Get default command line output from handles2 structure
varargout{1} = handles2.output;


% --- Executes on selection change in ctt.
function ctt_Callback(hObject, eventdata, handles2)
% hObject    handle to ctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
ct=get(handles2.ctt,'string');
% Hints: contents = cellstr(get(hObject,'String')) returns ctt contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ctt
% global ct
% ct.GUII1.cttval=get(hObject,'string');

% --- Executes during object creation, after setting all properties.
function ctt_CreateFcn(hObject, eventdata, handles2)
% hObject    handle to ctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    empty - handles2 not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function utss_Callback(hObject, eventdata, handles2)
% hObject    handle to utss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
UTS=str2double(get(handles2.utss,'string'));
% Hints: get(hObject,'String') returns contents of utss as text
%        str2double(get(hObject,'String')) returns contents of utss as a double
% UTS.GUII1.utss=get(hObject,'string');

% --- Executes during object creation, after setting all properties.
function utss_CreateFcn(hObject, eventdata, handles2)
% hObject    handle to utss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    empty - handles2 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dd_Callback(hObject, eventdata, handles2)
% hObject    handle to dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
d=str2double(get(handles2.dd,'string'));
% Hints: get(hObject,'String') returns contents of dd as text
%        str2double(get(hObject,'String')) returns contents of dd as a double
% d.GUII1.dd=get(hObject,'string');

% --- Executes during object creation, after setting all properties.
function dd_CreateFcn(hObject, eventdata, handles2)
% hObject    handle to dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    empty - handles2 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tyuu_Callback(hObject, eventdata, handles2)
% hObject    handle to tyuu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
tyu=str2double(get(handles2.tyuu,'string'));
% Hints: get(hObject,'String') returns contents of tyuu as text
%        str2double(get(hObject,'String')) returns contents of tyuu as a double
% tyu.GUII1.tyuu=get(hObject,'string');

% --- Executes during object creation, after setting all properties.
function tyuu_CreateFcn(hObject, eventdata, handles2)
% hObject    handle to tyuu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    empty - handles2 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bvnn_Callback(hObject, eventdata, handles2)
% hObject    handle to bvnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
bvn=str2double(get(handles2.bvnn,'string'));
% Hints: get(hObject,'String') returns contents of bvnn as text
%        str2double(get(hObject,'String')) returns contents of bvnn as a double
% bvn.GUII1.bvnn=get(hObject,'string');

% --- Executes during object creation, after setting all properties.
function bvnn_CreateFcn(hObject, eventdata, handles2)
% hObject    handle to bvnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    empty - handles2 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ee_Callback(hObject, eventdata, handles2)
% hObject    handle to ee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
e=str2double(get(handles2.ee,'string'));
% Hints: get(hObject,'String') returns contents of ee as text
%        str2double(get(hObject,'String')) returns contents of ee as a double
% e.GUII1.ee=get(hObject,'string');

% --- Executes during object creation, after setting all properties.
function ee_CreateFcn(hObject, eventdata, handles2)
% hObject    handle to ee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    empty - handles2 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Aa_Callback(hObject, eventdata, handles2)
% hObject    handle to Aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
A=str2double(get(handles2.Aa,'string'));
% Hints: get(hObject,'String') returns contents of Aa as text
%        str2double(get(hObject,'String')) returns contents of Aa as a double
% A.GUII1.Aa=get(hObject,'string');

% --- Executes during object creation, after setting all properties.
function Aa_CreateFcn(hObject, eventdata, handles2)
% hObject    handle to Aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    empty - handles2 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles2)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles2    structure with handles2 and user data (see GUIDATA)
% delete('G:\aMATLAB PROJECT\simulation\peroject\GUI\*.mat')
A=str2double(get(handles2.Aa,'string'));
e=str2double(get(handles2.ee,'string'));
bvn=str2double(get(handles2.bvnn,'string'));
tyu=str2double(get(handles2.tyuu,'string'));
d=str2double(get(handles2.dd,'string'));
UTS=str2double(get(handles2.utss,'string'));
ct=get(handles2.ctt,'string');
%now you want to get the passed variable out of handles2
handles2.variable %without the semicolon it will print out whatever's in handles.variable
%this was set by the main gui.
% handles2.handle %this is the handle to the main gui.

%%
%Now we're in a subgui function.
% handles2.variable %without the semicolon it will print out whatever's in handles2.variable
%this was set by the main gui.
save A 
save e 
save bvn
save tyu
save d
save UTS
save ct
% global data1
% kp2;
% delete(handles2.GUII1_figure);
%  handles2.kp2_handle %this contains the handle to the main gui, obtained without calling OpeningFcn.
%  kp2_data_handle2=guidata(handles2.kp2_handle); %get handle to main gui's handles2 variable
% % % 
%  kp2_data_handle2.variable2='passed to kp2'; %passed to main gui's handle
% % % GUII11=handles2;
% guidata( kp2_handle,kp2_data_handle2); %update main_gui's handles2
close(handles2.figure1);
