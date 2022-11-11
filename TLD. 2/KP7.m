function varargout = KP7(varargin)
% KP7 MATLAB code for KP7.fig
%      KP7, by itself, creates a new KP7 or raises the existing
%      singleton*.
%
%      H = KP7 returns the handle to a new KP7 or the handle to
%      the existing singleton*.
%
%      KP7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KP7.M with the given input arguments.
%
%      KP7('Property','Value',...) creates a new KP7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KP7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KP7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KP7

% Last Modified by GUIDE v2.5 28-Dec-2014 22:39:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KP7_OpeningFcn, ...
                   'gui_OutputFcn',  @KP7_OutputFcn, ...
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


% --- Executes just before KP7 is made visible.
function KP7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KP7 (see VARARGIN)

% Choose default command line output for KP7
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KP7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KP7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function kk_Callback(hObject, eventdata, handles)
% hObject    handle to kk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kk as text
%        str2double(get(hObject,'String')) returns contents of kk as a double


% --- Executes during object creation, after setting all properties.
function kk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uu_Callback(hObject, eventdata, handles)
% hObject    handle to uu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uu as text
%        str2double(get(hObject,'String')) returns contents of uu as a double


% --- Executes during object creation, after setting all properties.
function uu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pp_Callback(hObject, eventdata, handles)
% hObject    handle to pp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pp as text
%        str2double(get(hObject,'String')) returns contents of pp as a double


% --- Executes during object creation, after setting all properties.
function pp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qq_Callback(hObject, eventdata, handles)
% hObject    handle to qq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qq as text
%        str2double(get(hObject,'String')) returns contents of qq as a double


% --- Executes during object creation, after setting all properties.
function qq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function taa_Callback(hObject, eventdata, handles)
% hObject    handle to taa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taa as text
%        str2double(get(hObject,'String')) returns contents of taa as a double


% --- Executes during object creation, after setting all properties.
function taa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inn_Callback(hObject, eventdata, handles)
% hObject    handle to inn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inn as text
%        str2double(get(hObject,'String')) returns contents of inn as a double


% --- Executes during object creation, after setting all properties.
function inn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ii.
function ii_Callback(hObject, eventdata, handles)
% hObject    handle to ii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ii contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ii


