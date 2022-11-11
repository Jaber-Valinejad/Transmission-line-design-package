function varargout = KP1(varargin)
% KP1 MATLAB code for KP1.fig
%      KP1, by itself, creates a new KP1 or raises the existing
%      singleton*.
%
%      H = KP1 returns the handle to a new KP1 or the handle to
%      the existing singleton*.
%
%      KP1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KP1.M with the given input arguments.
%
%      KP1('Property','Value',...) creates a new KP1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KP1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KP1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KP1

% Last Modified by GUIDE v2.5 08-Dec-2014 15:09:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KP1_OpeningFcn, ...
                   'gui_OutputFcn',  @KP1_OutputFcn, ...
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


% --- Executes just before KP1 is made visible.
function KP1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KP1 (see VARARGIN)

% Choose default command line output for KP1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KP1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KP1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function v_Callback(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v as text
%        str2double(get(hObject,'String')) returns contents of v as a double
 V=str2double(get(handles.v,'string'));

% --- Executes during object creation, after setting all properties.
function v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function s_Callback(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 S=str2double(get(handles.s,'string'));
% Hints: get(hObject,'String') returns contents of s as text
%        str2double(get(hObject,'String')) returns contents of s as a double


% --- Executes during object creation, after setting all properties.
function s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ctt.
function ctt_Callback(hObject, eventdata, handles)
% hObject    handle to ctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 ct=get(handles.ctt,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns ctt contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ctt
% for  cc=1:14
% if ct==cc
% A=Z(cc,8)  ;%AREA(MM^2)
% UTS=Z(cc,11);%ULTIMATE TENSILE STRENGTH
% d=Z(cc,5);%DIMETER WIRE(MM)
% ALFA=Z(cc,19)*(10^(-6));%ICE WILDE(MM)
% e=Z(cc,18);%AIR VELOCITY
% W_c=Z(cc,10)*(10^(-3));%WEIGHT CORE(KG/M) 
%  end
% end

% --- Executes during object creation, after setting all properties.
function ctt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ctt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq2_Callback(hObject, eventdata, handles)
% hObject    handle to wq2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wq2 as text
%        str2double(get(hObject,'String')) returns contents of wq2 as a double


% --- Executes during object creation, after setting all properties.
function wq2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq1_Callback(hObject, eventdata, handles)
% hObject    handle to wq1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq1=str2double(get(handles.wq1,'string'));
% Hints: get(hObject,'String') returns contents of wq1 as text
%        str2double(get(hObject,'String')) returns contents of wq1 as a double


% --- Executes during object creation, after setting all properties.
function wq1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq3_Callback(hObject, eventdata, handles)
% hObject    handle to wq3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wq3 as text
%        str2double(get(hObject,'String')) returns contents of wq3 as a double
qq3=str2double(get(handles.wq3,'string'));

% --- Executes during object creation, after setting all properties.
function wq3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq5_Callback(hObject, eventdata, handles)
% hObject    handle to wq5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq5=str2double(get(handles.wq5,'string'));
% Hints: get(hObject,'String') returns contents of wq5 as text
%        str2double(get(hObject,'String')) returns contents of wq5 as a double


% --- Executes during object creation, after setting all properties.
function wq5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq4_Callback(hObject, eventdata, handles)
% hObject    handle to wq4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq4=str2double(get(handles.wq4,'string'));
% Hints: get(hObject,'String') returns contents of wq4 as text
%        str2double(get(hObject,'String')) returns contents of wq4 as a double


% --- Executes during object creation, after setting all properties.
function wq4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq6_Callback(hObject, eventdata, handles)
% hObject    handle to wq6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq6=str2double(get(handles.wq6,'string'));
% Hints: get(hObject,'String') returns contents of wq6 as text
%        str2double(get(hObject,'String')) returns contents of wq6 as a double


% --- Executes during object creation, after setting all properties.
function wq6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq8_Callback(hObject, eventdata, handles)
% hObject    handle to wq8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq8=str2double(get(handles.wq8,'string'));
% Hints: get(hObject,'String') returns contents of wq8 as text
%        str2double(get(hObject,'String')) returns contents of wq8 as a double


% --- Executes during object creation, after setting all properties.
function wq8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq7_Callback(hObject, eventdata, handles)
% hObject    handle to wq7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq7=str2double(get(handles.wq7,'string'));
% Hints: get(hObject,'String') returns contents of wq7 as text
%        str2double(get(hObject,'String')) returns contents of wq7 as a double


% --- Executes during object creation, after setting all properties.
function wq7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq9_Callback(hObject, eventdata, handles)
% hObject    handle to wq9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq9=str2double(get(handles.wq9,'string'));
% Hints: get(hObject,'String') returns contents of wq9 as text
%        str2double(get(hObject,'String')) returns contents of wq9 as a double


% --- Executes during object creation, after setting all properties.
function wq9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq11_Callback(hObject, eventdata, handles)
% hObject    handle to wq11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq11=str2double(get(handles.wq11,'string'));
% Hints: get(hObject,'String') returns contents of wq11 as text
%        str2double(get(hObject,'String')) returns contents of wq11 as a double


% --- Executes during object creation, after setting all properties.
function wq11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq10_Callback(hObject, eventdata, handles)
% hObject    handle to wq10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq10=str2double(get(handles.wq10,'string'));
% Hints: get(hObject,'String') returns contents of wq10 as text
%        str2double(get(hObject,'String')) returns contents of wq10 as a double


% --- Executes during object creation, after setting all properties.
function wq10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq12_Callback(hObject, eventdata, handles)
% hObject    handle to wq12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq12=str2double(get(handles.wq12,'string'));
% Hints: get(hObject,'String') returns contents of wq12 as text
%        str2double(get(hObject,'String')) returns contents of wq12 as a double


% --- Executes during object creation, after setting all properties.
function wq12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq14_Callback(hObject, eventdata, handles)
% hObject    handle to wq14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq14=str2double(get(handles.wq14,'string'));
% Hints: get(hObject,'String') returns contents of wq14 as text
%        str2double(get(hObject,'String')) returns contents of wq14 as a double


% --- Executes during object creation, after setting all properties.
function wq14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq13_Callback(hObject, eventdata, handles)
% hObject    handle to wq13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq13=str2double(get(handles.wq13,'string'));
% Hints: get(hObject,'String') returns contents of wq13 as text
%        str2double(get(hObject,'String')) returns contents of wq13 as a double


% --- Executes during object creation, after setting all properties.
function wq13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wq15_Callback(hObject, eventdata, handles)
% hObject    handle to wq15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qq15=str2double(get(handles.wq15,'string'));
% Hints: get(hObject,'String') returns contents of wq15 as text
%        str2double(get(hObject,'String')) returns contents of wq15 as a double


% --- Executes during object creation, after setting all properties.
function wq15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wq15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w_gg_Callback(hObject, eventdata, handles)
% hObject    handle to w_gg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
w_g=str2double(get(handles.w_gg,'string'));
% Hints: get(hObject,'String') returns contents of w_gg as text
%        str2double(get(hObject,'String')) returns contents of w_gg as a double


% --- Executes during object creation, after setting all properties.
function w_gg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w_gg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in vh.
function vh_Callback(hObject, eventdata, handles)
% hObject    handle to vh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns vh contents as cell array
%        contents{get(hObject,'Value')} returns selected item from vh
str=get(handles.vh,'value')
if str==1
    set(handles.F1,'string','sag(F):')
    F=str2double(get(handles.Fs,'string'));
elseif str==2
    set(handles.F1,'string','Parameter(a):')
    a=str2double(get(handles.Fs,'string'));
elseif str==3
    set(handles.F1,'string','Safety Factor(SF):')
    SF=str2double(get(handles.Fs,'string'));
    
end

% --- Executes during object creation, after setting all properties.
function vh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fs_Callback(hObject, eventdata, handles)
% hObject    handle to Fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
F=str2double(get(handles.Fs,'string'));
% Hints: get(hObject,'String') returns contents of Fs as text
%        str2double(get(hObject,'String')) returns contents of Fs as a double


% --- Executes during object creation, after setting all properties.
function Fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SF_Callback(hObject, eventdata, handles)
% hObject    handle to SF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SF as text
%        str2double(get(hObject,'String')) returns contents of SF as a double


% --- Executes during object creation, after setting all properties.
function SF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HP_Callback(hObject, eventdata, handles)
% hObject    handle to HP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HP as text
%        str2double(get(hObject,'String')) returns contents of HP as a double
set(handles.HP,'string',H_prim)

% --- Executes during object creation, after setting all properties.
function HP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PD_Callback(hObject, eventdata, handles)
% hObject    handle to PD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PD,'string',phase_distance)
% Hints: get(hObject,'String') returns contents of PD as text
%        str2double(get(hObject,'String')) returns contents of PD as a double


% --- Executes during object creation, after setting all properties.
function PD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HT_Callback(hObject, eventdata, handles)
% hObject    handle to HT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HT as text
%        str2double(get(hObject,'String')) returns contents of HT as a double
set(handles.HT,'string',H_T)

% --- Executes during object creation, after setting all properties.
function HT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HT (see GCBO)
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
% st=get(handles.pushbutton1,'value')
% [H_prim,H_T,F,phase_distance]=cal(qq1,qq2,qq3,qq4,qq5,qq6,qq7,qq8,qq9,qq10,qq11,qq12,qq13,qq14,qq15,ct,F,a,SF);
% if st==1
Z=[6	2.79	1	2.79	8.37	36.7	72.4	42.7	84.3	149	1346	0.7827	0.8773	0.7828	0.8774	0.2835	192	8100	19.1;
6	3.66	1	3.66	10.98	63.1	124.5	73.6	145.3	255	2223	0.4541	0.509	0.4543	0.50916	0.2664	288	8100	19.1;
6	4.72	7	1.57	14.15	105	207.2	118.5	233.9	394	3335	0.2733	0.3063	0.2736	0.3066	0.2506	417	7700	19.8;
26	2.57	7	2	16.3	135.2	266.8	156.9	309.6	546	5107	0.2134	0.2392	0.2137	0.2392	0.2405	460	7700	18.9;
30	2.79	7	2.79	19.53	183.4	361.9	226.2	446.4	842	8137	0.1576	0.1766	0.1581	0.1771	0.2277	549	8200	17.8;
30	2.69	7	2.69	18.82	170.5	236.4	210.3	415	783	7736	0.1696	0.1901	0.1701	0.1901	0.2305	530	8200	17.8;
36	3.42	7	2.68	21.8	241.7	477	281	554.6	977	8821	0.1197	0.1342	0.1204	0.1342	0.2224	670	7700	18.9;
36	4.44	7	3.45	28.14	403	795	468.6	924.8	1628	14165	0.0714	0.08	0.0725	0.08	0.2063	900	7700	18.9;
54	3.28	7	3.28	29.52	456	900	515.1	1016.6	1724	14664	0.0635	0.0712	0.0648	0.073	0.2038	970	7000	19.3;
54	3.38	7	3.38	30.38	483.4	954	546	1077.5	1828	15527	0.0598	0.067	0.0611	0.0695	0.202	1010	7000	19.3;
54	3.515	7	3.515	31.65	523.7	1033.5	591.2	1166.7	1980	16843	0.0551	0.0618	0.0566	0.0637	0.1995	1060	7000	19.3;
54	4.018	19	2.41	36.17	684.6	1351	771.6	1522.8	2584	21610	0.0422	0.0473	0.0441	0.0492	0.1908	1250	6800	19.4;
21	2	2	2	8.37	454	345	58.43	34	460	7232	25	34	32	32	23	34	17311	11.5;
21	2	2	2	4	431	2342	12.56	32	112	565.2	23	23	21	23	43	245	13000	18];


insuinfo=[70	70	80	100	120	120	160	160	210	300	80	100	120	160	210;
225	255	255	255	255	255	255	280	280	330	255	255	255	330	330;
146	146	146	146	146	146	146	170	170	195	146	146	146	170	170;
295	295	320	295	320	295	320	370	380	390	440	440	440	525	525;
5.2	4.4	5.4	5.2	5.4	5.2	6.6	8.5	8.5	13	8.3	8.3	8.3	11.5 12];
ct=get(handles.ctt,'value');
qq1=str2double(get(handles.wq1,'string'));
qq2=str2double(get(handles.wq2,'string'));
qq3=str2double(get(handles.wq3,'string'));
qq4=str2double(get(handles.wq4,'string'));
qq5=str2double(get(handles.wq5,'string'));
qq6=str2double(get(handles.wq6,'string'));
qq7=str2double(get(handles.wq7,'string'));
qq8=str2double(get(handles.wq8,'string'));
qq9=str2double(get(handles.wq9,'string'));
qq10=str2double(get(handles.wq10,'string'));
qq11=str2double(get(handles.wq11,'string'));
qq12=str2double(get(handles.wq12,'string'));
qq13=str2double(get(handles.wq13,'string'));
qq14=str2double(get(handles.wq14,'string'));
qq15=str2double(get(handles.wq15,'string'));
vh1=(get(handles.vh,'value'));
S=str2double(get(handles.s,'string'));
V=str2double(get(handles.v,'string'));
w_g=str2double(get(handles.w_gg,'string'));
F=str2double(get(handles.Fs,'string'));
a=str2double(get(handles.Fs,'string'));
SF=str2double(get(handles.Fs,'string'));
% F=50;
for  cc=1:14
if ct==cc
A=Z(cc,8)  ;%AREA(MM^2)
UTS=Z(cc,11);%ULTIMATE TENSILE STRENGTH
d=Z(cc,5);%DIMETER WIRE(MM)
ALFA=Z(cc,19)*(10^(-6));%ICE WILDE(MM)
e=Z(cc,18);%AIR VELOCITY
W_c=Z(cc,10)*(10^(-3));%WEIGHT CORE(KG/M) 
 end
end
if ct==1,nn=['Fox'];end
if ct==2,nn=['Mink'];end
if ct==3,nn=['Dog'];end 
if ct==4,nn=['partridge'];end
if ct==5,nn=['Lynx'];end
if ct==6,nn=['Oriole'];end
if ct==7,nn=['Hawk'];end
if ct==8,nn=['Drake'];end
if ct==9,nn=['Canary'];end
if ct==10,nn=['Cardinal'];end
if ct==11,nn=['Curlew'];end
if ct==12,nn=['Martin'];end
if ct==13,nn=['ok'];end
if ct==14,nn=['ok'];end
Zz=[qq1 qq4 qq7 qq10 qq13;qq2 qq5 qq8 qq11 qq14;qq3 qq6 qq9 qq12 qq15];
T_R=Zz(1,:); %TEMPRETURE
i=Zz(2,:); %ICE WILDE(MM)
%V=Zz(3,:);%AIR VELOCITY
P_w=Zz(3,:);%PRESURE OF WIND(KG/M^2)
              
                                           % FORCES  CALCULATION 

W_i=[0 0 0 0 0];                                                                                 
W_w=[0 0 0 0 0];
W_T=[0 0 0 0 0];                                          
  for id=1:5                                                  
W_i(id)=0.913*pi*i(id)*(i(id)+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w(id)=P_w(id)*(d+2*i(id))*(10^(-3));  %WIND WEIHGT(KG/M)
W_T(id)=sqrt( (W_c+W_i(id))^2+W_w(id)^2 );%TOTAL WEIGHT
  end
if vh1==1
   for te=1:3;
H(te)=W_T(te)*(S^2)/(8*F);
end
elseif vh1==2
   for te=1:3      
H(te)=W_T(te)*a;
end
elseif vh1==3
     for te=1:3
H(te)=UTS/SF; 
    end
end


BBB=[0 0 0];
DDD=[0 0 0];
H_s=[0 0 0]; 
F1=[0 0 0];
for ii=1:3
                                                                   
 BBB(ii)=((A*e*(S^2)*(W_T(ii)^2))/(24*(H(ii)^2)))+(ALFA*A*e*(T_R(4)-T_R(ii)))-H(ii);
DDD(ii)=-(A*e*(S^2)*(W_T(4)^2))/24;
if  T_R(ii)==0 && i(ii)==0 &&  P_w(ii)==0
    H_s(ii)=10000000;
    F1(ii)=1000000;
else
 PPP=[1 BBB(ii) 0 DDD(ii)];
H_P=roots(PPP);
for ia=1:3
     if  H_P(ia)>0 &&  H_P(ia)<UTS
         H_s(ii)=H_P(ia);
         break
     else
         H_s(ii)=10000000000;
     end
end
F1(ii)=(W_T(4)*(S^2))/(8*H_s(ii));
end

end
H_prim=min(H_s);
BBB=[0 0 0];
DDD=[0 0 0];
BBBb=[0 0 0];
DDDd=[0 0 0];
HH=[0 0 0];

for ii=1:3
                                                                   
BBB(ii)=((A*e*(S^2)*(W_T(ii)^2))/(24*(H(ii)^2)))+(ALFA*A*e*(T_R(4)-T_R(ii)))-H(ii);
DDD(ii)=-(A*e*(S^2)*(W_T(4)^2))/24;
PPP=[1 BBB(ii) 0 DDD(ii)];
H_P=roots(PPP);
for ia=1:3
     if  H_P(ia)>0 &&  H_P(ia)<UTS
         H_s(ii)=H_P(ia);
         break
     else
         H_s(ii)=100000;
     end
end

if   H_s(ii)==H_prim
 BBBb(ii)=((A*e*(S^2)*(W_T(ii)^2))/(24*(H(ii)^2)))+(ALFA*A*e*(T_R(5)-T_R(ii)))-H(ii);
DDDd(ii)=-(A*e*(S^2)*(W_T(5)^2))/24;
PPPp=[1 BBBb(ii) 0 DDDd(ii)];
H_Pp=roots(PPPp);
for ia=1:3
     if  H_Pp(ia)>0 &&  H_Pp(ia)<UTS
         HH(ii)=H_Pp(ia);
      end
end
F2=(W_T(5)*(S^2))/(8*HH(ii));
if  F1(ii)>F2;
    F=F1(ii);
else
  F=F2;
end
end
end

 if V==20
     n_L_I=2;       %tedade maghare
     L_L_I=.18;     %tole maghare
     Y_L_I=.20;     %tole yaragh
     ke=.63;
 elseif V==63
     n_L_I=5;       %tedade maghare
     L_L_I=.18;     %tole maghare
     Y_L_I=.50;     %tole yaragh
     ke=.63;
 elseif  V==230
     n_L_I=15;     %tedade maghare
     L_L_I=.20;
     Y_L_I=.50; 
     ke=.63;
 elseif  V==400
     n_L_I=25;     %tedade maghare
     L_L_I=.20;
     Y_L_I=.50;  
     ke=.63;
 end
  L_I=n_L_I*L_L_I+Y_L_I;         %tole zanjir maghare
  phase_distance=ke*sqrt(F+L_I)+(V/150);
  H_T= .8+1.5+F+w_g;            %Height of tower
handles.H_T=H_T;
handles.phase_distance=phase_distance
handles.H_prim=H_prim;
handles.F=F;
set(handles.HT,'string',H_T)
set(handles.PD,'string',phase_distance)
set(handles.HP,'string',H_prim)
set(handles.SG,'string',F)
% end

function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function SG_Callback(hObject, eventdata, handles)
% hObject    handle to SG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.SG,'string',F)
% Hints: get(hObject,'String') returns contents of SG as text
%        str2double(get(hObject,'String')) returns contents of SG as a double


% --- Executes during object creation, after setting all properties.
function SG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
