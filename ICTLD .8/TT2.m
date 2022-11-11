function varargout = TT2(varargin)
% TT2 MATLAB code for TT2.fig
%      TT2, by itself, creates a new TT2 or raises the existing
%      singleton*.
%
%      H = TT2 returns the handle to a new TT2 or the handle to
%      the existing singleton*.
%
%      TT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TT2.M with the given input arguments.
%
%      TT2('Property','Value',...) creates a new TT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TT2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TT2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TT2

% Last Modified by GUIDE v2.5 16-May-2015 11:15:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TT2_OpeningFcn, ...
                   'gui_OutputFcn',  @TT2_OutputFcn, ...
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


% --- Executes just before TT2 is made visible.
function TT2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TT2 (see VARARGIN)

% Choose default command line output for TT2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TT2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TT2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function T_hh_Callback(hObject, eventdata, handles)
% hObject    handle to T_hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T_h=str2double(get(handles.T_hh,'string'));
% Hints: get(hObject,'String') returns contents of T_hh as text
%        str2double(get(hObject,'String')) returns contents of T_hh as a double


% --- Executes during object creation, after setting all properties.
function T_hh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_hh (see GCBO)
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
T_h=str2double(get(handles.T_hh,'string'));
save T_h
close(handles.figure1);