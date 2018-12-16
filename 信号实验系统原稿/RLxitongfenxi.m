function varargout = RLxitongfenxi(varargin)
% RLXITONGFENXI M-file for RLxitongfenxi.fig
%      RLXITONGFENXI, by itself, creates a new RLXITONGFENXI or raises the existing
%      singleton*.
%
%      H = RLXITONGFENXI returns the handle to a new RLXITONGFENXI or the handle to
%      the existing singleton*.
%
%      RLXITONGFENXI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RLXITONGFENXI.M with the given input arguments.
%
%      RLXITONGFENXI('Property','Value',...) creates a new RLXITONGFENXI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RLxitongfenxi_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RLxitongfenxi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help RLxitongfenxi

% Last Modified by GUIDE v2.5 16-May-2010 21:18:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RLxitongfenxi_OpeningFcn, ...
                   'gui_OutputFcn',  @RLxitongfenxi_OutputFcn, ...
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


% --- Executes just before RLxitongfenxi is made visible.
function RLxitongfenxi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RLxitongfenxi (see VARARGIN)

% Choose default command line output for RLxitongfenxi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RLxitongfenxi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RLxitongfenxi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% ---单位冲击响应（DWCJ）----- Executes on button press in pushbutton_DWCJ.
function pushbutton_DWCJ_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_DWCJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R= str2num(get(handles.edit_DZ,'String'));
L= str2num(get(handles.edit_DG,'String'));
i0 = str2num(get(handles.edit_CSDL,'String'));
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)|isempty(L)|isempty(i0)|R<=0|L<=0)
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
     i=R/L*exp(-1/(L/R)*t).*(t>=0);
     plot(t,i);
elseif (k==11|k==12|k==13|k==14|k==15)
     i=-R/L*exp(-1/(L/R)*t).*(t>=0);
     plot(t,i);
elseif (k==101|k==102|k==103|k==104|k==105)
     i=-R*R/L*exp(-1/(L/R)*t).*(t>=0);
     plot(t,i);
end 
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% ---零输入（LSR）--- Executes on button press in pushbutton_LSR.
function pushbutton_LSR_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_LSR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R= str2num(get(handles.edit_DZ,'String'));
L= str2num(get(handles.edit_DG,'String'));
i0 = str2num(get(handles.edit_CSDL,'String'));
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)|isempty(L)|isempty(i0)|R<=0|L<=0)
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
     i=i0*exp(-1/(L/R)*t).*(t>=0);
     plot(t,i);
elseif (k==11|k==12|k==13|k==14|k==15)
     i=-i0*exp(-1/(L/R)*t).*(t>=0);
     plot(t,i);
elseif (k==101|k==102|k==103|k==104|k==105)
     i=-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
     plot(t,i);
end 
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% ---零状态响应（LZT）--- Executes on button press in pushbutton_LZT.
function pushbutton_LZT_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_LZT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R= str2num(get(handles.edit_DZ,'String'));
L= str2num(get(handles.edit_DG,'String'));
i0 = str2num(get(handles.edit_CSDL,'String'));
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)|isempty(L)|isempty(i0)|R<=0|L<=0)
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
if (k==1)
    i=(1-exp(-1/(L/R)*t)).*(t>=0);
    plot(t,i);

elseif (k==2)
    i=(R/(R+L)*sin(t)-L/(R+L)*cos(t)+L/(R+L)*exp(-1/(L/R)*t)).*(t>=0);
    plot(t,i);

elseif (k==3)
    i=(1-exp(-1/(L/R)*t)).*(t>=0)+(1-exp(-1/(L/R)*(t-5))).*(t>=5);
    plot(t,i);

elseif (k==4)
    i=1/(1-3*(L/R))*(exp(-3*t)-exp(-1/(L/R)*t)).*(t>=0);
    plot(t,i);

elseif (k==5)
    i=R/L*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);
    
elseif (k==11)
    i=exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==12) 
    i=(L/(R+L)*cos(t)+L*L/(R*R+R*L)*sin(t)-L/(R+L)*exp(-1/(L/R)*t)).*(t>=0);
    plot(t,i);
    
elseif (k==13)
    i=exp(-1/(L/R)*t).*(t>=0)-exp(-1/(L/R)*(t-5)).*(t>=5);
    plot(t,i);

elseif (k==14)
    i=1/(1-3*(L/R))*(exp(-1/(L/R)*t)-3*L/R*exp(-3*t)).*(t>=0);
    plot(t,i);

