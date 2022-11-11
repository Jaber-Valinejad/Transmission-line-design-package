function varargout = GUII2(varargin)
% GUII2 MATLAB code for GUII2.fig
%      GUII2, by itself, creates a new GUII2 or raises the existing
%      singleton*.
%
%      H = GUII2 returns the handle to a new GUII2 or the handle to
%      the existing singleton*.
%
%      GUII2('CALLBACK',hObject,eventData,handles3,...) calls the local
%      function named CALLBACK in GUII2.M with the given input arguments.
%
%      GUII2('Property','Value',...) creates a new GUII2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUII2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUII2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIhandles3

% Edit the above text to modify the response to help GUII2

% Last Modified by GUIDE v2.5 08-May-2015 12:52:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUII2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUII2_OutputFcn, ...
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


% --- Executes just before GUII2 is made visible.
function GUII2_OpeningFcn(hObject, eventdata, handles3, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles3    structure with handles3 and user data (see GUIDATA)
% varargin   command line arguments to GUII2 (see VARARGIN)

% Choose default command line output for GUII2
handles3.output = hObject;

% Update handles3 structure
guidata(hObject, handles3);

% UIWAIT makes GUII2 wait for user response (see UIRESUME)
% uiwait(handles3.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUII2_OutputFcn(hObject, eventdata, handles3) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles3    structure with handles3 and user data (see GUIDATA)

% Get default command line output from handles3 structure
varargout{1} = handles3.output;


% --- Executes on selection change in ctt.
function ctt_Callback(hObject, eventdata, handles3)
% hObject    handle to ctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles3    structure with handles3 and user data (see GUIDATA)
ct=get(handles3.ctt,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns ctt contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ctt


% --- Executes during object creation, after setting all properties.
function ctt_CreateFcn(hObject, eventdata, handles3)
% hObject    handle to ctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles3    empty - handles3 not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles3)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles3    structure with handles3 and user data (see GUIDATA)
% delete('G:\aMATLAB PROJECT\simulation\peroject\GUI\*.mat')
ct=get(handles3.ctt,'value');
%now you want to get the passed variable out of handles3
handles3.kp2_gui_handle %this is the handle to the main gui.
close(handles3.figure1);
%%
save ct
%Now we're in a subgui function.
% handles3.variable %without the semicolon it will print out whatever's in handles3.variable
%this was set by the main gui.

% handles3.kp2_gui_handle %this contains the handle to the main gui, obtained without calling OpeningFcn.
% kp2_gui_data_handle3=guidata(handles3.kp2_guiI22_handle); %get handle to main gui's handles3 variable
% 
% kp2_gui_data_handle3.variable2='passed to kp2 gui'; %passed to main gui's handles3.
% GUII22=handles3;
% guidata(handles3.output, kp2_gui_data_handle); %update main_gui's handles3
