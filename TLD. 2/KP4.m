function varargout = KP4(varargin)
% KP4 MATLAB code for KP4.fig
%      KP4, by itself, creates a new KP4 or raises the existing
%      singleton*.
%
%      H = KP4 returns the handle to a new KP4 or the handle to
%      the existing singleton*.
%
%      KP4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KP4.M with the given input arguments.
%
%      KP4('Property','Value',...) creates a new KP4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KP4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KP4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KP4

% Last Modified by GUIDE v2.5 15-Dec-2014 17:20:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KP4_OpeningFcn, ...
                   'gui_OutputFcn',  @KP4_OutputFcn, ...
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


% --- Executes just before KP4 is made visible.
function KP4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KP4 (see VARARGIN)

% Choose default command line output for KP4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KP4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KP4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in qw.
function qw_Callback(hObject, eventdata, handles)
% hObject    handle to qw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
qwe=get(handles.qw,'value');

if qwe==1 
    set(handles.h1,'string','Height above sea level(m)');
    H=str2double(get(handles.Hh,'string'));%input('Height above sea level(m):');
  
    set(handles.vol,'string','Voltage(kv)');
    U_m=str2double(get(handles.um,'string'));%input('Voltage(kv):');
 
    set(handles.text6,'string','pullotion_rate');
    pullotion_rate=get(handles.Hh,'value');%input('enter number of pullotion_rate');
    
     set(handles.tt14,'string','---------');
    set(handles.n1n,'string',' ---------');
    set(handles.tt17,'string','---------');
    set(handles.tt20,'string','---------');
    set(handles.sig,'string','---------');
    set(handles.miu,'string','---------');
%     set(handles.h1,'string','---------');
    set(handles.tt24,'string','---------');
      set(handles.bf,'string','--------');
    set(handles.tt26,'string',' --------');
    set(handles.hg,'string','--------');
    set(handles.fg,'string','--------');
    set(handles.b1,'string','--------');
    set(handles.zt,'string','--------');
    set(handles.tt30,'string','--------');
%     set(handles.h1,'string','--------');

end

if qwe==2 
    set(handles.tt14,'string','kind of  power switch');
    MV=(get(handles.tt15,'value'));%input('kind of  power switch:');
    
    set(handles.n1n,'string',' The average number of towers along the transmission line');
    n=str2double(get(handles.nn,'string'));%input('enter The average number of towers along the transmission line:');
    
    set(handles.tt17,'string','magnitude sigma_f/cfo');
    sigma_CFO0=(get(handles.tt18,'value'));%input('magnitude sigma_f/cfo:');
    
    set(handles.tt20,'string','accecepted eror in 100 switch');
    ac_eror=(get(handles.tt212,'value'));%input('accecepted eror in 100 switch:');
    
    set(handles.sig,'string','Standard deviation of the statistical distribution switch over voltage from EMTP OR EMTDC/PSCAD');
    sigma0=str2double(get(handles.mu,'string'));%input('Standard deviation of the statistical distribution switch over voltage from EMTP OR EMTDC/PSCAD:');
    
    set(handles.miu,'string','average of  statistical distribution  switch over voltage  from EMTP OR EMTDC/PSCAD');
    mu0=str2double(get(handles.sigm,'string'));%input('average of  statistical distribution  switch over voltage  from EMTP OR EMTDC/PSCAD:');
    
    set(handles.h1,'string','Height above sea level(m)');
    H=str2double(get(handles.Hh,'string'));%input('Height above sea level(m):');
    
    set(handles.tt24,'string','kind of  tower');
    K_gg=(get(handles.tt25,'value'));%input('kind of  tower:');
      set(handles.bf,'string','--------');
    set(handles.tt26,'string',' --------');
    set(handles.hg,'string','--------');
    set(handles.fg,'string','--------');
    set(handles.b1,'string','--------');
    set(handles.zt,'string','--------');
    set(handles.tt30,'string','--------');
    set(handles.h1,'string','--------');
    
%         set(handles.h1,'string','------');
    set(handles.vol,'string','------');
    set(handles.text6,'string','-------');

end