elseif (k==15)
    i=-R/L*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==101)
    i=R*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==102)
    i=(L*R/(R+L)*cos(t)+L*L*R/(R*R+R*L)*sin(t)-L*R/(R+L)*exp(-1/(L/R)*t)).*(t>=0);
    plot(t,i);

elseif (k==103)
    i=R*exp(-1/(L/R)*t).*(t>=0)-R*exp(-1/(L/R)*(t-5)).*(t>=5);
    plot(t,i);

elseif (k==104)
    i=R/(1-3*(L/R))*(exp(-1/(L/R)*t)-3*L/R*exp(-3*t)).*(t>=0);
    plot(t,i);

elseif (k==105)
    i=-R*R/L*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i); 
end 
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% ---全响应（QXY）--- Executes on button press in pushbutton_QXY.
function pushbutton_QXY_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_QXY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R= str2num(get(handles.edit_DZ,'String'));
L= str2num(get(handles.edit_DG,'String'));
i0 = str2num(get(handles.edit_CSDL,'String'));
choose1= get(handles.popupmenu_XYXH,'value');
choose4= get(handles.popupmenu_JLXH,'value');
if (isempty(R)|isempty(L)|isempty(i0)|R<=0|L<=0)
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
    i=(1-exp(-1/(L/R)*t)).*(t>=0)+i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==2)
    i=(R/(R+L)*sin(t)-L/(R+L)*cos(t)+L/(R+L)*exp(-1/(L/R)*t)).*(t>=0)+i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==3)
    i=(1-exp(-1/(L/R)*t)).*(t>=0)+(1-exp(-1/(L/R)*(t-5))).*(t>=5)+i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==4)
    i=1/(1-3*(L/R))*(exp(-3*t)-exp(-1/(L/R)*t)).*(t>=0)+i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==5)
    i=(R/L+i0)*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);
    
elseif (k==11)
    i=exp(-1/(L/R)*t).*(t>=0)-i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==12) 
    i=(L/(R+L)*cos(t)+L*L/(R*R+R*L)*sin(t)-L/(R+L)*exp(-1/(L/R)*t)).*(t>=0)-i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==13)
    i=exp(-1/(L/R)*t).*(t>=0)-exp(-1/(L/R)*(t-5)).*(t>=5)-i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==14)
    i=1/(1-3*(L/R))*(exp(-1/(L/R)*t)-3*L/R*exp(-3*t)).*(t>=0)-i0*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==15)
    i=-(R/L+i0)*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==101)
    i=R*exp(-1/(L/R)*t).*(t>=0)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==102)
    i=(L*R/(R+L)*cos(t)+L*L*R/(R*R+R*L)*sin(t)-L*R/(R+L)*exp(-1/(L/R)*t)).*(t>=0)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==103)
    i=R*exp(-1/(L/R)*t).*(t>=0)-R*exp(-1/(L/R)*(t-5)).*(t>=5)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==104)
    i=R/(1-3*(L/R))*(exp(-1/(L/R)*t)-3*L/R*exp(-3*t)).*(t>=0)-i0/(L/R)*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);

elseif (k==105)
    i=-(R*R/L+i0/(L/R))*exp(-1/(L/R)*t).*(t>=0);
    plot(t,i);
end 
grid on;
axis([-2 7 min(i)-1 max(i)+1]);

% --- Executes on selection change in popupmenu_XYXH.
function popupmenu_XYXH_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_XYXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu_XYXH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_XYXH


% --- Executes during object creation, after setting all properties.
function popupmenu_XYXH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_XYXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_JLXH.
function popupmenu_JLXH_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_JLXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu_JLXH contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_JLXH


% --- Executes during object creation, after setting all properties.
function popupmenu_JLXH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_JLXH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_DZ_Callback(hObject, eventdata, handles)
% hObject    handle to edit_DZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_DZ as text
%        str2double(get(hObject,'String')) returns contents of edit_DZ as a double


% --- Executes during object creation, after setting all properties.
function edit_DZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_DZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_DG_Callback(hObject, eventdata, handles)
% hObject    handle to edit_DG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_DG as text
%        str2double(get(hObject,'String')) returns contents of edit_DG as a double


% --- Executes during object creation, after setting all properties.
function edit_DG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_DG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_CSDL_Callback(hObject, eventdata, handles)
% hObject    handle to edit_CSDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_CSDL as text
%        str2double(get(hObject,'String')) returns contents of edit_CSDL as a double


% --- Executes during object creation, after setting all properties.
function edit_CSDL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_CSDL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in pushbutton_BACK.
function pushbutton_BACK_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_BACK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;

