function varargout = lianxujishu(varargin)
% lianxujishu M-file for lianxujishu.fig
%      lianxujishu, by itself, creates a new lianxujishu or raises the existing
%      singleton*.
%
%      H = lianxujishu returns the handle to a new lianxujishu or the handle to
%      the existing singleton*.
%
%      lianxujishu('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in lianxujishu.M with the given input arguments.
%
%      lianxujishu('Property','Value',...) creates a new lianxujishu or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxujishu_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxujishu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lianxujishu

% Last Modified by GUIDE v2.5 26-May-2009 21:38:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lianxujishu_OpeningFcn, ...
                   'gui_OutputFcn',  @lianxujishu_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before lianxujishu is made visible.
function lianxujishu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxujishu (see VARARGIN)

% Choose default command line output for lianxujishu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lianxujishu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lianxujishu_OutputFcn(hObject, eventdata, handles)
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
T = str2num(get(handles.edit2,'string'));
A = str2num(get(handles.edit3,'string'));
M = str2num(get(handles.edit4,'string'));
if isempty(T)
    msgbox('input T first','warn','warn');
    return
elseif T<=0
    msgbox('T should be positive','warn','warn');
    return
end
if isempty(A)
    msgbox('input A first','warn','warn');
    return
elseif A<=0
    msgbox('A should be positive','warn','warn');
    return
end
if isempty(M)
    msgbox('input M first','warn','warn');
    return
elseif M<=0
    msgbox('M should be positive','warn','warn');
    return
end
choose = get(handles.popupmenu1,'value');
axes(handles.axes1);
cla;
if choose == 1
    w0=2*pi/T;  
    for i=1:1:M
        line([(i-1)*T,i*T-T/2],[A,A]);
        axis([0 M*T -2*A 2*A]);
        hold on;
        X=i*T-T/2;
        Y=-A:A/500:A;
        line(X,Y);
        hold on;
        line([i*T-T/2,i*T],[-A,-A]);
        hold on;
        X=i*T;
        Y=-A:A/500:A;
        line(X,Y);
        axis([0 M*T -2*A 2*A]);
    end
else
    hold off
    for j=1:1:M;
        t=(j-1.5)*T:T/500:(j-0.5)*T;    
        plot(t,(A-2*A/T*abs(t-(j-1)*T)),'k');
        hold on;
     end 
end

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



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
N = str2num(get(handles.edit1,'string'));
T = str2num(get(handles.edit2,'string'));
A = str2num(get(handles.edit3,'string'));
M = str2num(get(handles.edit4,'string'));
if isempty(T)
    msgbox('input T first','warn','warn');
    return
elseif T<=0
    msgbox('T should be positive','warn','warn');
    return
end
if isempty(A)
    msgbox('input A first','warn','warn');
    return
elseif A<=0
    msgbox('A should be positive','warn','warn');
    return
end
if isempty(M)
    msgbox('input M first','warn','warn');
    return
elseif M<=0
    msgbox('M should be positive','warn','warn');
    return
end
if isempty(N)
    msgbox('input N first','warn','warn');
    return
elseif (N<=0)||(fix(N)~=N)
    msgbox('N should be positive integer','warn','warn');
    return
end
choose = get(handles.popupmenu1,'value');
axes(handles.axes2);
cla;
if choose == 1
    w0=2*pi/T;
    for i=1:N
        if i==1
            stem(0,0,'filled');
            hold on;
        else
            stem(i-1,mod(i+1,2)*4*A/pi/(i-1),'filled');
            axis([0 N 0 1+fix(4*A/pi)]);
            hold on;
        end
    end
% for m=1:1:M
%     P=linspace(0,0,N+1);
%         t=(m-1)*T:T/500:m*T;
%         plot(t,P([1]),'r');
%         hold on
%     for i=2:1:fix(N/2+1.4)
%         t=(m-1)*T:T/500:m*T;
%         plot(t,4*A/pi/(2*i-1)*sin((2*i-1)*w0*t),'k');
%         axis([0 M*T -1.5*A 1.5*A]);
%         hold on;
%     end
% end
else
    tor=T;w0=2*pi/T;syms t k;
    xet= (A-2*A/T*abs(t))*exp(-j*k* w0*t); 
    a=int(xet,t,-tor/2,tor/2)/T;
    n=[-N:N];
    n=n+eps ;
    ak=subs(a,n);
    ak([N+1])=A/2;
    P=linspace(0,0,N+1);
    for i=1:N+1;
        P([i])=ak([i+N]);
    end
    for i=1:N
        if i==1
            stem(0,P([1]),'filled');
            hold on;
        else
            stem(i-1,2*P([i]),'filled');
            axis([0 N 0 P([1])]);
            hold on;
        end
%     for n=1:1:M
%         t=(n-1.5)*T:T/500:(n-0.5)*T;       
%         plot(t,P([1]),'r');
%         hold on
%     for i=2:1:N
%         plot(t,2*P([i])*cos((i-1)*w0*t),'k');
%         axis([-T M*T -0.8*A 0.8*A])
%         hold on
%     end
end
end

% --- Executes on button press in pushbutton2.



function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
N = str2num(get(handles.edit1,'string'));
T = str2num(get(handles.edit2,'string'));
A = str2num(get(handles.edit3,'string'));
M = str2num(get(handles.edit4,'string'));
if isempty(T)
    msgbox('input T first','warn','warn');
    return
elseif T<=0
    msgbox('T should be positive','warn','warn');
    return
end
if isempty(A)
    msgbox('input A first','warn','warn');
    return
elseif A<=0
    msgbox('A should be positive','warn','warn');
    return
end
if isempty(M)
    msgbox('input M first','warn','warn');
    return
elseif M<=0
    msgbox('M should be positive','warn','warn');
    return
end
if isempty(N)
    msgbox('input N first','warn','warn');
    return
elseif (N<=0)||(fix(N)~=N)
    msgbox('N should be positive integer','warn','warn');
    return
end
choose = get(handles.popupmenu1,'value');
axes(handles.axes3);
cla;
if choose == 1
    w0=2*pi/T;  
    t=0:T/500:M*T;
    sum=0;
    for i=1:1:fix((N-1)/2+0.5);
        sum=sum+4*A/pi/(2*i-1)*sin((2*i-1)*w0*t);
    end
plot(t,sum,'k');
axis([0 M*T -2*A 2*A]);
else
    tor=T;w0=2*pi/T;syms t k;  
    xet= (A-2*A/T*abs(t))*exp(-j*k* w0*t); 
    a=int(xet,t,-tor/2,tor/2)/T; 
    n=[-N:N]; n=n+eps; ak=subs(a,n); ak([N+1])=A/2;
    t=-T/2:T/100:T/2;
    P=linspace(0,0,N+1);
    for i=1:N+1;
        P([i])=ak([i+N]);
    end
    for n=1:1:M
        sum=P([1]);
        for i=2:1:N
            t=(n-1.5)*T:T/500:(n-0.5)*T;    
            sum=sum+2*P([i])*cos((i-1)*w0*t);
        end
        plot(t,sum,'k');
        axis([-T M*T 0 A])
        hold on
     end
end

% --- Executes on button press in pushbutton3.


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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.



% --- Executes on selection change in popupmenu1.
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


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


