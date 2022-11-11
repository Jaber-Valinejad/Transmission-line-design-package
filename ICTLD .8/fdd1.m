function varargout = fdd1(varargin)
% FDD1 MATLAB code for fdd1.fig
%      FDD1, by itself, creates a new FDD1 or raises the existing
%      singleton*.
%
%      H = FDD1 returns the handle to a new FDD1 or the handle to
%      the existing singleton*.
%
%      FDD1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FDD1.M with the given input arguments.
%
%      FDD1('Property','Value',...) creates a new FDD1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fdd1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fdd1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fdd1

% Last Modified by GUIDE v2.5 25-May-2015 01:03:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fdd1_OpeningFcn, ...
                   'gui_OutputFcn',  @fdd1_OutputFcn, ...
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


% --- Executes just before fdd1 is made visible.
function fdd1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fdd1 (see VARARGIN)

% Choose default command line output for fdd1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fdd1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fdd1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kindd=(get(handles. kinddd,'string'));
D_a=str2double(get(handles. D_aa,'string'));
L_i=str2double(get(handles. L_ii,'string'));
l_e_i=str2double(get(handles. l_e_ii,'string'));
g12=get(handles.g122,'value');
weight=str2double(get(handles. weightt,'string'));

save g12
save kindd
save D_a
save L_i
save l_e_i
save weight
if  g12==2
    m=.5;
else
    m=.8;
end
save m
% close(handles.figure1);

function kinddd_Callback(hObject, eventdata, handles)
% hObject    handle to kinddd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kindd=str2double(get(handles. kinddd,'string'));
% Hints: get(hObject,'String') returns contents of kinddd as text
%        str2double(get(hObject,'String')) returns contents of kinddd as a double


% --- Executes during object creation, after setting all properties.
function kinddd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kinddd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_aa_Callback(hObject, eventdata, handles)
% hObject    handle to D_aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
D_a=str2double(get(handles. D_aa,'string'));
% Hints: get(hObject,'String') returns contents of D_aa as text
%        str2double(get(hObject,'String')) returns contents of D_aa as a double


% --- Executes during object creation, after setting all properties.
function D_aa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D_aa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_ii_Callback(hObject, eventdata, handles)
% hObject    handle to L_ii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L_i=str2double(get(handles. L_ii,'string'));
% Hints: get(hObject,'String') returns contents of L_ii as text
%        str2double(get(hObject,'String')) returns contents of L_ii as a double


% --- Executes during object creation, after setting all properties.
function L_ii_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L_ii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_ii_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_ii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
l_e_i=str2double(get(handles. l_e_ii,'string'));
% Hints: get(hObject,'String') returns contents of l_e_ii as text
%        str2double(get(hObject,'String')) returns contents of l_e_ii as a double


% --- Executes during object creation, after setting all properties.
function l_e_ii_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_ii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function weightt_Callback(hObject, eventdata, handles)
% hObject    handle to weightt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
weight=str2double(get(handles. weightt,'string'));
% Hints: get(hObject,'String') returns contents of weightt as text
%        str2double(get(hObject,'String')) returns contents of weightt as a double


% --- Executes during object creation, after setting all properties.
function weightt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to weightt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in g122.
function g122_Callback(hObject, eventdata, handles)
% hObject    handle to g122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g12=get(handles.g122,'string');
% Hints: contents = cellstr(get(hObject,'String')) returns g122 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from g122


% --- Executes during object creation, after setting all properties.
function g122_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