if qwe==3 
    set(handles.bf,'string','number of desired outage in per 100km line');
    BFR=str2double(get(handles.bff,'string'));%input('number of desired outage in per 100km line:');
    
    set(handles.tt26,'string',' about thunder');
    TT=(get(handles.tt27,'value'));%input('enter number of about thunder:');
    
    set(handles.hg,'string','Wire guard tower height(m)');
    h_g=str2double(get(handles.GG,'string'));%input('Wire guard tower height(m):');
    
    set(handles.fg,'string','gard wire flash(m)');
    f_g=str2double(get(handles.hgg,'string'));%input('gard wire flash(m):');
    
    set(handles.b1,'string','distance between tow gard wire(m)');
    b=str2double(get(handles.fgg,'string'));%input('distance betwin tow gard wire(m):');
    
    set(handles.zt,'string','surge impedance(10-30)');
    Z_t=str2double(get(handles.bb,'string'));%input('surge impedance(10-30)');
    
    set(handles.tt30,'string','maximum phase-phase voltage');
    U_mm=(get(handles.tt31,'value'));%input('maximum phase-phase voltage:');
    
    set(handles.h1,'string','Height above sea level(m)');
    H=str2double(get(handles.Hh,'string'));%input('Height above sea level(m):');
    
     set(handles.tt14,'string','---------');
    set(handles.n1n,'string',' ---------');
    set(handles.tt17,'string','---------');
    set(handles.tt20,'string','---------');
    set(handles.sig,'string','---------');
    set(handles.miu,'string','---------');
%     set(handles.h1,'string','---------');
    set(handles.tt24,'string','---------');
    
%         set(handles.h1,'string','------');
    set(handles.vol,'string','------');
    set(handles.text6,'string','-------');
    

    
    
end
% Hints: contents = cellstr(get(hObject,'String')) returns qw contents as cell array
%        contents{get(hObject,'Value')} returns selected item from qw


% --- Executes during object creation, after setting all properties.
function qw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in insukind.
function insukind_Callback(hObject, eventdata, handles)
% hObject    handle to insukind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g12=get(handles.insukind,'value')
% Hints: contents = cellstr(get(hObject,'String')) returns insukind contents as cell array
%        contents{get(hObject,'Value')} returns selected item from insukind


% --- Executes during object creation, after setting all properties.
function insukind_CreateFcn(hObject, eventdata, handles)
% hObject    handle to insukind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Hh_Callback(hObject, eventdata, handles)
% hObject    handle to Hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
H=get(handles.Hh,'string');
% Hints: get(hObject,'String') returns contents of Hh as text
%        str2double(get(hObject,'String')) returns contents of Hh as a double


