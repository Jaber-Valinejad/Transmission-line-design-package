function varargout = GUISF(varargin)
% GUISF MATLAB code for GUISF.fig
%      GUISF, by itself, creates a new GUISF or raises the existing
%      singleton*.
%
%      H = GUISF returns the handle to a new GUISF or the handle to
%      the existing singleton*.
%
%      GUISF('CALLBACK',hObject,eventData,handles6,...) calls the local
%      function named CALLBACK in GUISF.M with the given input arguments.
%
%      GUISF('Property','Value',...) creates a new GUISF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUISF_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUISF_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIhandles6

% Edit the above text to modify the response to help GUISF

% Last Modified by GUIDE v2.5 08-May-2015 12:54:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUISF_OpeningFcn, ...
                   'gui_OutputFcn',  @GUISF_OutputFcn, ...
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


% --- Executes just before GUISF is made visible.
function GUISF_OpeningFcn(hObject, eventdata, handles6, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles6    structure with handles6 and user data (see GUIDATA)
% varargin   command line arguments to GUISF (see VARARGIN)

% Choose default command line output for GUISF
handles6.output = hObject;

% Update handles6 structure
guidata(hObject, handles6);

% UIWAIT makes GUISF wait for user response (see UIRESUME)
% uiwait(handles6.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUISF_OutputFcn(hObject, eventdata, handles6) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles6    structure with handles6 and user data (see GUIDATA)

% Get default command line output from handles6 structure
varargout{1} = handles6.output;



function SFF_Callback(hObject, eventdata, handles6)
% hObject    handle to SFF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles6    structure with handles6 and user data (see GUIDATA)
SF=eval(get(handles6.SFF,'string'));
% Hints: get(hObject,'String') returns contents of SFF as text
%        str2double(get(hObject,'String')) returns contents of SFF as a double


% --- Executes during object creation, after setting all properties.
function SFF_CreateFcn(hObject, eventdata, handles6)
% hObject    handle to SFF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles6    empty - handles6 not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in reponcc.
function reponcc_Callback(hObject, eventdata, handles6)
% hObject    handle to reponcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles6    structure with handles6 and user data (see GUIDATA)
reponc=get(handles6.reponcc,'value');
if reponc==1
    GUIrepYes_handle=GUIrepYes; %opens the subgui
    GUIrepYes_data_handle=guidata(GUIrepYes_handle); %points to the handles6 of the subgui
    GUIrepYes_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui
    guidata(GUIrepYes_handle, GUIrepYes_data_handle); %update subgui's handles6
elseif reponc==2
    GUIrepNo_handle=GUIrepNo; %opens the subgui
    GUIrepNo_data_handle=guidata(GUIrepNo_handle); %points to the handles6 of the subgui
    GUIrepNo_data_handle.kp2_gui_handle=hObject; %hObject=handle to main gui
    guidata(GUIrepNo_handle, GUIrepNo_data_handle); %update subgui's handles6
end
% Hints: contents = cellstr(get(hObject,'String')) returns reponcc contents as cell array
%        contents{get(hObject,'Value')} returns selected item from reponcc


% --- Executes during object creation, after setting all properties.
function reponcc_CreateFcn(hObject, eventdata, handles6)
% hObject    handle to reponcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles6    empty - handles6 not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles6)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles6    structure with handles6 and user data (see GUIDATA)
reponc=get(handles6.reponcc,'value');
SF=eval(get(handles6.SFF,'string'));
%now you want to get the passed variable out of handles6
handles6.kp2_gui_handle %this is the handle to the main gui.
close(handles6.figure1);
%%
save reponc
save SF
% %Now we're in a subgui function.
% % handles6.variable %without the semicolon it will print out whatever's in handles6.variable
% %this was set by the main gui.
% 
% handles6.kp2_gui_handle %this contains the handle to the main gui, obtained without calling OpeningFcn.
% kp2_gui_data_handle6=guidata(handles6.kp2_gui_handle); %get handle to main gui's handles6 variable
% 
% kp2_gui_data_handle6.variable2='passed to kp2 gui'; %passed to main gui's handles6.
% GUISFF=handles6;
% % guidata(handles6.output, kp2_gui_data_handle); %update main_gui's handles6
