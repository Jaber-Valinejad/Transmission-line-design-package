function varargout = GUIF(varargin)
% GUIF MATLAB code for GUIF.fig
%      GUIF, by itself, creates a new GUIF or raises the existing
%      singleton*.
%
%      H = GUIF returns the handle to a new GUIF or the handle to
%      the existing singleton*.
%
%      GUIF('CALLBACK',hObject,eventData,handles1,...) calls the local
%      function named CALLBACK in GUIF.M with the given input arguments.
%
%      GUIF('Property','Value',...) creates a new GUIF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIF_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIF_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIhandles1

% Edit the above text to modify the response to help GUIF

% Last Modified by GUIDE v2.5 08-May-2015 12:54:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIF_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIF_OutputFcn, ...
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


% --- Executes just before GUIF is made visible.
function GUIF_OpeningFcn(hObject, eventdata, handles1, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    structure with handles1 and user data (see GUIDATA)
% varargin   command line arguments to GUIF (see VARARGIN)

% Choose default command line output for GUIF
handles1.output = hObject;

% Update handles1 structure
guidata(hObject, handles1);

% UIWAIT makes GUIF wait for user response (see UIRESUME)
% uiwait(handles1.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIF_OutputFcn(hObject, eventdata, handles1) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    structure with handles1 and user data (see GUIDATA)

% Get default command line output from handles1 structure
varargout{1} = handles1.output;



function FF_Callback(hObject, eventdata, handles1)
% hObject    handle to FF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    structure with handles1 and user data (see GUIDATA)
F=eval(get(handles1.FF,'string'));
% Hints: get(hObject,'String') returns contents of FF as text
%        str2double(get(hObject,'String')) returns contents of FF as a double


% --- Executes during object creation, after setting all properties.
function FF_CreateFcn(hObject, eventdata, handles1)
% hObject    handle to FF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    empty - handles1 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TR11_Callback(hObject, eventdata, handles1)
% hObject    handle to TR11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    structure with handles1 and user data (see GUIDATA)
T_R1=str2double(get(handles1.TR11,'string'));
% Hints: get(hObject,'String') returns contents of TR11 as text
%        str2double(get(hObject,'String')) returns contents of TR11 as a double


% --- Executes during object creation, after setting all properties.
function TR11_CreateFcn(hObject, eventdata, handles1)
% hObject    handle to TR11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    empty - handles1 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i11_Callback(hObject, eventdata, handles1)
% hObject    handle to i11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    structure with handles1 and user data (see GUIDATA)
i1=str2double(get(handles1.i11,'string'));
% Hints: get(hObject,'String') returns contents of i11 as text
%        str2double(get(hObject,'String')) returns contents of i11 as a double


% --- Executes during object creation, after setting all properties.
function i11_CreateFcn(hObject, eventdata, handles1)
% hObject    handle to i11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    empty - handles1 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pwwww_Callback(hObject, eventdata, handles1)
% hObject    handle to Pwwww (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    structure with handles1 and user data (see GUIDATA)
P_www=str2double(get(handles1.Pwwww,'string'));
% Hints: get(hObject,'String') returns contents of Pwwww as text
%        str2double(get(hObject,'String')) returns contents of Pwwww as a double


% --- Executes during object creation, after setting all properties.
function Pwwww_CreateFcn(hObject, eventdata, handles1)
% hObject    handle to Pwwww (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    empty - handles1 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles1)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles1    structure with handles1 and user data (see GUIDATA)
F=eval(get(handles1.FF,'string'));
T_R1=str2double(get(handles1.TR11,'string'));
i1=str2double(get(handles1.i11,'string'));
P_www=str2double(get(handles1.Pwwww,'string'));
%now you want to get the passed variable out of handles1
handles1.kp2_gui_handle %this is the handle to the main gui.
close(handles1.figure1);
%%
save F
save T_R1
save i1
save P_www
%Now we're in a subgui function.
% handles1.variable %without the semicolon it will print out whatever's in handles1.variable
%this was set by the main gui.

% handles1.kp2_gui_handle %this contains the handle to the main gui, obtained without calling OpeningFcn.
% kp2_gui_data_handle1=guidata(handles1.kp2_gui_handle); %get handle to main gui's handles1 variable
% 
% kp2_gui_data_handle1.variable2='passed to kp2 gui'; %passed to main gui's handles1.
% GUIFF=handles1;
% % guidata(handles1.output, kp2_gui_data_handle); %update main_gui's handles1
