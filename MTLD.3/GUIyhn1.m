function varargout = GUIyhn1(varargin)
% GUIYHN1 MATLAB code for GUIyhn1.fig
%      GUIYHN1, by itself, creates a new GUIYHN1 or raises the existing
%      singleton*.
%
%      H = GUIYHN1 returns the handle to a new GUIYHN1 or the handle to
%      the existing singleton*.
%
%      GUIYHN1('CALLBACK',hObject,eventData,handles7,...) calls the local
%      function named CALLBACK in GUIYHN1.M with the given input arguments.
%
%      GUIYHN1('Property','Value',...) creates a new GUIYHN1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIyhn1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIyhn1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIhandles7

% Edit the above text to modify the response to help GUIyhn1

% Last Modified by GUIDE v2.5 08-May-2015 12:53:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIyhn1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIyhn1_OutputFcn, ...
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


% --- Executes just before GUIyhn1 is made visible.
function GUIyhn1_OpeningFcn(hObject, eventdata, handles7, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles7    structure with handles7 and user data (see GUIDATA)
% varargin   command line arguments to GUIyhn1 (see VARARGIN)

% Choose default command line output for GUIyhn1
handles7.output = hObject;

% Update handles7 structure
guidata(hObject, handles7);

% UIWAIT makes GUIyhn1 wait for user response (see UIRESUME)
% uiwait(handles7.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIyhn1_OutputFcn(hObject, eventdata, handles7) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles7    structure with handles7 and user data (see GUIDATA)

% Get default command line output from handles7 structure
varargout{1} = handles7.output;


% --- Executes on selection change in tctt.
function tctt_Callback(hObject, eventdata, handles7)
% hObject    handle to tctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles7    structure with handles7 and user data (see GUIDATA)
tct=get(handles7.tctt,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tctt contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tctt
%now you want to get the passed variable out of handles7
handles7.kp2_gui_handle %this is the handle to the main gui.

% --- Executes during object creation, after setting all properties.
function tctt_CreateFcn(hObject, eventdata, handles7)
% hObject    handle to tctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles7    empty - handles7 not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles7)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles7    structure with handles7 and user data (see GUIDATA)
tct=get(handles7.tctt,'value');
%now you want to get the passed variable out of handles7
handles7.kp2_gui_handle %this is the handle to the main gui.
close(handles7.figure1);
%%
save tct
% %Now we're in a subgui function.
% % handles7.variable %without the semicolon it will print out whatever's in handles7.variable
% %this was set by the main gui.
% 
% handles7.kp2_gui_handle %this contains the handle to the main gui, obtained without calling OpeningFcn.
% kp2_gui_data_handle7=guidata(handles7.kp2_gui_handle); %get handle to main gui's handles7 variable
% 
% kp2_gui_data_handle7.variable2='passed to kp2 gui'; %passed to main gui's handles7.
% GUIyhnnn=handles7;
% % guidata(handles7.output, kp2_gui_data_handle); %update main_gui's handles7
