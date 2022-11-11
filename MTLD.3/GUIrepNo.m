function varargout = GUIrepNo(varargin)
% GUIREPNO MATLAB code for GUIrepNo.fig
%      GUIREPNO, by itself, creates a new GUIREPNO or raises the existing
%      singleton*.
%
%      H = GUIREPNO returns the handle to a new GUIREPNO or the handle to
%      the existing singleton*.
%
%      GUIREPNO('CALLBACK',hObject,eventData,handles4,...) calls the local
%      function named CALLBACK in GUIREPNO.M with the given input arguments.
%
%      GUIREPNO('Property','Value',...) creates a new GUIREPNO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIrepNo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIrepNo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIhandles4

% Edit the above text to modify the response to help GUIrepNo

% Last Modified by GUIDE v2.5 28-May-2015 01:09:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIrepNo_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIrepNo_OutputFcn, ...
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


% --- Executes just before GUIrepNo is made visible.
function GUIrepNo_OpeningFcn(hObject, eventdata, handles4, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
% varargin   command line arguments to GUIrepNo (see VARARGIN)

% Choose default command line output for GUIrepNo
handles4.output = hObject;

% Update handles4 structure
guidata(hObject, handles4);

% UIWAIT makes GUIrepNo wait for user response (see UIRESUME)
% uiwait(handles4.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIrepNo_OutputFcn(hObject, eventdata, handles4) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)

% Get default command line output from handles4 structure
varargout{1} = handles4.output;



function TR111_Callback(hObject, eventdata, handles4)
% hObject    handle to TR111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
T_R11=eval(get(handles4.TR111,'string')); % satre aval ro misaze
% Hints: get(hObject,'String') returns contents of TR111 as text
%        str2double(get(hObject,'String')) returns contents of TR111 as a double


% --- Executes during object creation, after setting all properties.
function TR111_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to TR111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i111_Callback(hObject, eventdata, handles4)
% hObject    handle to i111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
i11=eval(get(handles4.i111,'string'));
% Hints: get(hObject,'String') returns contents of i111 as text
%        str2double(get(hObject,'String')) returns contents of i111 as a double


% --- Executes during object creation, after setting all properties.
function i111_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to i111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pwww111_Callback(hObject, eventdata, handles4)
% hObject    handle to Pwww111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
P_www11=eval(get(handles4.Pwww111,'string'));
% Hints: get(hObject,'String') returns contents of Pwww111 as text
%        str2double(get(hObject,'String')) returns contents of Pwww111 as a double


% --- Executes during object creation, after setting all properties.
function Pwww111_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to Pwww111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TR112_Callback(hObject, eventdata, handles4)
% hObject    handle to TR112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
T_R12=eval(get(handles4.TR112,'string'));
% Hints: get(hObject,'String') returns contents of TR112 as text
%        str2double(get(hObject,'String')) returns contents of TR112 as a double


% --- Executes during object creation, after setting all properties.
function TR112_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to TR112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i112_Callback(hObject, eventdata, handles4)
% hObject    handle to i112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
i12=eval(get(handles4.i112,'string'));
% Hints: get(hObject,'String') returns contents of i112 as text
%        str2double(get(hObject,'String')) returns contents of i112 as a double


% --- Executes during object creation, after setting all properties.
function i112_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to i112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pwww22_Callback(hObject, eventdata, handles4)
% hObject    handle to Pwww22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
P_www22=eval(get(handles4.Pwww22,'string'));
% Hints: get(hObject,'String') returns contents of Pwww22 as text
%        str2double(get(hObject,'String')) returns contents of Pwww22 as a double


% --- Executes during object creation, after setting all properties.
function Pwww22_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to Pwww22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TR113_Callback(hObject, eventdata, handles4)
% hObject    handle to TR113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
T_R13=eval(get(handles4.TR113,'string')); 
% Hints: get(hObject,'String') returns contents of TR113 as text
%        str2double(get(hObject,'String')) returns contents of TR113 as a double


% --- Executes during object creation, after setting all properties.
function TR113_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to TR113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i113_Callback(hObject, eventdata, handles4)
% hObject    handle to i113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
i13=eval(get(handles4.i113,'string'));
% Hints: get(hObject,'String') returns contents of i113 as text
%        str2double(get(hObject,'String')) returns contents of i113 as a double


% --- Executes during object creation, after setting all properties.
function i113_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to i113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pwww33_Callback(hObject, eventdata, handles4)
% hObject    handle to Pwww33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
P_www33=eval(get(handles4.Pwww33,'string'));
% Hints: get(hObject,'String') returns contents of Pwww33 as text
%        str2double(get(hObject,'String')) returns contents of Pwww33 as a double


% --- Executes during object creation, after setting all properties.
function Pwww33_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to Pwww33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TR114_Callback(hObject, eventdata, handles4)
% hObject    handle to TR114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
T_R14=eval(get(handles4.TR114,'string')); 
% Hints: get(hObject,'String') returns contents of TR114 as text
%        str2double(get(hObject,'String')) returns contents of TR114 as a double


% --- Executes during object creation, after setting all properties.
function TR114_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to TR114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i114_Callback(hObject, eventdata, handles4)
% hObject    handle to i114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
i14=eval(get(handles4.i114,'string'));
% Hints: get(hObject,'String') returns contents of i114 as text
%        str2double(get(hObject,'String')) returns contents of i114 as a double


% --- Executes during object creation, after setting all properties.
function i114_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to i114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pwww44_Callback(hObject, eventdata, handles4)
% hObject    handle to Pwww44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
P_www44=eval(get(handles4.Pwww44,'string'));
% Hints: get(hObject,'String') returns contents of Pwww44 as text
%        str2double(get(hObject,'String')) returns contents of Pwww44 as a double


% --- Executes during object creation, after setting all properties.
function Pwww44_CreateFcn(hObject, eventdata, handles4)
% hObject    handle to Pwww44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    empty - handles4 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles4)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles4    structure with handles4 and user data (see GUIDATA)
T_R11=eval(get(handles4.TR111,'string'));
i11=eval(get(handles4.i111,'string'));
P_www11=eval(get(handles4.Pwww111,'string'));

T_R12=eval(get(handles4.TR112,'string'));
i12=eval(get(handles4.i112,'string'));
P_www22=eval(get(handles4.Pwww22,'string'));

T_R13=eval(get(handles4.TR113,'string')); 
i13=eval(get(handles4.i113,'string'));
P_www33=eval(get(handles4.Pwww33,'string'));

T_R14=eval(get(handles4.TR114,'string')); 
i14=eval(get(handles4.i114,'string'));
P_www44=eval(get(handles4.Pwww44,'string'));

handles4.kp2_gui_handle %this is the handle to the main gui.
close(handles4.figure1);
%%
%Now we're in a subgui function.
% handles4.variable %without the semicolon it will print out whatever's in handles4.variable
%this was set by the main gui.
save T_R11
save i11
save P_www11

save T_R12
save i12
save P_www22

save T_R13
save i13
save P_www33

save T_R14
save i14
save P_www44
% handles4.kp2_gui_handle %this contains the handle to the main gui, obtained without calling OpeningFcn.
% kp2_gui_data_handle4=guidata(handles4.kp2_gui_handle); %get handle to main gui's handles4 variable
% 
% kp2_gui_data_handle4.variable2='passed to kp2 gui'; %passed to main gui's handles4.
% repNOO=handles4;
% % guidata(handles4.output, kp2_gui_data_handle); %update main_gui's handles4
