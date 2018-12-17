function varargout = RCxitongfenxi(varargin)
% RCXITONGFENXI M-file for RCxitongfenxi.fig
%      RCXITONGFENXI, by itself, creates a new RCXITONGFENXI or raises the existing
%      singleton*.
%
%      H = RCXITONGFENXI returns the handle to a new RCXITONGFENXI or the handle to
%      the existing singleton*.
%
%      RCXITONGFENXI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RCXITONGFENXI.M with the given input arguments.
%
%      RCXITONGFENXI('Property','Value',...) creates a new RCXITONGFENXI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RCxitongfenxi_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RCxitongfenxi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help RCxitongfenxi

% Last Modified by GUIDE v2.5 26-May-2009 21:35:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RCxitongfenxi_OpeningFcn, ...
                   'gui_OutputFcn',  @RCxitongfenxi_OutputFcn, ...
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


% --- Executes just before RCxitongfenxi is made visible.
function RCxitongfenxi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RCxitongfenxi (see VARARGIN)

% Choose default command line output for RCxitongfenxi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RCxitongfenxi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RCxitongfenxi_OutputFcn(hObject, eventdata, handles) 
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
R= str2num(get(handles.edit1,'String'));
C= str2num(get(handles.edit3,'String'));
u0 = str2num(get(handles.edit4,'String'));
choose1= get(handles.popupmenu1,'value');
choose4= get(handles.popupmenu4,'value');
if (isempty(R)|isempty(C)|isempty(u0)|R<=0|C<=0)
     msgbox('input error,please check','warn','warn');
     return;
end
guidata(hObject, handles);

t=-10:0.01:10;
global k;
switch choose1
    case 1
        k=0;
    case 2
        k=10;
    case 3
        k=100;
end
switch choose4
    case 1
        k=k+1;
    case 2
        k=k+2;
    case 3
        k=k+3;
    case 4
        k=k+4;
    case 5
        k=k+5;
end
axes(handles.axes1);
if (k==1|k==2|k==3|k==4|k==5)
     u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
     plot(t,u);
elseif (k==11|k==12|k==13|k==14|k==15)
     u=1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
     plot(t,u);
elseif (k==101|k==102|k==103|k==104|k==105)
     u=-1/(R*R*C)*exp(-1/(R*C)*t).*(t>=0);
     plot(t,u);
end 
grid on;
axis([-2 7 min(u)-1 max(u)+1]);

function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R= str2num(get(handles.edit1,'String'));
C= str2num(get(handles.edit3,'String'));
u0 = str2num(get(handles.edit4,'String'));
choose1= get(handles.popupmenu1,'value');
choose4= get(handles.popupmenu4,'value');
if (isempty(R)|isempty(C)|isempty(u0)|R<=0|C<=0)
     msgbox('input error,please check','warn','warn');
     return;
end
guidata(hObject, handles);
t=-10:0.01:10;
global k;
switch choose1
    case 1
        k=0;
    case 2
        k=10;
    case 3
        k=100;
end
switch choose4
    case 1
        k=k+1;
    case 2
        k=k+2;
    case 3
        k=k+3;
    case 4
        k=k+4;
    case 5
        k=k+5;
end
axes(handles.axes2);
if (k==1|k==2|k==3|k==4|k==5)
     u=-u0*exp(-1/(R*C)*t).*(t>=0);
     plot(t,u);
elseif (k==11|k==12|k==13|k==14|k==15)
     u=u0*exp(-1/(R*C)*t).*(t>=0);
     plot(t,u);
elseif (k==101|k==102|k==103|k==104|k==105)
     u=-u0/R*exp(-1/(R*C)*t).*(t>=0);
     plot(t,u);
end 
grid on;
axis([-2 7 min(u)-1 max(u)+1]);
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R= str2num(get(handles.edit1,'String'));
C= str2num(get(handles.edit3,'String'));
u0 = str2num(get(handles.edit4,'String'));
choose1= get(handles.popupmenu1,'value');
choose4= get(handles.popupmenu4,'value');
if (isempty(R)|isempty(C)|isempty(u0)|R<=0|C<=0)
     msgbox('input error,please check','warn','warn');
     return;
end
guidata(hObject, handles);
t=-10:0.01:10;
global k;
switch choose1
    case 1
        k=0;
    case 2
        k=10;
    case 3
        k=100;
end
switch choose4
    case 1
        k=k+1;
    case 2
        k=k+2;
    case 3
        k=k+3;
    case 4
        k=k+4;
    case 5
        k=k+5;
end
axes(handles.axes3);

if (k==1)%ok
    u=exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==2) %ok
    u=R*C/(R*C+1)*(R*C*sin(t)+cos(t)-exp(-1/(R*C)*t)).*(t>=0);
    plot(t,u);
    
