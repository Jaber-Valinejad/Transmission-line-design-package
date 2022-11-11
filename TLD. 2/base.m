function varargout = base(varargin)
% BASE MATLAB code for base.fig
%      BASE, by itself, creates a new BASE or raises the existing
%      singleton*.
%
%      H = BASE returns the handle to a new BASE or the handle to
%      the existing singleton*.
%
%      BASE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BASE.M with the given input arguments.
%
%      BASE('Property','Value',...) creates a new BASE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before base_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to base_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help base

% Last Modified by GUIDE v2.5 01-Dec-2014 22:15:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @base_OpeningFcn, ...
                   'gui_OutputFcn',  @base_OutputFcn, ...
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


% --- Executes just before base is made visible.
function base_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to base (see VARARGIN)

% Choose default command line output for base
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes base wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = base_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function KP_Callback(hObject, eventdata, handles)
% hObject    handle to KP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb2.
function pb2_Callback(hObject, eventdata, handles)
% hObject    handle to pb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb3.
function pb3_Callback(hObject, eventdata, handles)
% hObject    handle to pb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb4.
function pb4_Callback(hObject, eventdata, handles)
% hObject    handle to pb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb5.
function pb5_Callback(hObject, eventdata, handles)
% hObject    handle to pb5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb6.
function pb6_Callback(hObject, eventdata, handles)
% hObject    handle to pb6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb7.
function pb7_Callback(hObject, eventdata, handles)
% hObject    handle to pb7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
