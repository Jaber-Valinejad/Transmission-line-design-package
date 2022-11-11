function varargout = GUIrepYes(varargin)
% GUIREPYES MATLAB code for GUIrepYes.fig
%      GUIREPYES, by itself, creates a new GUIREPYES or raises the existing
%      singleton*.
%
%      H = GUIREPYES returns the handle to a new GUIREPYES or the handle to
%      the existing singleton*.
%
%      GUIREPYES('CALLBACK',hObject,eventData,handles5,...) calls the local
%      function named CALLBACK in GUIREPYES.M with the given input arguments.
%
%      GUIREPYES('Property','Value',...) creates a new GUIREPYES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIrepYes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIrepYes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIhandles5

% Edit the above text to modify the response to help GUIrepYes

% Last Modified by GUIDE v2.5 28-May-2015 01:10:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIrepYes_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIrepYes_OutputFcn, ...
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


% --- Executes just before GUIrepYes is made visible.
function GUIrepYes_OpeningFcn(hObject, eventdata, handles5, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    structure with handles5 and user data (see GUIDATA)
% varargin   command line arguments to GUIrepYes (see VARARGIN)

% Choose default command line output for GUIrepYes
handles5.output = hObject;

% Update handles5 structure
guidata(hObject, handles5);

% UIWAIT makes GUIrepYes wait for user response (see UIRESUME)
% uiwait(handles5.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIrepYes_OutputFcn(hObject, eventdata, handles5) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    structure with handles5 and user data (see GUIDATA)

% Get default command line output from handles5 structure
varargout{1} = handles5.output;



function TR11_Callback(hObject, eventdata, handles5)
% hObject    handle to TR11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    structure with handles5 and user data (see GUIDATA)
T_R1=eval(get(handles5.TR11,'string'));
% Hints: get(hObject,'String') returns contents of TR11 as text
%        str2double(get(hObject,'String')) returns contents of TR11 as a double


% --- Executes during object creation, after setting all properties.
function TR11_CreateFcn(hObject, eventdata, handles5)
% hObject    handle to TR11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    empty - handles5 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i11_Callback(hObject, eventdata, handles5)
% hObject    handle to i11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    structure with handles5 and user data (see GUIDATA)
i1=eval(get(handles5.i11,'string'));
% Hints: get(hObject,'String') returns contents of i11 as text
%        str2double(get(hObject,'String')) returns contents of i11 as a double


% --- Executes during object creation, after setting all properties.
function i11_CreateFcn(hObject, eventdata, handles5)
% hObject    handle to i11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    empty - handles5 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pwwww_Callback(hObject, eventdata, handles5)
% hObject    handle to Pwwww (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    structure with handles5 and user data (see GUIDATA)
P_www=eval(get(handles5.Pwwww,'string'));
% Hints: get(hObject,'String') returns contents of Pwwww as text
%        str2double(get(hObject,'String')) returns contents of Pwwww as a double


% --- Executes during object creation, after setting all properties.
function Pwwww_CreateFcn(hObject, eventdata, handles5)
% hObject    handle to Pwwww (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    empty - handles5 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles5)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles5    structure with handles5 and user data (see GUIDATA)
i1=eval(get(handles5.i11,'string'));
T_R1=eval(get(handles5.TR11,'string'));
P_www=eval(get(handles5.Pwwww,'string'));
handles5.kp2_gui_handle %this is the handle to the main gui.
close(handles5.figure1);
%%
save T_R1
save i1
save P_www
% %Now we're in a subgui function.
% % handles5.variable %without the semicolon it will print out whatever's in handles5.variable
% %this was set by the main gui.
% 
% handles5.kp2_gui_handle %this contains the handle to the main gui, obtained without calling OpeningFcn.
% kp2_gui_data_handle5=guidata(handles5.kp2_gui_handle); %get handle to main gui's handles5 variable
% 
% kp2_gui_data_handle5.variable2='passed to kp2 gui'; %passed to main gui's handles5.
% repYES=handles5;
% % guidata(handles5.output, kp2_gui_data_handle); %update main_gui's handles5