% --- Executes during object creation, after setting all properties.
function ii_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ii (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ncc_Callback(hObject, eventdata, handles)
% hObject    handle to ncc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Nc=str2double(get(handles.ncc,'string'));
if Nc==2
    set(handles.hh1,'string','distance between circuits a,c`(cm)')
    h=str2double(get(handles.hh,'string'));
    set(handles.h11,'string','distance between circuits b,b`(cm)')
    h1=str2double(get(handles.hhh1,'string'));
else
       set(handles.hh1,'string','-----')
       set(handles.h11,'string','-----')
end
% Hints: get(hObject,'String') returns contents of ncc as text
%        str2double(get(hObject,'String')) returns contents of ncc as a double


% --- Executes during object creation, after setting all properties.
function ncc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ncc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nss_Callback(hObject, eventdata, handles)
% hObject    handle to nss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ns=str2double(get(handles.nss,'string'));
if ns~=1 
    set(handles.ds1,'string','distance between subconductor(cm)')
    ds=str2double(get(handles.dss,'string'));
else
       set(handles.ds1,'string','-----')
end
% Hints: get(hObject,'String') returns contents of nss as text
%        str2double(get(hObject,'String')) returns contents of nss as a double


% --- Executes during object creation, after setting all properties.
function nss_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hh_Callback(hObject, eventdata, handles)
% hObject    handle to hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hh as text
%        str2double(get(hObject,'String')) returns contents of hh as a double


% --- Executes during object creation, after setting all properties.
function hh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hhh1_Callback(hObject, eventdata, handles)
% hObject    handle to hhh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hhh1 as text
%        str2double(get(hObject,'String')) returns contents of hhh1 as a double


% --- Executes during object creation, after setting all properties.
function hhh1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hhh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dss_Callback(hObject, eventdata, handles)
% hObject    handle to dss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dss as text
%        str2double(get(hObject,'String')) returns contents of dss as a double


% --- Executes during object creation, after setting all properties.
function dss_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function abb_Callback(hObject, eventdata, handles)
% hObject    handle to abb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of abb as text
%        str2double(get(hObject,'String')) returns contents of abb as a double


% --- Executes during object creation, after setting all properties.
function abb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to abb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bcc_Callback(hObject, eventdata, handles)
% hObject    handle to bcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bcc as text
%        str2double(get(hObject,'String')) returns contents of bcc as a double


% --- Executes during object creation, after setting all properties.
function bcc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function acc_Callback(hObject, eventdata, handles)
% hObject    handle to acc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of acc as text
%        str2double(get(hObject,'String')) returns contents of acc as a double


% --- Executes during object creation, after setting all properties.
function acc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cc_Callback(hObject, eventdata, handles)
% hObject    handle to cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cc as text
%        str2double(get(hObject,'String')) returns contents of cc as a double


% --- Executes during object creation, after setting all properties.
function cc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ll1_Callback(hObject, eventdata, handles)
% hObject    handle to ll1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ll1 as text
%        str2double(get(hObject,'String')) returns contents of ll1 as a double


% --- Executes during object creation, after setting all properties.
function ll1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ll1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BB_Callback(hObject, eventdata, handles)
% hObject    handle to BB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BB as text
%        str2double(get(hObject,'String')) returns contents of BB as a double


% --- Executes during object creation, after setting all properties.
function BB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nn_Callback(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nn as text
%        str2double(get(hObject,'String')) returns contents of nn as a double


% --- Executes during object creation, after setting all properties.
function nn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gg2_Callback(hObject, eventdata, handles)
% hObject    handle to gg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gg2 as text
%        str2double(get(hObject,'String')) returns contents of gg2 as a double


% --- Executes during object creation, after setting all properties.
function gg2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xx_Callback(hObject, eventdata, handles)
% hObject    handle to xx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xx as text
%        str2double(get(hObject,'String')) returns contents of xx as a double


% --- Executes during object creation, after setting all properties.
function xx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xx11_Callback(hObject, eventdata, handles)
% hObject    handle to xx11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xx11 as text
%        str2double(get(hObject,'String')) returns contents of xx11 as a double


% --- Executes during object creation, after setting all properties.
function xx11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xx11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZZ1_Callback(hObject, eventdata, handles)
% hObject    handle to ZZ1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZZ1 as text
%        str2double(get(hObject,'String')) returns contents of ZZ1 as a double


% --- Executes during object creation, after setting all properties.
function ZZ1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZZ1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DEL_Callback(hObject, eventdata, handles)
% hObject    handle to DEL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DEL as text
%        str2double(get(hObject,'String')) returns contents of DEL as a double


% --- Executes during object creation, after setting all properties.
function DEL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DEL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pnn_Callback(hObject, eventdata, handles)
% hObject    handle to pnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pnn as text
%        str2double(get(hObject,'String')) returns contents of pnn as a double


% --- Executes during object creation, after setting all properties.
function pnn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PLL_Callback(hObject, eventdata, handles)
% hObject    handle to PLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PLL as text
%        str2double(get(hObject,'String')) returns contents of PLL as a double


% --- Executes during object creation, after setting all properties.
function PLL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ppnn_Callback(hObject, eventdata, handles)
% hObject    handle to ppnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ppnn as text
%        str2double(get(hObject,'String')) returns contents of ppnn as a double


% --- Executes during object creation, after setting all properties.
function ppnn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ppnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uu111_Callback(hObject, eventdata, handles)
% hObject    handle to uu111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uu111 as text
%        str2double(get(hObject,'String')) returns contents of uu111 as a double


% --- Executes during object creation, after setting all properties.
function uu111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uu111 (see GCBO)
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
F=50;  %System Ferqency (HZ)
ab=str2double(get(handles.abb,'string'));%input('  distance between phase a,b(cm)=');%distance line (cm)
bc=str2double(get(handles.bcc,'string'));% input('  distance between phase b,c(cm)=');%distance line (cm)
ac=str2double(get(handles.acc,'string'));%input('  distance between phase a,c(cm)=');%distance line (cm)
K=str2double(get(handles.kk,'string'));%input('  length of line(km)=');%line length (km)
U=str2double(get(handles.uu,'string'));%input('  line voltage(kv)=');%voltage line
P=str2double(get(handles.pp,'string'));%input('  active power(MW)=');%active power line
QL=str2double(get(handles.qq,'string'));%input(' initial power factor=');%cosQ 
Ta=str2double(get(handles.taa,'string'));%input(' Anbien temperture(oC)=');
Tc=str2double(get(handles.edit6,'string'));%input(' conductor temperture(oC)=');
%L1=input('line model. enter 0 or 1 .o=khat kootah .1=khat motevaset');
%ro=input(' enter number of ro=');
IN=str2double(get(handles.inn,'string'));%input(' line current=');
%table of conductor
i=(get(handles.ii,'value'));%input(' conductor  table =');
h=str2double(get(handles.hh,'string'));%input(' distance between circuits a,c`(cm)=');
h1=str2double(get(handles.hhh1,'string'));%input(' distance between circuits b,b`(cm)=');
ds=str2double(get(handles.dss,'string'));%input (' distance between subconductor(cm)=')
     
%conductor information
if i==1,N=['Fox'];c=[8.37 0.7822];end
if i==2,N=['Mink'];c=[10.98 0.4546];end
if i==3,N=['Dog']; c=[14.15 0.2733];end
if i==4,N=['Hyena'];c=[14.57 0.2733];end
if i==5,N=['Lynx'];c=[19.53 0.1576];end
if i==6,N=['partridge'];c=[16.29 0.2136];end
if i==7,N=['Oriole'];c=[18.83 0.1693];end
if i==8,N=['Hawk'];c=[21.78 0.1196];end
if i==9,N=['Drake'];c=[28.13 0.07176];end
if i==10,N=['Canary'];c=[29.51 0.06332];end
if i==11,N=['Cardinal'];c=[30.39 0.05973];end
if i==12,N=['Curlew'];c=[31.62 0.05518];end
if i==13,N=['Martin'];c=[36.16 0.04238];end
% take from data file,GMD,GMR for N-boundel
    Rac=(c(1,2)*(228+Tc))/(228+Ta);
    d=c(1,1);
    GMR(1)=0.7788*d/20; 
    Nc=str2double(get(handles.ncc,'string'));%input(' number circuit=');
    ns=str2double(get(handles.nss,'string'));%input ('  number subconductor=');%number of bondel 
    %for one circuit line and one boundel
    if  ns==1
      GMD=(ab*bc*ac)^(1/3);
      xl= 0.1447*log10(GMD/GMR(1));%calculated per kiloometer(ohm/k)
      xc=0.1318*log10(GMD/GMR(1)); %calculated per kiloometer(Mohm/k)
    end
   %for boundel line
   if ns~=1 
      GMD=(ab*bc*ac)^(1/3); 
      GMR(ns)=((ns* GMR(1)*ds/(2*sin(pi/ns))))^(1/ns);
      e1=['   ' num2str(ns) ' Bondel '];
      xl= 0.1447*log10(GMD/GMR(ns));%calculated per kiloometer(ohm/k)
      xc=0.1318*log10(GMD/GMR(ns)); %calculated per kiloometer(Mohm/k)
   end
   %for two circuit line
  if Nc==2
     q=sqrt(ac^2+h^2);
     GMRa=sqrt(GMR(ns)*q);%GMRa=GMRc
     GMRb=sqrt(GMR(ns)*h1);
     GMR2b=(GMRa^2*GMRb)^(1/3);
     s=h1-h;f=sqrt(ab^2-(s/2)^2);f1=sqrt((h+(s/2))^2+f^2);
     GMDab=sqrt(ab*f1);%GMDab=GMDbc
     GMDca=sqrt(ac*h);
     GMD=(GMDab^2*GMDca)^(1/3);
     xl= 0.1447*log10(GMD/GMR2b);%calculated per kiloometer(ohm/k)
     xc=0.1318*log10(GMD/GMR2b); %calculated per kiloometer(Mohm/k)          
   end
 % do caculate file
  Xl=xl ; Xc=xc;%calculated  in K kiloometer
  W=2*pi*F; C=(1/(Xc*W))*10e-3;
  L=Xl/W; 
  B=(1/(Xc))*(10^-6); 
  Zi=(sqrt(xl*xc))*1000;%(ohm)
%for QL=0.7:0.02:1
  A=acos(QL); Q=P*tan(A);
  Ir=P*1000/(sqrt(3)*U*QL);
  P=1.73*U*IN/1000;
 % if L1==0
        Ud=((((Rac*P)+(Xl*Q))/(U^2)))*100; %voltage drop
        %  elseif L1==1
       %idm=j/Xc;
       %Z=Rac+(j*Xl);Z_idm=Z*idm;
       %Z_Ir=Z*Ir;
       %UR=(U-(Z_Ir))/(Z_idm);
       %du=U-UR;
       %mag_du=abs(du);mag_UR=abs(UR)
      %Ud=((mag_du)/(mag_UR))*100;%voltage drop with pi model
      %end
  Pn=(U^2)/Zi;%power natural line with Zi or SIL
  Pl=(1000*Rac/(Nc*ns))*(P/(U*QL));
  V=1/(sqrt(L*C));%wave speed
  SILc=C*V*U^2; SILl=U^2/(L*V); Y=V/F;
  SILyc=Y*F*C*U^2;SILyl=U^2/(Y*F*L);%with y,l,c
  P_Pn=P/Pn;
  U1=U-((Ud/100)*U);
  U_U1=U/U1;
  %P/Pn
 %j=1;
 %U1=U-((Ud/100)*U);
 %PO=(1/Y)*((sqrt((tan(A))^2+2*((U/U1)-1-((ro*j*K*QL)/U1)+(Y^2))))-tan(A));
  %p1=['U2=' num2str(U1) 'KV' '      P/Pn=' num2str(PO) ];
  % carector section file
%   s1=[ '         ' N  '             GMD=' num2str(GMD) '                        GMR=' num2str(GMR(ns)) ];
%   s3=[ ' c=' num2str(C) 'uF/km' ' Xc=' num2str(xc) 'Mohm*km' '  L=' num2str(L) 'H/M' ' Xl=' num2str(xl) 'Ohm/km' '  B=' num2str(B) ' Zi=' num2str(Zi) 'ohm'];
%   g1=[' delta U%=' num2str(Ud) '%' '  Pn=' num2str(Pn) 'MVA' '  P=' num2str(P) 'MVA'  '  PL=' num2str(Pl) 'KW' '  P/Pn=' num2str(P_Pn) '  U/U1=' num2str(U_U1)];

 y=1:-.02:0.7;
  x=(((Rac*P)+(Xl*(P*tan(acos(y)))))/(U^2))*100; %voltage drop
  %%
   fd=figure('Position',[400 500 350 200]);
 
   dat=[GMD;GMR(end);C;xc;L;xl;B;Zi;Ud;Pn;P;Pl;P_Pn;U_U1];

%    colNames={' GMD(cm)','XL(ohm/km)','B(umho/km)','Zi(ohm)','SIL/Pn(MVA)'};
rowNames={'GMD','GMR', ...
    'c(uF/km)','Xc(Mohm*km)','L(H/M)' ,'Xl(Ohm/km)'  'B','Zi(ohm)',...
     'delta U%','Pn or SIL(MVA) ','P(MVA)','PL(KW)' 'P/Pn','U/U1'};
     t = uitable('Parent',fd,'Data',dat,'rowName',rowNames,...
    'ColumnWidth',{100},'Position',[20 20 300 150]);