% --- Executes during object creation, after setting all properties.
function Hh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Hh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function um_Callback(hObject, eventdata, handles)
% hObject    handle to um (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
U_m=get(handles.um,'string');
% Hints: get(hObject,'String') returns contents of um as text
%        str2double(get(hObject,'String')) returns contents of um as a double


% --- Executes during object creation, after setting all properties.
function um_CreateFcn(hObject, eventdata, handles)
% hObject    handle to um (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt123.
function tt123_Callback(hObject, eventdata, handles)
% hObject    handle to tt123 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pullotion_rate=get(handles.tt123,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tt123 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt123


% --- Executes during object creation, after setting all properties.
function tt123_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt123 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a9_Callback(hObject, eventdata, handles)
% hObject    handle to a9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a9 as text
%        str2double(get(hObject,'String')) returns contents of a9 as a double


% --- Executes during object creation, after setting all properties.
function a9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a10_Callback(hObject, eventdata, handles)
% hObject    handle to a10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a10 as text
%        str2double(get(hObject,'String')) returns contents of a10 as a double


% --- Executes during object creation, after setting all properties.
function a10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt15.
function tt15_Callback(hObject, eventdata, handles)
% hObject    handle to tt15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MV=get(handles.tt15,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tt15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt15


% --- Executes during object creation, after setting all properties.
function tt15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nn_Callback(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=get(handles.nn,'String');
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


% --- Executes on selection change in tt18.
function tt18_Callback(hObject, eventdata, handles)
% hObject    handle to tt18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sigma_CFO0=get(handles.tt18,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tt18 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt18


% --- Executes during object creation, after setting all properties.
function tt18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt212.
function tt212_Callback(hObject, eventdata, handles)
% hObject    handle to tt212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ac_eror=get(handles.tt212,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tt212 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt212


% --- Executes during object creation, after setting all properties.
function tt212_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigm_Callback(hObject, eventdata, handles)
% hObject    handle to sigm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mu0=get(handles.sigm,'string');
% Hints: get(hObject,'String') returns contents of sigm as text
%        str2double(get(hObject,'String')) returns contents of sigm as a double


% --- Executes during object creation, after setting all properties.
function sigm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mu_Callback(hObject, eventdata, handles)
% hObject    handle to mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sigma0=get(handles.mu,'string');
% Hints: get(hObject,'String') returns contents of mu as text
%        str2double(get(hObject,'String')) returns contents of mu as a double


% --- Executes during object creation, after setting all properties.
function mu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt25.
function tt25_Callback(hObject, eventdata, handles)
% hObject    handle to tt25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 K_gg=get(handles.sigm,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tt25 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt25


% --- Executes during object creation, after setting all properties.
function tt25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bff_Callback(hObject, eventdata, handles)
% hObject    handle to bff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  BFR=get(handles.bff,'string');
% Hints: get(hObject,'String') returns contents of bff as text
%        str2double(get(hObject,'String')) returns contents of bff as a double


% --- Executes during object creation, after setting all properties.
function bff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n11_Callback(hObject, eventdata, handles)
% hObject    handle to n11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n11 as text
%        str2double(get(hObject,'String')) returns contents of n11 as a double


% --- Executes during object creation, after setting all properties.
function n11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt27.
function tt27_Callback(hObject, eventdata, handles)
% hObject    handle to tt27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 TT=get(handles.tt27,'value');
  if TT==1;
     T_d=input('number thunder days in years:');
    
 elseif TT==2
     T_h=input(' thunder hours in years:');
   
 end

% Hints: contents = cellstr(get(hObject,'String')) returns tt27 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt27


% --- Executes during object creation, after setting all properties.
function tt27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T_d=get(handles.edit11,'string');
% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T_h=get(handles.edit12,'string');
% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GG_Callback(hObject, eventdata, handles)
% hObject    handle to GG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 h_g=get(handles.qw,'string');
% Hints: get(hObject,'String') returns contents of GG as text
%        str2double(get(hObject,'String')) returns contents of GG as a double


% --- Executes during object creation, after setting all properties.
function GG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hgg_Callback(hObject, eventdata, handles)
% hObject    handle to hgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f_g=get(handles.hgg,'string');
% Hints: get(hObject,'String') returns contents of hgg as text
%        str2double(get(hObject,'String')) returns contents of hgg as a double


% --- Executes during object creation, after setting all properties.
function hgg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fgg_Callback(hObject, eventdata, handles)
% hObject    handle to fgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=get(handles.fgg,'string');
% Hints: get(hObject,'String') returns contents of fgg as text
%        str2double(get(hObject,'String')) returns contents of fgg as a double


% --- Executes during object creation, after setting all properties.
function fgg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bb_Callback(hObject, eventdata, handles)
% hObject    handle to bb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Z_t=get(handles.bb,'string');
% Hints: get(hObject,'String') returns contents of bb as text
%        str2double(get(hObject,'String')) returns contents of bb as a double


% --- Executes during object creation, after setting all properties.
function bb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tt31.
function tt31_Callback(hObject, eventdata, handles)
% hObject    handle to tt31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
U_mm=get(handles.tt31,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns tt31 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tt31


% --- Executes during object creation, after setting all properties.
function tt31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tt31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%      insulation information          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


insuinfo=[70	70	80	100	120	120	160	160	210	300	80	100	120	160	210;
225	255	255	255	255	255	255	280	280	330	255	255	255	330	330;
146	146	146	146	146	146	146	170	170	195	146	146	146	170	170;
295	295	320	295	320	295	320	370	380	390	440	440	440	525	525;
5.2	4.4	5.4	5.2	5.4	5.2	6.6	8.5	8.5	13	8.3	8.3	8.3	11.5 12];

sigma0=str2double(get(handles.mu,'string'));
n=str2double(get(handles.nn,'String'));
g12=get(handles.insukind,'value');
H=str2double(get(handles.Hh,'string'));
f_g=str2double(get(handles.hgg,'string'));
h_g=str2double(get(handles.GG,'string'));
b=str2double(get(handles.fgg,'string'));
T_h=str2double(get(handles.edit12,'string'));
qwe=get(handles.qw,'value');
pullotion_rate=get(handles.tt123,'value');
MV=get(handles.tt15,'value');
sigma_CFO0=get(handles.tt18,'value');
ac_eror=get(handles.tt212,'value');
 K_gg=get(handles.tt25,'value');
  TT=get(handles.tt27,'value');
  U_mm=get(handles.tt31,'value');
U_m=str2double(get(handles.um,'string'));
mu0=str2double(get(handles.sigm,'string'));
Z_t=str2double(get(handles.bb,'string'));
    BFR=str2double(get(handles.bff,'string'));
    T_d=str2double(get(handles.edit11,'string'));

 for g13=1:15
        if g12==g13
            kindd=insuinfo(1,g13); 
        D_a=insuinfo(2,g13);             % average diameter insulator(mm)
L_i=insuinfo(3,g13)/10;
      l_e_i=insuinfo(4,g13);                      %creep distance insulators(mm)  
        weight=insuinfo(5,g13); 
        end
 end
     if qwe==1                                           %insulation cordination for    constant voltage and temporary over voltage
          
if  g12<11
    m=.5;
else 
    m=.8;
end

if  pullotion_rate==1;
RUSCD=.022;
elseif pullotion_rate==2;
RUSCD=.0278;
elseif pullotion_rate==3;
RUSCD=.0347;
elseif pullotion_rate==4;
RUSCD=.0433;
elseif pullotion_rate==5;
RUSCD=.0537;
end
K_a=exp((m*H)/8150);
if  D_a<300
K_ad=1;
else
K_ad=.0005*D_a+.85;
end
USCD=RUSCD*K_a*K_ad*1000;
l_e=U_m*USCD;
%koi=input('kind of insulator');
%l_e_i=input('creep distance insulators(mm):');    %kind of insulator
%L_i=input('nominal length insulator(cm):');        %Kind of insulator
n1=l_e/l_e_i;    %number of insulator
L1=(n1*L_i)/100;       % length of insulator chain

aaa2=['%number of insulator=' num2str(n1)   '           '   'length of insulator chain=' num2str(L1)  ];


    end

 
       
    
if qwe==2                                %insulation cordination for    switch over voltage
    
 if MV==1;
     E2=2.8;  %switch over voltage
 else E2=1.8;
 end

if sigma_CFO0==1;sigma_CFO=.02;end
if sigma_CFO0==2;sigma_CFO=.05;end
if sigma_CFO0==3;sigma_CFO=.07;end
if  sigma_CFO==.02;
    sigma_CFOm=1;
elseif sigma_CFO==.05;
    sigma_CFOm=2;
else sigma_CFOm=3;
end
gama=1-.16*(E2-1);  %nahveye tozie profile evervoltage dar emtedade line
if (1-(.04*sigma_CFO))>gama
    n_e=(0.4*sigma_CFO*n)/(1-gama);
elseif (1-(.04*sigma_CFO))<gama
    n_e=n;
end
if n_e<25;nem=1;end
if n_e>2.5 && n_e<7.5;nem=2;end
if n_e>7.5 && n_e<15;nem=3;end
if n_e>15 && n_e<35;nem=4;end
if n_e>35 && n_e<75;nem=5;end
if n_e>75 && n_e<150;nem=6;end
if n_e>150 && n_e<350;nem=7;end
if n_e>350 && n_e<750;nem=8;end
if n_e>750 && n_e<1500;nem=9;end
if n_e>1500;nem=10;end

KF=[0.94	0.85	0.79;
0.9617	0.9009	0.8578;
0.9691	0.9189	0.8826;
0.9756	0.9353	0.9057;
0.9833	0.9553	0.9341;
0.9887	0.9693	0.9545;
0.9937	0.9827	0.9742;
0.9998	0.9996	0.9993;
1.0042	1.0118	1.0178;
1.0084	1.0236	1.036];
%xlsread('Kfinfo.xlsx');
%%
%%
%%
K_f=KF(nem,sigma_CFOm);
sigma0_E2=sigma0/E2;
if sigma0_E2<.06;sigma0m_E2=1;end
if sigma0_E2>.06 && sigma0_E2<.085 ;sigma0m_E2=2;end
if sigma0_E2>.085 && sigma0_E2<.125 ;sigma0m_E2=3;end
if sigma0_E2>.125;sigma0m_E2=4;end

KG=[0.9394	0.9151	0.8787	0.8181;
0.9614	0.9459	0.9228	0.8841;
1	1	1	1;
1.0136	1.0191	1.0273	1.0409;
1.0299	1.0419	1.0598	1.0897;
1.0412	1.0577	1.0824	1.1236];

%xlsread('KGinfo.xlsx');
K_G=KG(ac_eror,sigma0m_E2);
V3= E2*K_f*K_G;  %voltage tahamole amari
CFO_A=V3/(1-3*sigma_CFO);
delta=exp((-H)/8150);
 %h=input('the hight of phase hadi in borj(meter)');
 %W=input('width borje(meter)');
 %s=input('s');
 %K_g=1.25+.005*((h/s)-6)+0.25*(exp(((-8)*W)/s)-0.2);   % air distance coefition

 if  K_gg==1;K_g=1.2;end
 if  K_gg==2;K_g=1.25;end
 S_s=ones(1,1000);
S_s(1,1)=.5;%minimum air distance fo get good SSFOR
CFO_S=ones(1,1000);
G0=ones(1,1000);
M=ones(1,1000);
for i=1:1000
  CFO_S(1,i)=(.96*K_g*(3400))/(1+(8/S_s(1,i)));
 G0(1,i)=CFO_S(1,i)/(500*S_s(1,i));
 M(1,i)=1.25*G0(1,i)*(G0(1,i)-.2);
 S_s(1,i+1)=8/(((.96*3400*K_g*(delta^(M(1,i))))/CFO_A)-1);
 if  abs(S_s(1,i+1)-S_s(1,i))<0.01  ;
      S_S=S_s(1,i+1);
      break
 end
end
 
% L_i=input('length of insulator unit(cm):');
 L2=1.1*S_S;         % length of insulator chain
 n2=(100*L2)/L_i;              %%number of insulator
 
aaa6=['%number of insulator=' num2str(n2)   '           '   'length of insulator chain=' num2str(L2)  ];

end

 
    if qwe==3;  
 
  %insulation cordination for    light over voltage
 
 if TT==1;
    
     N_g=.04*(T_d^(1.25));
 elseif TT==2
  
     N_g=.04*(T_h^(1.1));
 end

  h=h_g-((2*f_g)/3);
  
   
  N_l=N_g*(28*(h^(.6))+b)/10;    %average number light barkhordi  be ezaye har 100 km khat
  
  P_Ic=BFR/N_l;
  I_c=31*(((1-P_Ic)/P_Ic)^(1/26));    %bohrani current(KA)
  
  K_pf=0.83;  %zaribe eslahe voltage ferekanse ghodrate khat

 if U_mm==1;U_m=72.5;end
 if U_mm==2;U_m=145;end
 if U_mm==3;U_m=245;end
 if U_mm==4;U_m=420;end
 if U_mm==5;U_m=800;end
  C=.3;    %coopling coefition betwin gard wire and phase hadi
  K_wf=1.31;  %tashih coefitins for wave figure
  
  
  CFO_l=(1/K_wf)*(((1-C)*Z_t*I_c)+((2/3)^(1/2))*K_pf*U_m);  %critical jeraghe voltage of light over voltage
 
  delta=exp((-H)/8150);
  S_l=CFO_l/(605*delta);   %minimum air distance for get good BFR
 
 %L_i=input('length of insulator unit(cm):');
 L_m=1.05*S_l;         % minimum length of insulator chain for intermediate phase
 L_O=S_l;         % minimum length of insulator chain for out phase
 n_m=(100*L_m)/L_i;              %%number of insulator
 n_O=(100*L_O)/L_i;              %%number of insulator
  
  
aaa8=['%number of insulator=' num2str(n_m) ];
aaa9=['minimum length of insulator chain for intermediate phase=' num2str(L_m)  ];
aaa10=['%number of insulator for out phase=' num2str(n_O)   ];  
aaa11=['minimum length of insulator chain for out phase=' num2str(L_O)  ];

    end
    
    
    if qwe==1;  
        
handles.n1=n1;
handles.L1=L1;  
set(handles.n11,'string',n1)
set(handles.a9,'string','------')
set(handles.a10,'string','------')
set(handles.edit4,'string',L1)
% set(handles.aa9,'string','     ')
% set(handles.aa10,'string','    ')
        
    elseif qwe==2;  
        
 handles.n2=n2;
handles.L2=L2;  
set(handles.n11,'string',n2)
set(handles.a9,'string','------')
set(handles.a10,'string','------')
set(handles.edit4,'string',L2)
% set(handles.aa9,'string','     ')
% set(handles.aa10,'string','    ')

    elseif qwe==3;  
  handles.n_m=n_m;
handles.L_m=L_m;
handles.n_O=n_O;
handles.L_O=L_O;  
set(handles.n11,'string',n_m)
set(handles.a9,'string',L_m)
set(handles.a10,'string',n_O)
set(handles.edit4,'string',L_O)
set(handles.aa9,'string',' minimum length of insulator chain for intermediate phase')
set(handles.aa10,'string',' number of insulator for out phase')
end
