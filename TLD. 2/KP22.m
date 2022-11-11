function varargout = KP22(varargin)
% KP22 MATLAB code for KP22.fig
%      KP22, by itself, creates a new KP22 or raises the existing
%      singleton*.
%
%      H = KP22 returns the handle to a new KP22 or the handle to
%      the existing singleton*.
%
%      KP22('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KP22.M with the given input arguments.
%
%      KP22('Property','Value',...) creates a new KP22 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KP22_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KP22_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KP22

% Last Modified by GUIDE v2.5 27-Dec-2014 16:08:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KP22_OpeningFcn, ...
                   'gui_OutputFcn',  @KP22_OutputFcn, ...
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


% --- Executes just before KP22 is made visible.
function KP22_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KP22 (see VARARGIN)

% Choose default command line output for KP22
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KP22 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KP22_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Vv_Callback(hObject, eventdata, handles)
% hObject    handle to Vv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 V=str2double(get(handles.Vv,'string'));
% Hints: get(hObject,'String') returns contents of Vv as text
%        str2double(get(hObject,'String')) returns contents of Vv as a double


% --- Executes during object creation, after setting all properties.
function Vv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ccq_Callback(hObject, eventdata, handles)
% hObject    handle to ccq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cc=eval(get(handles.ccq,'string'));
% Hints: get(hObject,'String') returns contents of ccq as text
%        str2double(get(hObject,'String')) returns contents of ccq as a double


% --- Executes during object creation, after setting all properties.
function ccq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ccq (see GCBO)
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



function T_Rq_Callback(hObject, eventdata, handles)
% hObject    handle to T_Rq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_Rq as text
%        str2double(get(hObject,'String')) returns contents of T_Rq as a double
T_R=str2double(get(handles.T_Rq,'string'));

% --- Executes during object creation, after setting all properties.
function T_Rq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_Rq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iq_Callback(hObject, eventdata, handles)
% hObject    handle to iq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i=str2double(get(handles.iq,'string'));
% Hints: get(hObject,'String') returns contents of iq as text
%        str2double(get(hObject,'String')) returns contents of iq as a double


% --- Executes during object creation, after setting all properties.
function iq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_wq_Callback(hObject, eventdata, handles)
% hObject    handle to P_wq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
P_w=str2double(get(handles.P_wq,'string'));
% Hints: get(hObject,'String') returns contents of P_wq as text
%        str2double(get(hObject,'String')) returns contents of P_wq as a double


% --- Executes during object creation, after setting all properties.
function P_wq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_wq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt822.
function tt822_Callback(hObject, eventdata, handles)
% hObject    handle to tt822 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tt83=get(handles.tt822,'value');
if tt83==2
    set(handles.T_S1,'string','SECOND TEMRATURE(m):')
    T_S=str2double(get(handles.T_Sq,'string'));
else
       set(handles.T_S1,'string','-----')
end

  

% Hints: contents = cellstr(get(hObject,'String')) returns tt822 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt822


% --- Executes during object creation, after setting all properties.
function tt822_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt822 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_Sq_Callback(hObject, eventdata, handles)
% hObject    handle to T_Sq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_Sq as text
%        str2double(get(hObject,'String')) returns contents of T_Sq as a double


% --- Executes during object creation, after setting all properties.
function T_Sq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_Sq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i_Sq_Callback(hObject, eventdata, handles)
% hObject    handle to i_Sq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i_S=str2double(get(handles. i_Sq,'string'));
% Hints: get(hObject,'String') returns contents of i_Sq as text
%        str2double(get(hObject,'String')) returns contents of i_Sq as a double


% --- Executes during object creation, after setting all properties.
function i_Sq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i_Sq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_w_Sq_Callback(hObject, eventdata, handles)
% hObject    handle to P_w_Sq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
P_w_S=str2double(get(handles. P_w_Sq,'string'));
% Hints: get(hObject,'String') returns contents of P_w_Sq as text
%        str2double(get(hObject,'String')) returns contents of P_w_Sq as a double


% --- Executes during object creation, after setting all properties.
function P_w_Sq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_w_Sq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt2.
function tt2_Callback(hObject, eventdata, handles)
% hObject    handle to tt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vh=get(handles.tt2,'value')
if vh==1
    set(handles.F1,'string','sag(F):')
    F=str2double(get(handles.F,'string'));
elseif vh==2
    set(handles.F1,'string','Parameter(a):')
    a=str2double(get(handles.F,'string'));
elseif vh==3
    set(handles.F1,'string','Safety Factor(SF):')
    SF=str2double(get(handles.F,'string'));
    end
% Hints: contents = cellstr(get(hObject,'String')) returns tt2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt2


% --- Executes during object creation, after setting all properties.
function tt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F_Callback(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F as text
%        str2double(get(hObject,'String')) returns contents of F as a double


% --- Executes during object creation, after setting all properties.
function F_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
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



function ts_Callback(hObject, eventdata, handles)
% hObject    handle to ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ts={'multi','line','editbox'};
ts=uicontrol('style','edit','max',3,'string',ts);
% Hints: get(hObject,'String') returns contents of ts as text
%        str2double(get(hObject,'String')) returns contents of ts as a double


% --- Executes during object creation, after setting all properties.
function ts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase_distanc1_Callback(hObject, eventdata, handles)
% hObject    handle to phase_distanc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phase_distanc1 as text
%        str2double(get(hObject,'String')) returns contents of phase_distanc1 as a double


% --- Executes during object creation, after setting all properties.
function phase_distanc1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase_distanc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F31_Callback(hObject, eventdata, handles)
% hObject    handle to F31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F31 as text
%        str2double(get(hObject,'String')) returns contents of F31 as a double


% --- Executes during object creation, after setting all properties.
function F31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a21_Callback(hObject, eventdata, handles)
% hObject    handle to a21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a21 as text
%        str2double(get(hObject,'String')) returns contents of a21 as a double


% --- Executes during object creation, after setting all properties.
function a21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp1_Callback(hObject, eventdata, handles)
% hObject    handle to kp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp2_Callback(hObject, eventdata, handles)
% hObject    handle to kp22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp3_Callback(hObject, eventdata, handles)
% hObject    handle to kp3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp4_Callback(hObject, eventdata, handles)
% hObject    handle to kp4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp5_Callback(hObject, eventdata, handles)
% hObject    handle to kp5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp6_Callback(hObject, eventdata, handles)
% hObject    handle to kp6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp7_Callback(hObject, eventdata, handles)
% hObject    handle to kp7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kp8_Callback(hObject, eventdata, handles)
% hObject    handle to kp8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb4.
function pb4_Callback(hObject, eventdata, handles)
% hObject    handle to pb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
cc=eval(get(handles.ccq,'string'));
P_w=str2double(get(handles.P_wq,'string'));
i_S=str2double(get(handles. i_Sq,'string'));
P_w_S=str2double(get(handles. P_w_Sq,'string'));
vh=get(handles.tt2,'value')
if vh==1
    set(handles.F1,'string','sag(F):')
    F=str2double(get(handles.F,'string'));
elseif vh==2
    set(handles.F1,'string','Parameter(a):')
    a=str2double(get(handles.F,'string'));
elseif vh==3
    set(handles.F1,'string','Safety Factor(SF):')
    SF=str2double(get(handles.F,'string'));
end
    
tt83=get(handles.tt822,'value');
if tt83==2
    set(handles.T_S1,'string','SECOND TEMRATURE(m):')
    T_S=str2double(get(handles.T_Sq,'string'));
else
       set(handles.T_S1,'string','-----')
end
T_R=str2double(get(handles.T_Rq,'string'));
 V=str2double(get(handles.Vv,'string'));


for  cc=1:14
if ct==cc
A=Z(cc,8);  %AREA(MM^2)
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


% ccc=str2double(get(handles.ccq,'string'));
% cc=[ccc 0];
% kkk=1;
% for i=1:10000;
%     if cc(kkk)==0
%         break
%     end
%     kkk=kkk+1;
% end
cc=eval(get(handles.ccq,'string'));
[saz,saiz]=size(cc);
cc(:,saiz)=[];
[sab,saiz]=size(cc);
c1=0;
c2=0;
for i=1:saiz
    c1=cc(i)^3+c1;
    c2=cc(i)+c2;
end
S=cc;
S_R=sqrt(c1/c2);

W_i=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w=P_w*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R=sqrt( (W_c+W_i)^2+W_w^2 );%TOTAL WEIGHT

W_i_S=0.913*pi*i_S*(i_S+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w_S=P_w_S*(d+2*i_S)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_S=sqrt( (W_c+W_i_S)^2+W_w_S^2 );%TOTAL WEIGHT

H=zeros(1,saiz);
if vh==1
for i=1:saiz
H(i)=W_T_R*(S(i)^2)/(8*F);
end
elseif vh==2
  
for i=1:saiz
H(i)=W_T_R*a;
end
elseif vh==3
for i=1:saiz
H(i)=UTS/SF; 
end
end

if tt83==1;
    F3=zeros(saiz,52);
    T=zeros(saiz,52);
    a2=zeros(saiz,52);
    phase_distance=zeros(saiz,52);
    for j=1:saiz
        for T_S=2:5:52;
            BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
            DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
            PPP=[1 BBB 0 DDD];
            H_P=roots(PPP);
            for ia=1:3
                if  H_P(ia)>0 &&  H_P(ia)<UTS
                    H_s=H_P(ia);
                    break
                else
                    H_s=0;
                end
            end
            H_s;
            F3(j,T_S)=(W_T_S*(S(j)^2))/(8*H_s);
            T(j,T_S)=H_s+W_T_S*F3(j,T_S);
            a2(j,T_S)=(S(j)^2)/(8*F3(j,T_S));
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
            L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
            phase_distance(j,T_S)=ke*sqrt(F3(j,T_S)+L_I)+(V/150);
        end
    end

    F311=[S' F3];
    T11=[S' T];
    a211=[S' a2];
    phase_distanc11=[S' phase_distance];
    
    %F31(saiz,:)=[];
    %ts(saiz,:)=[];
    %a21(saiz,:)=[];
    %phase_distanc1(saiz,:)=[];
    nnnn=1;
    for i=1:52;
        if F311(1,nnnn)==0;
            F311(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if T11(1,nnnn)==0;
            T11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if a211(1,nnnn)==0;
            a211(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if phase_distanc11(1,nnnn)==0;
            phase_distanc11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    
    
    aaa1=['Type Of Conductor=' nn '              '     'First Temprature=' num2str(T_R)    ];
    aaa6=[' Temprature =         2          7          12          17          22          27          32          37          42          47          52'];
    
    %aaa7=['Tension=          ' num2str(T(2)) '          ' num2str(T(7)) '           ' num2str(T(7)) '            ' num2str(T(12)) '            ' num2str(T(17)) '            ' num2str(T(22)) '            ' num2str(T(27)) '            ' num2str(T(32)) '            ' num2str(T(37)) '            ' num2str(T(42)) '            ' num2str(T(47)) '           ' num2str(T(52))];
    %aaa71=['phase_distance= ' num2str(phase_distance(2)) '          ' num2str(phase_distance(7)) '           ' num2str(phase_distance(7)) '            ' num2str(phase_distance(12)) '            ' num2str(phase_distance(17)) '            ' num2str(phase_distance(22)) '            ' num2str(phase_distance(27)) '            ' num2str(phase_distance(32)) '            ' num2str(phase_distance(37)) '            ' num2str(phase_distance(42)) '            ' num2str(phase_distance(47)) '           ' num2str(phase_distance(52))];
    %aaa8=['SPAN                     SAG       SAG      SAG        SAG        SAG        SAG        SAG        SAG        SAG       SAG        SAG'];
    %aaa9=[num2str(S) '                  ' num2str(F3(2)) '     ' num2str(F3(7)) '     ' num2str(F3(12)) '     ' num2str(F3(17)) '     ' num2str(F3(22)) '     ' num2str(F3(27)) '     ' num2str(F3(32)) '     ' num2str(F3(37)) '     ' num2str(F3(42)) '     ' num2str(F3(47)) '     ' num2str(F3(52))  ];
    %aaa81=['SPAN          parameter (a)      a         a            a             a             a            a             a            a           a              a   '];
    %aaa91=[num2str(S) '                  ' num2str(a2(2)) '     ' num2str(a2(7)) '     ' num2str(a2(12)) '     ' num2str(a2(17)) '     ' num2str(a2(22)) '     ' num2str(a2(27)) '     ' num2str(a2(32)) '     ' num2str(a2(37)) '     ' num2str(a2(42)) '     ' num2str(a2(47)) '     ' num2str(a2(52))  ];
        
    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end

      
elseif tt83==2
    F3=zeros(1,saiz);
    T=zeros(1,saiz);
    a2=zeros(1,saiz);
    phase_distance=zeros(1,saiz);
    for j=1:saiz
        BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
        DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
        PPP=[1 BBB 0 DDD];
        H_P=roots(PPP);
        for ia=1:3
            if  H_P(ia)>0 &&  H_P(ia)<UTS
                H_s=H_P(ia);
                break
            else
                H_s=0;
            end
        end
        H_s;
        F3(j)=(W_T_S*(S(j)^2))/(8*H_s);
        T(j)=H_s+W_T_S*F3(j);
        a2(j)=(S(j)^2)/(8*F3(j));
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
        L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
        phase_distance(j)=ke*sqrt(F3(j)+L_I)+(V/150);
    end
    
    F311=[S; F3];
    T11=[S ;T];
    a211=[S ;a2];
    phase_distance1=[S ;phase_distance];

    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end
    
end 



if tt83==1
    
    fd=figure('Position',[200 500 640 200]);
   dat=a211(:,2:end);
   colNames={' 2 deg',' 7 deg',' 12 deg',' 17 deg',' 22 deg',' 27 deg',' 32 deg',' 37 deg',...
        ' 42 deg',' 47 deg',' 52 deg'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{50},'Position',[20 20 610 150]);
% handles.T11=T11;
% handles.phase_distanc11=phase_distanc11
% handles.F311=F311;
% handles.a211=a211;
% T11a=T11(1,:);
% phase_distanc11a=phase_distanc11(:,:)';
% F311a=F311(:,:)';
% a211a=a211(:,:)';
%  set(handles.temp,'string',aaa6)
% set(handles.ts,'string',num2str(T11a))
% set(handles.phase_distanc1,'string',num2str(phase_distanc11a))
% set(handles.F31,'string',num2str(F311a))
% set(handles.a21,'string',num2str(a211a))
% set(handles.spq,'string',num2str(S));
elseif tt83==2
    
     fd=figure('Position',[200 500 280 200]);
   dat=a211(2,:)';
   colNames={' Parameter'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{80},'Position',[20 20 250 150]);
%     T1a=T11(:,:);
% phase_distance1a=phase_distance1(2,:);
% F31a=F311(2,:);
% a21a=a211(2,:);
%  set(handles.temp,'string',aaa6)
% set(handles.spq,'string',num2str(T11(1,:)));
% set(handles.ts,'string',num2str(T1a))
% set(handles.phase_distanc1,'string',num2str(phase_distance1a))
% set(handles.F31,'string',num2str(F31a))
% set(handles.a21,'string',num2str(a21a))
    
end
function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temp_Callback(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.temp,'string',aaa6)
% Hints: get(hObject,'String') returns contents of temp as text
%        str2double(get(hObject,'String')) returns contents of temp as a double


% --- Executes during object creation, after setting all properties.
function temp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function spq_Callback(hObject, eventdata, handles)
% hObject    handle to spq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of spq as text
%        str2double(get(hObject,'String')) returns contents of spq as a double


% --- Executes during object creation, after setting all properties.
function spq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to spq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb1.
function pb1_Callback(hObject, eventdata, handles)
% hObject    handle to pb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
cc=eval(get(handles.ccq,'string'));
P_w=str2double(get(handles.P_wq,'string'));
i_S=str2double(get(handles. i_Sq,'string'));
P_w_S=str2double(get(handles. P_w_Sq,'string'));
vh=get(handles.tt2,'value')
if vh==1
    set(handles.F1,'string','sag(F):')
    F=str2double(get(handles.F,'string'));
elseif vh==2
    set(handles.F1,'string','Parameter(a):')
    a=str2double(get(handles.F,'string'));
elseif vh==3
    set(handles.F1,'string','Safety Factor(SF):')
    SF=str2double(get(handles.F,'string'));
end
    
tt83=get(handles.tt822,'value');
if tt83==2
    set(handles.T_S1,'string','SECOND TEMRATURE(m):')
    T_S=str2double(get(handles.T_Sq,'string'));
else
       set(handles.T_S1,'string','-----')
end
T_R=str2double(get(handles.T_Rq,'string'));
 V=str2double(get(handles.Vv,'string'));


for  cc=1:14
if ct==cc
A=Z(cc,8);  %AREA(MM^2)
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


% ccc=str2double(get(handles.ccq,'string'));
% cc=[ccc 0];
% kkk=1;
% for i=1:10000;
%     if cc(kkk)==0
%         break
%     end
%     kkk=kkk+1;
% end
cc=eval(get(handles.ccq,'string'));
[saz,saiz]=size(cc);
cc(:,saiz)=[];
[sab,saiz]=size(cc);
c1=0;
c2=0;
for i=1:saiz
    c1=cc(i)^3+c1;
    c2=cc(i)+c2;
end
S=cc;
S_R=sqrt(c1/c2);

W_i=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w=P_w*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R=sqrt( (W_c+W_i)^2+W_w^2 );%TOTAL WEIGHT

W_i_S=0.913*pi*i_S*(i_S+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w_S=P_w_S*(d+2*i_S)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_S=sqrt( (W_c+W_i_S)^2+W_w_S^2 );%TOTAL WEIGHT

H=zeros(1,saiz);
if vh==1
for i=1:saiz
H(i)=W_T_R*(S(i)^2)/(8*F);
end
elseif vh==2
  
for i=1:saiz
H(i)=W_T_R*a;
end
elseif vh==3
for i=1:saiz
H(i)=UTS/SF; 
end
end

if tt83==1;
    F3=zeros(saiz,52);
    T=zeros(saiz,52);
    a2=zeros(saiz,52);
    phase_distance=zeros(saiz,52);
    for j=1:saiz
        for T_S=2:5:52;
            BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
            DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
            PPP=[1 BBB 0 DDD];
            H_P=roots(PPP);
            for ia=1:3
                if  H_P(ia)>0 &&  H_P(ia)<UTS
                    H_s=H_P(ia);
                    break
                else
                    H_s=0;
                end
            end
            H_s;
            F3(j,T_S)=(W_T_S*(S(j)^2))/(8*H_s);
            T(j,T_S)=H_s+W_T_S*F3(j,T_S);
            a2(j,T_S)=(S(j)^2)/(8*F3(j,T_S));
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
            L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
            phase_distance(j,T_S)=ke*sqrt(F3(j,T_S)+L_I)+(V/150);
        end
    end

    F311=[S' F3];
    T11=[S' T];
    a211=[S' a2];
    phase_distanc11=[S' phase_distance];
    
    %F31(saiz,:)=[];
    %ts(saiz,:)=[];
    %a21(saiz,:)=[];
    %phase_distanc1(saiz,:)=[];
    nnnn=1;
    for i=1:52;
        if F311(1,nnnn)==0;
            F311(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if T11(1,nnnn)==0;
            T11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if a211(1,nnnn)==0;
            a211(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if phase_distanc11(1,nnnn)==0;
            phase_distanc11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    
    
    aaa1=['Type Of Conductor=' nn '              '     'First Temprature=' num2str(T_R)    ];
    aaa6=[' Temprature =         2          7          12          17          22          27          32          37          42          47          52'];
    
    %aaa7=['Tension=          ' num2str(T(2)) '          ' num2str(T(7)) '           ' num2str(T(7)) '            ' num2str(T(12)) '            ' num2str(T(17)) '            ' num2str(T(22)) '            ' num2str(T(27)) '            ' num2str(T(32)) '            ' num2str(T(37)) '            ' num2str(T(42)) '            ' num2str(T(47)) '           ' num2str(T(52))];
    %aaa71=['phase_distance= ' num2str(phase_distance(2)) '          ' num2str(phase_distance(7)) '           ' num2str(phase_distance(7)) '            ' num2str(phase_distance(12)) '            ' num2str(phase_distance(17)) '            ' num2str(phase_distance(22)) '            ' num2str(phase_distance(27)) '            ' num2str(phase_distance(32)) '            ' num2str(phase_distance(37)) '            ' num2str(phase_distance(42)) '            ' num2str(phase_distance(47)) '           ' num2str(phase_distance(52))];
    %aaa8=['SPAN                     SAG       SAG      SAG        SAG        SAG        SAG        SAG        SAG        SAG       SAG        SAG'];
    %aaa9=[num2str(S) '                  ' num2str(F3(2)) '     ' num2str(F3(7)) '     ' num2str(F3(12)) '     ' num2str(F3(17)) '     ' num2str(F3(22)) '     ' num2str(F3(27)) '     ' num2str(F3(32)) '     ' num2str(F3(37)) '     ' num2str(F3(42)) '     ' num2str(F3(47)) '     ' num2str(F3(52))  ];
    %aaa81=['SPAN          parameter (a)      a         a            a             a             a            a             a            a           a              a   '];
    %aaa91=[num2str(S) '                  ' num2str(a2(2)) '     ' num2str(a2(7)) '     ' num2str(a2(12)) '     ' num2str(a2(17)) '     ' num2str(a2(22)) '     ' num2str(a2(27)) '     ' num2str(a2(32)) '     ' num2str(a2(37)) '     ' num2str(a2(42)) '     ' num2str(a2(47)) '     ' num2str(a2(52))  ];
        
    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end

      
elseif tt83==2
    F3=zeros(1,saiz);
    T=zeros(1,saiz);
    a2=zeros(1,saiz);
    phase_distance=zeros(1,saiz);
    for j=1:saiz
        BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
        DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
        PPP=[1 BBB 0 DDD];
        H_P=roots(PPP);
        for ia=1:3
            if  H_P(ia)>0 &&  H_P(ia)<UTS
                H_s=H_P(ia);
                break
            else
                H_s=0;
            end
        end
        H_s;
        F3(j)=(W_T_S*(S(j)^2))/(8*H_s);
        T(j)=H_s+W_T_S*F3(j);
        a2(j)=(S(j)^2)/(8*F3(j));
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
        L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
        phase_distance(j)=ke*sqrt(F3(j)+L_I)+(V/150);
    end
    
    F311=[S; F3];
    T11=[S ;T];
    a211=[S ;a2];
    phase_distance1=[S ;phase_distance];

    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end
    
end 
if tt83==1
    
    fd=figure('Position',[200 500 640 200]);
   dat=T11(:,2:end);
   colNames={' 2 deg',' 7 deg',' 12 deg',' 17 deg',' 22 deg',' 27 deg',' 32 deg',' 37 deg',...
        ' 42 deg',' 47 deg',' 52 deg'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{50},'Position',[20 20 610 150]);
% handles.T11=T11;
% handles.phase_distanc11=phase_distanc11
% handles.F311=F311;
% handles.a211=a211;
% T11a=T11(1,:);
% phase_distanc11a=phase_distanc11(:,:)';
% F311a=F311(:,:)';
% a211a=a211(:,:)';
%  set(handles.temp,'string',aaa6)
% set(handles.ts,'string',num2str(T11a))
% set(handles.phase_distanc1,'string',num2str(phase_distanc11a))
% set(handles.F31,'string',num2str(F311a))
% set(handles.a21,'string',num2str(a211a))
% set(handles.spq,'string',num2str(S));
elseif tt83==2
    
     fd=figure('Position',[200 500 280 200]);
   dat=T11(2,:)';
   colNames={'Tension'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{80},'Position',[20 20 250 150]);
%     T1a=T11(:,:);
% phase_distance1a=phase_distance1(2,:);
% F31a=F311(2,:);
% a21a=a211(2,:);
%  set(handles.temp,'string',aaa6)
% set(handles.spq,'string',num2str(T11(1,:)));
% set(handles.ts,'string',num2str(T1a))
% set(handles.phase_distanc1,'string',num2str(phase_distance1a))
% set(handles.F31,'string',num2str(F31a))
% set(handles.a21,'string',num2str(a21a))
    
end



% --- Executes on button press in pb2.
function pb2_Callback(hObject, eventdata, handles)
% hObject    handle to pb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
cc=eval(get(handles.ccq,'string'));
P_w=str2double(get(handles.P_wq,'string'));
i_S=str2double(get(handles. i_Sq,'string'));
P_w_S=str2double(get(handles. P_w_Sq,'string'));
vh=get(handles.tt2,'value')
if vh==1
    set(handles.F1,'string','sag(F):')
    F=str2double(get(handles.F,'string'));
elseif vh==2
    set(handles.F1,'string','Parameter(a):')
    a=str2double(get(handles.F,'string'));
elseif vh==3
    set(handles.F1,'string','Safety Factor(SF):')
    SF=str2double(get(handles.F,'string'));
end
    
tt83=get(handles.tt822,'value');
if tt83==2
    set(handles.T_S1,'string','SECOND TEMRATURE(m):')
    T_S=str2double(get(handles.T_Sq,'string'));
else
       set(handles.T_S1,'string','-----')
end
T_R=str2double(get(handles.T_Rq,'string'));
 V=str2double(get(handles.Vv,'string'));


for  cc=1:14
if ct==cc
A=Z(cc,8);  %AREA(MM^2)
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


% ccc=str2double(get(handles.ccq,'string'));
% cc=[ccc 0];
% kkk=1;
% for i=1:10000;
%     if cc(kkk)==0
%         break
%     end
%     kkk=kkk+1;
% end
cc=eval(get(handles.ccq,'string'));
[saz,saiz]=size(cc);
cc(:,saiz)=[];
[sab,saiz]=size(cc);
c1=0;
c2=0;
for i=1:saiz
    c1=cc(i)^3+c1;
    c2=cc(i)+c2;
end
S=cc;
S_R=sqrt(c1/c2);

W_i=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w=P_w*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R=sqrt( (W_c+W_i)^2+W_w^2 );%TOTAL WEIGHT

W_i_S=0.913*pi*i_S*(i_S+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w_S=P_w_S*(d+2*i_S)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_S=sqrt( (W_c+W_i_S)^2+W_w_S^2 );%TOTAL WEIGHT

H=zeros(1,saiz);
if vh==1
for i=1:saiz
H(i)=W_T_R*(S(i)^2)/(8*F);
end
elseif vh==2
  
for i=1:saiz
H(i)=W_T_R*a;
end
elseif vh==3
for i=1:saiz
H(i)=UTS/SF; 
end
end

if tt83==1;
    F3=zeros(saiz,52);
    T=zeros(saiz,52);
    a2=zeros(saiz,52);
    phase_distance=zeros(saiz,52);
    for j=1:saiz
        for T_S=2:5:52;
            BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
            DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
            PPP=[1 BBB 0 DDD];
            H_P=roots(PPP);
            for ia=1:3
                if  H_P(ia)>0 &&  H_P(ia)<UTS
                    H_s=H_P(ia);
                    break
                else
                    H_s=0;
                end
            end
            H_s;
            F3(j,T_S)=(W_T_S*(S(j)^2))/(8*H_s);
            T(j,T_S)=H_s+W_T_S*F3(j,T_S);
            a2(j,T_S)=(S(j)^2)/(8*F3(j,T_S));
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
            L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
            phase_distance(j,T_S)=ke*sqrt(F3(j,T_S)+L_I)+(V/150);
        end
    end

    F311=[S' F3];
    T11=[S' T];
    a211=[S' a2];
    phase_distanc11=[S' phase_distance];
    
    %F31(saiz,:)=[];
    %ts(saiz,:)=[];
    %a21(saiz,:)=[];
    %phase_distanc1(saiz,:)=[];
    nnnn=1;
    for i=1:52;
        if F311(1,nnnn)==0;
            F311(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if T11(1,nnnn)==0;
            T11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if a211(1,nnnn)==0;
            a211(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if phase_distanc11(1,nnnn)==0;
            phase_distanc11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    
    
    aaa1=['Type Of Conductor=' nn '              '     'First Temprature=' num2str(T_R)    ];
    aaa6=[' Temprature =         2          7          12          17          22          27          32          37          42          47          52'];
    
    %aaa7=['Tension=          ' num2str(T(2)) '          ' num2str(T(7)) '           ' num2str(T(7)) '            ' num2str(T(12)) '            ' num2str(T(17)) '            ' num2str(T(22)) '            ' num2str(T(27)) '            ' num2str(T(32)) '            ' num2str(T(37)) '            ' num2str(T(42)) '            ' num2str(T(47)) '           ' num2str(T(52))];
    %aaa71=['phase_distance= ' num2str(phase_distance(2)) '          ' num2str(phase_distance(7)) '           ' num2str(phase_distance(7)) '            ' num2str(phase_distance(12)) '            ' num2str(phase_distance(17)) '            ' num2str(phase_distance(22)) '            ' num2str(phase_distance(27)) '            ' num2str(phase_distance(32)) '            ' num2str(phase_distance(37)) '            ' num2str(phase_distance(42)) '            ' num2str(phase_distance(47)) '           ' num2str(phase_distance(52))];
    %aaa8=['SPAN                     SAG       SAG      SAG        SAG        SAG        SAG        SAG        SAG        SAG       SAG        SAG'];
    %aaa9=[num2str(S) '                  ' num2str(F3(2)) '     ' num2str(F3(7)) '     ' num2str(F3(12)) '     ' num2str(F3(17)) '     ' num2str(F3(22)) '     ' num2str(F3(27)) '     ' num2str(F3(32)) '     ' num2str(F3(37)) '     ' num2str(F3(42)) '     ' num2str(F3(47)) '     ' num2str(F3(52))  ];
    %aaa81=['SPAN          parameter (a)      a         a            a             a             a            a             a            a           a              a   '];
    %aaa91=[num2str(S) '                  ' num2str(a2(2)) '     ' num2str(a2(7)) '     ' num2str(a2(12)) '     ' num2str(a2(17)) '     ' num2str(a2(22)) '     ' num2str(a2(27)) '     ' num2str(a2(32)) '     ' num2str(a2(37)) '     ' num2str(a2(42)) '     ' num2str(a2(47)) '     ' num2str(a2(52))  ];
        
    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end

      
elseif tt83==2
    F3=zeros(1,saiz);
    T=zeros(1,saiz);
    a2=zeros(1,saiz);
    phase_distance=zeros(1,saiz);
    for j=1:saiz
        BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
        DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
        PPP=[1 BBB 0 DDD];
        H_P=roots(PPP);
        for ia=1:3
            if  H_P(ia)>0 &&  H_P(ia)<UTS
                H_s=H_P(ia);
                break
            else
                H_s=0;
            end
        end
        H_s;
        F3(j)=(W_T_S*(S(j)^2))/(8*H_s);
        T(j)=H_s+W_T_S*F3(j);
        a2(j)=(S(j)^2)/(8*F3(j));
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
        L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
        phase_distance(j)=ke*sqrt(F3(j)+L_I)+(V/150);
    end
    
    F311=[S; F3];
    T11=[S ;T];
    a211=[S ;a2];
    phase_distance1=[S ;phase_distance];

    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end
    
end 

if tt83==1
    
    fd=figure('Position',[200 500 640 200]);
   dat=phase_distanc11(:,2:end);
   colNames={' 2 deg',' 7 deg',' 12 deg',' 17 deg',' 22 deg',' 27 deg',' 32 deg',' 37 deg',...
        ' 42 deg',' 47 deg',' 52 deg'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{50},'Position',[20 20 610 150]);
% handles.T11=T11;
% handles.phase_distanc11=phase_distanc11
% handles.F311=F311;
% handles.a211=a211;
% T11a=T11(1,:);
% phase_distanc11a=phase_distanc11(:,:)';
% F311a=F311(:,:)';
% a211a=a211(:,:)';
%  set(handles.temp,'string',aaa6)
% set(handles.ts,'string',num2str(T11a))
% set(handles.phase_distanc1,'string',num2str(phase_distanc11a))
% set(handles.F31,'string',num2str(F311a))
% set(handles.a21,'string',num2str(a211a))
% set(handles.spq,'string',num2str(S));
elseif tt83==2
    
     fd=figure('Position',[200 500 280 200]);
   dat=phase_distance1(2,:)';
   colNames={' Phase Distance'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{100},'Position',[20 20 250 150]);
%     T1a=T11(:,:);
% phase_distance1a=phase_distance1(2,:);
% F31a=F311(2,:);
% a21a=a211(2,:);
%  set(handles.temp,'string',aaa6)
% set(handles.spq,'string',num2str(T11(1,:)));
% set(handles.ts,'string',num2str(T1a))
% set(handles.phase_distanc1,'string',num2str(phase_distance1a))
% set(handles.F31,'string',num2str(F31a))
% set(handles.a21,'string',num2str(a21a))
    
end


% --- Executes on button press in pb3.
function pb3_Callback(hObject, eventdata, handles)
% hObject    handle to pb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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
cc=eval(get(handles.ccq,'string'));
P_w=str2double(get(handles.P_wq,'string'));
i_S=str2double(get(handles. i_Sq,'string'));
P_w_S=str2double(get(handles. P_w_Sq,'string'));
vh=get(handles.tt2,'value')
if vh==1
    set(handles.F1,'string','sag(F):')
    F=str2double(get(handles.F,'string'));
elseif vh==2
    set(handles.F1,'string','Parameter(a):')
    a=str2double(get(handles.F,'string'));
elseif vh==3
    set(handles.F1,'string','Safety Factor(SF):')
    SF=str2double(get(handles.F,'string'));
end
    
tt83=get(handles.tt822,'value');
if tt83==2
    set(handles.T_S1,'string','SECOND TEMRATURE(m):')
    T_S=str2double(get(handles.T_Sq,'string'));
else
       set(handles.T_S1,'string','-----')
end
T_R=str2double(get(handles.T_Rq,'string'));
 V=str2double(get(handles.Vv,'string'));


for  cc=1:14
if ct==cc
A=Z(cc,8);  %AREA(MM^2)
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


% ccc=str2double(get(handles.ccq,'string'));
% cc=[ccc 0];
% kkk=1;
% for i=1:10000;
%     if cc(kkk)==0
%         break
%     end
%     kkk=kkk+1;
% end
cc=eval(get(handles.ccq,'string'));
[saz,saiz]=size(cc);
cc(:,saiz)=[];
[sab,saiz]=size(cc);
c1=0;
c2=0;
for i=1:saiz
    c1=cc(i)^3+c1;
    c2=cc(i)+c2;
end
S=cc;
S_R=sqrt(c1/c2);

W_i=0.913*pi*i*(i+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w=P_w*(d+2*i)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_R=sqrt( (W_c+W_i)^2+W_w^2 );%TOTAL WEIGHT

W_i_S=0.913*pi*i_S*(i_S+d)*(10^(-3)) ;%ICE WEIHT (KG/M)
W_w_S=P_w_S*(d+2*i_S)*(10^(-3));  %WIND WEIHGT(KG/M)
W_T_S=sqrt( (W_c+W_i_S)^2+W_w_S^2 );%TOTAL WEIGHT

H=zeros(1,saiz);
if vh==1
for i=1:saiz
H(i)=W_T_R*(S(i)^2)/(8*F);
end
elseif vh==2
  
for i=1:saiz
H(i)=W_T_R*a;
end
elseif vh==3
for i=1:saiz
H(i)=UTS/SF; 
end
end

if tt83==1;
    F3=zeros(saiz,52);
    T=zeros(saiz,52);
    a2=zeros(saiz,52);
    phase_distance=zeros(saiz,52);
    for j=1:saiz
        for T_S=2:5:52;
            BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
            DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
            PPP=[1 BBB 0 DDD];
            H_P=roots(PPP);
            for ia=1:3
                if  H_P(ia)>0 &&  H_P(ia)<UTS
                    H_s=H_P(ia);
                    break
                else
                    H_s=0;
                end
            end
            H_s;
            F3(j,T_S)=(W_T_S*(S(j)^2))/(8*H_s);
            T(j,T_S)=H_s+W_T_S*F3(j,T_S);
            a2(j,T_S)=(S(j)^2)/(8*F3(j,T_S));
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
            L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
            phase_distance(j,T_S)=ke*sqrt(F3(j,T_S)+L_I)+(V/150);
        end
    end

    F311=[S' F3];
    T11=[S' T];
    a211=[S' a2];
    phase_distanc11=[S' phase_distance];
    
    %F31(saiz,:)=[];
    %ts(saiz,:)=[];
    %a21(saiz,:)=[];
    %phase_distanc1(saiz,:)=[];
    nnnn=1;
    for i=1:52;
        if F311(1,nnnn)==0;
            F311(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if T11(1,nnnn)==0;
            T11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if a211(1,nnnn)==0;
            a211(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    nnnn=1;
    for i=1:52;
        if phase_distanc11(1,nnnn)==0;
            phase_distanc11(:,nnnn)=[];
            nnnn=nnnn-1;
        end
        nnnn=nnnn+1;
    end
    
    
    aaa1=['Type Of Conductor=' nn '              '     'First Temprature=' num2str(T_R)    ];
    aaa6=[' Temprature =         2          7          12          17          22          27          32          37          42          47          52'];
    
    %aaa7=['Tension=          ' num2str(T(2)) '          ' num2str(T(7)) '           ' num2str(T(7)) '            ' num2str(T(12)) '            ' num2str(T(17)) '            ' num2str(T(22)) '            ' num2str(T(27)) '            ' num2str(T(32)) '            ' num2str(T(37)) '            ' num2str(T(42)) '            ' num2str(T(47)) '           ' num2str(T(52))];
    %aaa71=['phase_distance= ' num2str(phase_distance(2)) '          ' num2str(phase_distance(7)) '           ' num2str(phase_distance(7)) '            ' num2str(phase_distance(12)) '            ' num2str(phase_distance(17)) '            ' num2str(phase_distance(22)) '            ' num2str(phase_distance(27)) '            ' num2str(phase_distance(32)) '            ' num2str(phase_distance(37)) '            ' num2str(phase_distance(42)) '            ' num2str(phase_distance(47)) '           ' num2str(phase_distance(52))];
    %aaa8=['SPAN                     SAG       SAG      SAG        SAG        SAG        SAG        SAG        SAG        SAG       SAG        SAG'];
    %aaa9=[num2str(S) '                  ' num2str(F3(2)) '     ' num2str(F3(7)) '     ' num2str(F3(12)) '     ' num2str(F3(17)) '     ' num2str(F3(22)) '     ' num2str(F3(27)) '     ' num2str(F3(32)) '     ' num2str(F3(37)) '     ' num2str(F3(42)) '     ' num2str(F3(47)) '     ' num2str(F3(52))  ];
    %aaa81=['SPAN          parameter (a)      a         a            a             a             a            a             a            a           a              a   '];
    %aaa91=[num2str(S) '                  ' num2str(a2(2)) '     ' num2str(a2(7)) '     ' num2str(a2(12)) '     ' num2str(a2(17)) '     ' num2str(a2(22)) '     ' num2str(a2(27)) '     ' num2str(a2(32)) '     ' num2str(a2(37)) '     ' num2str(a2(42)) '     ' num2str(a2(47)) '     ' num2str(a2(52))  ];
        
    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end

      
elseif tt83==2
    F3=zeros(1,saiz);
    T=zeros(1,saiz);
    a2=zeros(1,saiz);
    phase_distance=zeros(1,saiz);
    for j=1:saiz
        BBB=((A*e*(S(j)^2)*(W_T_R^2))/(24*(H(j)^2)))+(ALFA*A*e*(T_S-T_R))-H(j);
        DDD=-(A*e*(S(j)^2)*(W_T_S^2))/24;
        PPP=[1 BBB 0 DDD];
        H_P=roots(PPP);
        for ia=1:3
            if  H_P(ia)>0 &&  H_P(ia)<UTS
                H_s=H_P(ia);
                break
            else
                H_s=0;
            end
        end
        H_s;
        F3(j)=(W_T_S*(S(j)^2))/(8*H_s);
        T(j)=H_s+W_T_S*F3(j);
        a2(j)=(S(j)^2)/(8*F3(j));
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
        L_I=n_L_I*L_L_I+Y_L_I;    %tole zanjir maghare
        phase_distance(j)=ke*sqrt(F3(j)+L_I)+(V/150);
    end
    
    F311=[S; F3];
    T11=[S ;T];
    a211=[S ;a2];
    phase_distance1=[S ;phase_distance];

    if vh==1;aaa21=['Equivalent Span=' num2str(S_R)   '           '   'first sag=' num2str(F)  ];disp(aaa21);end
    if vh==2;aaa22=['Equivalent Span=' num2str(S_R)   '           '   'Parameter=' num2str(a)  ];disp(aaa22);end
    if vh==3;aaa23=['Equivalent Span=' num2str(S_R)   '           '   'safety factor=' num2str(SF)  ];disp(aaa23);end
    
end 



if tt83==1
    
    fd=figure('Position',[200 500 640 200]);
   dat=F311(:,2:end);
   colNames={' 2 deg',' 7 deg',' 12 deg',' 17 deg',' 22 deg',' 27 deg',' 32 deg',' 37 deg',...
        ' 42 deg',' 47 deg',' 52 deg'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{50},'Position',[20 20 610 150]);
% handles.T11=T11;
% handles.phase_distanc11=phase_distanc11
% handles.F311=F311;
% handles.a211=a211;
% T11a=T11(1,:);
% phase_distanc11a=phase_distanc11(:,:)';
% F311a=F311(:,:)';
% a211a=a211(:,:)';
%  set(handles.temp,'string',aaa6)
% set(handles.ts,'string',num2str(T11a))
% set(handles.phase_distanc1,'string',num2str(phase_distanc11a))
% set(handles.F31,'string',num2str(F311a))
% set(handles.a21,'string',num2str(a211a))
% set(handles.spq,'string',num2str(S));
elseif tt83==2
    
     fd=figure('Position',[200 500 280 200]);
   dat=F311(2,:)';
   colNames={'Sag'};
    for i=1:saiz
        aa=S(i);
   rowNames(i)={aa};
    end
     t = uitable('Parent',fd,'Data',dat,'ColumnName',colNames,'RowName',rowNames,...
    'ColumnWidth',{50},'Position',[20 20 250 150]);
%     T1a=T11(:,:);
% phase_distance1a=phase_distance1(2,:);
% F31a=F311(2,:);
% a21a=a211(2,:);
%  set(handles.temp,'string',aaa6)
% set(handles.spq,'string',num2str(T11(1,:)));
% set(handles.ts,'string',num2str(T1a))
% set(handles.phase_distanc1,'string',num2str(phase_distance1a))
% set(handles.F31,'string',num2str(F31a))
% set(handles.a21,'string',num2str(a21a))
    
end
