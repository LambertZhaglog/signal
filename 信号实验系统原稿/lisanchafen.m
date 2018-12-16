function varargout = lisanchafen(varargin)
% LISANCHAFEN M-file for lisanchafen.fig
%      LISANCHAFEN, by itself, creates a new LISANCHAFEN or raises the existing
%      singleton*.
%
%      H = LISANCHAFEN returns the handle to a new LISANCHAFEN or the handle to
%      the existing singleton*.
%
%      LISANCHAFEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LISANCHAFEN.M with the given input arguments.
%
%      LISANCHAFEN('Property','Value',...) creates a new LISANCHAFEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lisanchafen_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lisanchafen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lisanchafen

% Last Modified by GUIDE v2.5 26-May-2009 19:44:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lisanchafen_OpeningFcn, ...
                   'gui_OutputFcn',  @lisanchafen_OutputFcn, ...
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

% --- Executes just before lisanchafen is made visible.
function lisanchafen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lisanchafen (see VARARGIN)

% Choose default command line output for lisanchafen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lisanchafen wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lisanchafen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

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

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
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

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));
f2=str2num(get(handles.edit2,'String'));
f3=str2num(get(handles.edit3,'String'));
K=str2num(get(handles.edit4,'String'));
global h;
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);   
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
   L3=length(f3);
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;
        end
    end
end
N=L3-1;
M=L1-1;
if isempty(f2) 
    zi=zeros(1,M);
else  
    L2=length(f2);
    if ~(L2==M)
        msgbox('number of initial value error','warn','warn');
        return
    else
        zi=f2;
    end
end
L2=length(zi);
n=[-N:K];
x=[n==0];
i=1;
while i<=L1 
    if f1(i)~=0
        break
    end
    i=i+1;
end
if i>L1
    msgbox('a should not be all zeros','warn','warn');
    return
end
if i>K+1
    msgbox('difference order too high','warn','warn');
    return
end
f1=f1./f1(i);
f3=f3./f1(i);
m=[-M:(K-i+1)];
h=zeros(size(m));
for j=1:L2 
    h(j)=0;
end
for j=(L2+1):(K+M-i+2)
    for p=1:L3
        h(j)=h(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
    end
    for q=(i+1):L1
        h(j)=h(j)-f1(q)*h((j-L2-1)+(M+1)-(q-1));
    end
end
text
cla;
axes(handles.axes1)
stem(m,h);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));
f2=str2num(get(handles.edit2,'String'));
f3=str2num(get(handles.edit3,'String'));
K=str2num(get(handles.edit4,'String'));
global hl;
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
   L3=length(f3);
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;
        end
    end
end
N=L3-1;
M=L1-1;
if isempty(f2)
    zi=zeros(1,M);
else  
    L2=length(f2);
    if ~(L2==M)
        msgbox('number of initial value error','warn','warn');
        return
    else
        zi=f2;
    end
end
L2=length(zi);
n=[-N:K];
x=zeros(size(n)); 
i=1;
while i<=L1 
    if f1(i)~=0
        break
    end
    i=i+1;
end
if i>L1
    msgbox('a should not be all zeros','warn','warn');
    return
end
if i>K+1
    msgbox('difference order too high','warn','warn');
    return
end
f1=f1./f1(i);
f3=f3./f1(i);
m=[-M:(K-i+1)];
hl=zeros(size(m));
for j=1:L2 
    hl(j)=zi(j);
end
for j=(L2+1):(K+M-i+2)
    for p=1:L3
        hl(j)=hl(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
    end
    for q=(i+1):L1
        hl(j)=hl(j)-f1(q)*hl((j-L2-1)+(M+1)-(q-1));
    end
end
axes(handles.axes2)
stem(m,hl);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));
f2=str2num(get(handles.edit2,'String'));
f3=str2num(get(handles.edit3,'String'));
K=str2num(get(handles.edit4,'String'));
global hz;
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
   L3=length(f3);
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;
        end
    end
end
N=L3-1;
M=L1-1;
zi=zeros(1,M);
L2=length(zi);
n=[-N:K];
x=[n>=0];
i=1;
while i<=L1 
    if f1(i)~=0
        break
    end
    i=i+1;
end
if i>L1
    msgbox('a should not be all zeros','warn','warn');
    return
end
if i>K+1
    msgbox('difference order too high','warn','warn');
    return
end
f1=f1./f1(i);
f3=f3./f1(i);
m=[-M:(K-i+1)];
hz=zeros(size(m));
for j=1:L2 
    hz(j)=0;
end
for j=(L2+1):(K+M-i+2)
    for p=1:L3
        hz(j)=hz(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
    end
    for q=(i+1):L1
        hz(j)=hz(j)-f1(q)*hz((j-L2-1)+(M+1)-(q-1));
    end
end
axes(handles.axes3)
stem(m,hz);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2num(get(handles.edit1,'String'));
f2=str2num(get(handles.edit2,'String'));
f3=str2num(get(handles.edit3,'String'));
K=str2num(get(handles.edit4,'String'));
global hq;
if isempty(f1)
    msgbox('a should not be empty','warn','warn');
    return
else
    L1=length(f1);
end
if isempty(f3)
    msgbox('b should not be empty','warn','warn');
    return
else
   L3=length(f3);
end
if isempty(K)
    msgbox('K should not be empty','warn','warn');
    return
else
    if length(K)>1
        msgbox('K should be a single number','warn','warn');
        return
    else
        if (K<=0)||(K~=fix(K))
            msgbox('K should be integer number','warn','warn');
            return
        else
            K=K-1;
        end
    end
end
N=L3-1;
M=L1-1;
if isempty(f2) 
    zi=zeros(1,M);
else  
    L2=length(f2);
    if ~(L2==M)
        msgbox('number of initial value error','warn','warn');
        return
    else
        zi=f2;
    end
end
L2=length(zi);
n=[-N:K];
x=[n>=0];
i=1;
while i<=L1 
    if f1(i)~=0
        break
    end
    i=i+1;
end
if i>L1
    msgbox('a should not be all zeros','warn','warn');
    return
end
if i>K+1
    msgbox('difference order too high','warn','warn');
    return
end
f1=f1./f1(i);
f3=f3./f1(i);
m=[-M:(K-i+1)];
hq=zeros(size(m));
for j=1:L2 
    hq(j)=zi(j);
end
for j=(L2+1):(K+M-i+2)
    for p=1:L3
        hq(j)=hq(j)+f3(p)*x((i+j-L2-2)+(N+1)-(p-1));
    end
    for q=(i+1):L1
        hq(j)=hq(j)-f1(q)*hq((j-L2-1)+(M+1)-(q-1));
    end
end
axes(handles.axes5)
stem(m,hq);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global h;
global hl;
global hz;
global hq;
if (isempty(h)|isempty(hl)|isempty(hz)|isempty(hq))
    msgbox('data need calculation','warn','warn');
    return
end
text={...
      ''
      '单位冲激响应序列'
      ''
      [' '*ones(1,12),num2str(h)]
      ''
      '零输入响应序列'
      ''
      [' '*ones(1,12),num2str(hl)]
      ''
      '零状态响应序列'
      ''
      [' '*ones(1,12),num2str(hz)]
      ''
      '全响应序列'
      ''
      [' '*ones(1,12),num2str(hq)]
      ''};
textwin(' ',text)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