elseif (k==3)
    u=exp(-1/(R*C)*t).*(t>=0)-exp(-1/(R*C)*(t-5)).*(t>=5);
    plot(t,u);
    
elseif (k==4)
    u=1/(1-3*R*C)*(exp(-1/(R*C)*t)-3*R*C*exp(-3*t)).*(t>=0);
    plot(t,u); 
    
elseif (k==5)
    u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==11)
    u=(1-exp(-1/(R*C)*t)).*(t>=0);
    plot(t,u);
    
elseif (k==12) 
    u=-(1/(R*C+1)*(-sin(t)+R*C*cos(t)-R*C*exp(-1/(R*C)*t))).*(t>=0);
    plot(t,u);
    
elseif (k==13)
    u=(1-exp(-1/(R*C)*t)).*(t>=0)-(1-exp(-1/(R*C)*(t-5))).*(t>=5);
    plot(t,u);
    
elseif (k==14)
    u=1/(1-3*R*C)*(exp(-3*t)-exp(-1/(R*C)*t)).*(t>=0);
    plot(t,u);
    
elseif (k==15)
    u=1/(R*C)*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==101)
    u=1/R*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==102) %ok
    u=C/(R*C+1)*(R*C*sin(t)+cos(t)-exp(-1/(R*C)*t)).*(t>=0);
    plot(t,u);
    
elseif (k==103)
    u=1/R*exp(-1/(R*C)*t).*(t>=0)-1/R*exp(-1/(R*C)*(t-5)).*(t>=5);
    plot(t,u);

elseif (k==104)
    u=1/(R-3*R*R*C)*(exp(-1/(R*C)*t)-3*R*C*exp(-3*t)).*(t>=0);
    plot(t,u); 
     
elseif (k==105)
    u=-1/(R*R*C)*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u); 
end 
grid on;
axis([-2 7 min(u)-1 max(u)+1]);
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on selection change in popupmenu1.
R= str2num(get(handles.edit1,'String'));
C= str2num(get(handles.edit3,'String'));
u0 = str2num(get(handles.edit4,'String'));
choose1= get(handles.popupmenu1,'value');
choose4= get(handles.popupmenu4,'value');
if (isempty(R)|isempty(C)|isempty(u0)|R<=0|C<=0)
     msgbox('input error,please check','warn','warn');
     return;
end
guidata(hObject, handles);
t=-10:0.01:10;
global k;
switch choose1
    case 1
        k=0;
    case 2
        k=10;
    case 3
        k=100;
end
switch choose4
    case 1
        k=k+1;
    case 2
        k=k+2;
    case 3
        k=k+3;
    case 4
        k=k+4;
    case 5
        k=k+5;
end
axes(handles.axes4);

if (k==1)
    u=exp(-1/(R*C)*t).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==2)
    u=R*C/(R*C+1)*(R*C*sin(t)+cos(t)-exp(-1/(R*C)*t)).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==3)
    u=exp(-1/(R*C)*t).*(t>=0)-exp(-1/(R*C)*(t-5)).*(t>=5)-u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==4)
    u=1/(1-3*R*C)*(exp(-1/(R*C)*t)-3*R*C*exp(-3*t)).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u); 
    
elseif (k==5)
    u=-1/(R*C)*exp(-1/(R*C)*t).*(t>=0)-u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==11)
    u=(1-exp(-1/(R*C)*t)).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==12) 
    u=-(1/(R*C+1)*(-sin(t)+R*C*cos(t)-R*C*exp(-1/(R*C)*t))).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==13)
    u=(1-exp(-1/(R*C)*t)).*(t>=0)-(1-exp(-1/(R*C)*(t-5))).*(t>=5)+u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==14) 
    u=1/(1-3*R*C)*(exp(-3*t)-exp(-1/(R*C)*t)).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==15)
    u=1/(R*C)*exp(-1/(R*C)*t).*(t>=0)+u0*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==101)
    u=1/R*exp(-1/(R*C)*t).*(t>=0)-u0/R*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==102) 
    u=C/(R*C+1)*(R*C*sin(t)+cos(t)-exp(-1/(R*C)*t)).*(t>=0)-u0/R*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==103)
    u=1/R*exp(-1/(R*C)*t).*(t>=0)-1/R*exp(-1/(R*C)*(t-5)).*(t>=5)-u0/R*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
    
elseif (k==104) 
    u=1/(R-3*R*R*C)*(exp(-1/(R*C)*t)-3*R*C*exp(-3*t)).*(t>=0)-u0/R*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u); 
    
elseif (k==105)
    u=-1/(R*R*C)*exp(-1/(R*C)*t).*(t>=0)-u0/R*exp(-1/(R*C)*t).*(t>=0);
    plot(t,u);
end 
grid on;
axis([-2 7 min(u)-1 max(u)+1]);
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
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
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


