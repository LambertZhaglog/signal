function varargout = lianxuxitong(varargin)
% LIANXUXITONG M-file for lianxuxitong.fig
%      LIANXUXITONG, by itself, creates a new LIANXUXITONG or raises the existing
%      singleton*.
% 
%      H = LIANXUXITONG returns the handle to a new LIANXUXITONG or the handle to
%      the existing singleton*.
%
%      LIANXUXITONG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIANXUXITONG.M with the given input arguments.
%
%      LIANXUXITONG('Property','Value',...) creates a new LIANXUXITONG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxuxitong_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxuxitong_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lianxuxitong

% Last Modified by GUIDE v2.5 26-May-2009 21:37:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lianxuxitong_OpeningFcn, ...
                   'gui_OutputFcn',  @lianxuxitong_OutputFcn, ...
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

% --- Executes just before lianxuxitong is made visible.
function lianxuxitong_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxuxitong (see VARARGIN)

% Choose default command line output for lianxuxitong
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lianxuxitong wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lianxuxitong_OutputFcn(hObject, eventdata, handles) 
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

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=str2num(get(handles.edit1,'String'));
den=str2num(get(handles.edit3,'String'));
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(den)
    msgbox('denominator should not be empty','warn','warn');
    return
end
axes(handles.axes1);
H=tf(num,den);
[p,z]=pzmap(H);
zplane(z,p);
grid on
[num1,len1]=poly2str(num,'s');
[den2,len2]=poly2str(den,'s');
len=max(len1,len2);
div=['H(s)=',' '*ones(1,5),'-'*ones(1,len+5),' '*ones(1,10)];
Num=[' '*ones(1,10),num1,' '*ones(1,10)];
Den=[' '*ones(1,10),den2,' '*ones(1,10)];
text={Num;div;Den};
if(len>60)
   set(handles.text3,'string','too longcan not show')
else
   set(handles.text3,'string',text)
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=str2num(get(handles.edit1,'String'));
den=str2num(get(handles.edit3,'String'));
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(den)
    msgbox('denominator should not be empty','warn','warn');
    return
end
axes(handles.axes2);
[Hs,W]=freqs(num,den);
magh=abs(Hs);
zerosIndx=find(magh==0);
magh(zerosIndx)=1;
magh=20*log10(magh);
magh(zerosIndx)=-inf;
plot(W,magh);
grid on
xlabel('the characteristics of angular frequency');
ylabel('amplitude-frequency DB');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=str2num(get(handles.edit1,'String'));
den=str2num(get(handles.edit3,'String'));
if isempty(num)
    msgbox('numerator should not be empty','warn','warn');
    return
end
if isempty(den)
    msgbox('denominator should not be empty','warn','warn');
    return
end
axes(handles.axes3);
[Hs,W]=freqs(num,den);
W=W./pi;%
angh=angle(Hs);
angh=unwrap(angh)*180/pi;
plot(W,angh);
grid on
xlabel('the characteristics of angular frequency');
ylabel('phase-frequency RAD');

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


