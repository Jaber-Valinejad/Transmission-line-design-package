function varargout = fdd2(varargin)
% FDD2 MATLAB code for fdd2.fig
%      FDD2, by itself, creates a new FDD2 or raises the existing
%      singleton*.
%
%      H = FDD2 returns the handle to a new FDD2 or the handle to
%      the existing singleton*.
%
%      FDD2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FDD2.M with the given input arguments.
%
%      FDD2('Property','Value',...) creates a new FDD2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fdd2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fdd2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fdd2

% Last Modified by GUIDE v2.5 31-May-2015 00:21:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fdd2_OpeningFcn, ...
                   'gui_OutputFcn',  @fdd2_OutputFcn, ...
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


% --- Executes just before fdd2 is made visible.
function fdd2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fdd2 (see VARARGIN)

% Choose default command line output for fdd2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fdd2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fdd2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in g122.
function g122_Callback(hObject, eventdata, handles)
% hObject    handle to g122 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g12=get(handles.g122,'value'); 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g12=get(handles.g122,'value'); 
insuinfo=[70    70      80      100     120     120     160     160     210     300     80      100     120     160     210    70      80      100     120     120  123   160     160     210     300     80      100     120     160     210     210     80     100     120     160     210;  %KN
175 210 255 255 280 255 255 280 255 280 280 330 280 330 300 330 330 400 380 380 255 280 255 280 255 280 280 330 300 330 330 255 255 255 330 330;               %GHOTR
110 110 127 146 146 127 146 146 146 146 146 146 170 170 170 170 195 195 205 240 146 146 146 146 146 146 170 170 178 178 195 146 146 146 170 170;                  % SPACE UNIT
190 295 295 295 440 295 295 440 295 440 315 440 340 525 370 525 390 590 525 600 295 440 295 440 295 440 340 525 370 525 390 440 440 440 525 525;                 %CREEPING
5.2     4.4     5.4     5.2     5.4     5.2     6.6     8.5     8.5     13      8.3     8.3     8.3     11.5 12     4.4     5.4     5.2     5.4     5.2     6.6     8.5     8.5     13      8.3     8.3     8.3     11.5     12     12     13      8.3     8.3     8.3     11.5     12];                                     %WEIGHT   


for g13=1:35
        if g12==g13
            kindd=insuinfo(1,g13);
        D_a=insuinfo(2,g13);             % average diameter insulator(mm)
L_i=insuinfo(3,g13)/10;
      l_e_i=insuinfo(4,g13);                      %creep distance insulators(mm)
        weight=insuinfo(5,g13);
        end
    end
    
if  g12<31
    m=.5;
else
    m=.8;
end    
save g12
close(handles.figure1);
