function varargout = lianxufushi(varargin)
% LIANXUFUSHI M-file for lianxufushi.fig
%      LIANXUFUSHI, by itself, creates a new LIANXUFUSHI or raises the existing
%      singleton*.
%
%      H = LIANXUFUSHI returns the handle to a new LIANXUFUSHI or the handle to
%      the existing singleton*.
%
%      LIANXUFUSHI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIANXUFUSHI.M with the given input arguments.
%
%      LIANXUFUSHI('Property','Value',...) creates a new LIANXUFUSHI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxufushi_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxufushi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lianxufushi

% Last Modified by GUIDE v2.5 26-May-2009 21:35:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lianxufushi_OpeningFcn, ...
                   'gui_OutputFcn',  @lianxufushi_OutputFcn, ...
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


% --- Executes just before lianxufushi is made visible.
function lianxufushi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxufushi (see VARARGIN)

% Choose default command line output for lianxufushi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lianxufushi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lianxufushi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in .



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
global x;

a = str2num(get(handles.edita1,'String'));
b = str2num(get(handles.editb1,'String'));
choose1 = get(handles.popupmenu1,'value');
c = str2num(get(handles.edit8,'String'));
d = str2num(get(handles.edit9,'String'));

switch choose1
   
    case 1
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
        errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
           axes(handles.axes3);
           w=0:0.01:d;
           plot(w,-pi/2-b*w);
           hold on;
           w=c:0.01:0;
           plot(w,pi/2-b*w);
           hold off;
           if b>=0
               axis([c d -b*d-5 -b*c+5]);
           else
               axis([c d -b*c-5 -b*d+5]);
           end
           grid on;
     case 2
         if (isempty(a)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
         t=c:0.01:d;
         x=0*t;
         axes(handles.axes3);
         plot(t,x);
         axis([c d -2 2]);
         grid on;
     case 3
         if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
        min=t([1]);
        max=t([length(t)]);
        x=a*rectpuls(t,b);
        axes(handles.axes3);
        plot(t,angle(x),'linewidth',1.5);  
        axis([c d -1 1.2*a+4]);
        grid on
         
      case 4
          if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
        if(b<=0)
            errordlg('b must be positive','care');
            return;
        end
        y=b+j.*t;
        x=a./y;
        axes(handles.axes3);
        plot(t,angle(x));
        grid on;
        axis([c d -2 a/b+2]);
 case 5
     if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
       if (b<=0)
            errordlg('b must be positive','care');
            return;
        end
           syms A  C t w ;
           f=sym('A*Heaviside(t+C)-A*Heaviside(t-C)');
           F=fourier(f);
           A=a;
           C=b;
           F1=simple(F);
           F2=subs(F1,'[A C]',[A C]);
           axes(handles.axes3);
           g=0:0.01:d;
           K=subs(F2,w,g);
           plot(g,angle(K));
           hold on;
           g=c:0.01:0;
           K=subs(F2,w,g);
           plot(g,-angle(K));
           hold off;
           axis([c d -5 5]);    
           grid on;
    case 6
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        if (b<=0|a<=0)
            errordlg('a and b must be positive','care');
            return;
        end
           syms t w A C ;
           f=sym('A*Heaviside(t+C)-A*Heaviside(t)').*t*2*a/b+sym('A*Heaviside(t)-A*Heaviside(t-C)').*(-2*a*t/b); 
           F=fourier(f);
           A=a;
           C=b;
           F1=simple(F)
           F2=subs(F1,'[A C]',[A C]);
           axes(handles.axes3);
           g=c:0.01:d;
           K=0;
           plot(g,K,'b');
           axis([c d -1 1]);    
           grid on;
          
    case 7
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
          if (a<=0)
            errordlg('a must be positive','care');
            return;
        end
           syms t w A C ;
           f=sym('Heaviside(t)').*exp(-A*t).*sin(C*t); 
           F=fourier(f);
           A=a;
           C=b;
           F1=simple(F);
           F2=subs(F1,'[A C]',[A C]);
           axes(handles.axes3);
           g=c:0.01:d;
           K=subs(F2,w,g);
           plot(g,angle(K));
           axis([c d -5 5]);    
           grid on;
          
    case 8
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
        end
         guidata(hObject, handles);
         if(b<=0)
            errordlg('b must be positive','care');
            return;
         end
           syms t w A C ;
           f=sym('Heaviside(t)').*exp(-A*t).*t; 
           F=fourier(f);
           A=a;
           C=b;
           F1=simple(F);
           F2=subs(F1,'[A C]',[A C]);
           axes(handles.axes3);
           g=c:0.01:d;
           K=subs(F2,w,g);
           plot(g,angle(K));
           axis([c d -5 5]);    
           grid on;
end
function edita1_Callback(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita1 as text
%        str2double(get(hObject,'String')) returns contents of edita1 as a double


% --- Executes during object creation, after setting all properties.
function edita1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function editb1_Callback(hObject, eventdata, handles)
% hObject    handle to editb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editb1 as text
%        str2double(get(hObject,'String')) returns contents of editb1 as a double


% --- Executes during object creation, after setting all properties.
function editb1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


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





% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global flag1;
global f;
flag1=1;
a = str2num(get(handles.edita1,'String'));
b = str2num(get(handles.editb1,'String'));
c = str2num(get(handles.edit5,'String'));
d = str2num(get(handles.edit4,'String'));
choose1 = get(handles.popupmenu1,'value');


switch choose1
    case 1
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
        min=t([1]);
        max=t([length(t)]);
        x=a*HEAVISIDE(t-b);
        axes(handles.axes1);
        plot(t,x,'linewidth',2); 
        axis([min,max,-0.5,1.5*a]);
        grid on
       
    case 2
        if (isempty(a)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
 end
guidata(hObject, handles);
         t=c:0.01:d;
         x=1000*(t==0);   
         axes(handles.axes1);
         plot(t,x);
         axis([c d -0.5 1.2*a+6]);
         grid on
  
        
    case 3
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
          t=c:0.01:d; 
          x=a*sin(b*t)./(pi*t);
          axes(handles.axes1);
          plot(t,x);
          axis([c d -1.2*a-6 a*b/pi+6]);
          grid on
        
    
    case 4
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
        min=t([1]);
        max=t([length(t)]);
        axes(handles.axes1);
        y=HEAVISIDE(t);
        if (b<=0)
            errordlg('b must be positive','care');
            return;
        end
        x=a*y.*exp(-b*t);
        plot(t,x);
       axis([min max -1 1.2*a+2]);
       grid on
    case 5  
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
        min=t([1]);
        max=t([length(t)]);
        if (b<=0)
            errordlg('b must be positive','care');
            return;
        end
        x=a*rectpuls(t,2*b);
        axes(handles.axes1);
        plot(t,x,'linewidth',1.5);  
        axis([c d -1 1.2*a+4]);
        grid on
  
    case 6
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
        axes(handles.axes1);
        if (b<=0|a<=0)
            errordlg('a and b must be positive','care');
            return;
        end
        x=a*tripuls(t,b);
        plot(t,x);
        axis([c d -1 1.2*a]);
        grid on
    case 7
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
          t=c:0.01:d;
          if (a<=0)
            errordlg('a must be positive','care');
            return;
        end
          x=exp(-a*t).*sin(b*t).*Heaviside(t);
          axes(handles.axes1);
          plot(t,x);
          axis([c d -1 1]);
          grid on
    case 8
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
           t=c:0.01:d;
           if (b<=0)
            errordlg('b must be positive','care');
            return;
        end
          x=a*exp(-b*t).*t.*Heaviside(t);
          axes(handles.axes1);
          plot(t,x);
          axis([c d -1 0.6*a+2]);
          grid on
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
global x;
a = str2num(get(handles.edita1,'String'));
b = str2num(get(handles.editb1,'String'));
c = str2num(get(handles.edit6,'String'));
d = str2num(get(handles.edit7,'String'));
choose1 = get(handles.popupmenu1,'value');

switch choose1
    case 1
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
          syms t w;
          f=sym('Heaviside(t-a)');
          a=b;
          f=subs(f,'a',a);
          F=fourier(f);
          g=c:0.01:d;
          K=subs(F,w,g);
          axes(handles.axes2);
          plot(g,abs(K));
          axis([c d -2 15]);
          g=c:0.01:d;
          x=1000*(g==0);
          axes(handles.axes2);
          hold on;
          plot(g,x);
          hold off;
          grid on;
    case 2
        if (isempty(a)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
         t=c:0.01:d
         x=a+t*0;
         axes(handles.axes2);
         plot(t,x);
         axis([c d -1.3*a-2 1.3*a+2]);
         grid on;
    case 3
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
        x=a*rectpuls(t,2*b);
        axes(handles.axes2);
        plot(t,x,'linewidth',1.5);  
        axis([c d -1 1.2*a*b+4]);
        grid on
         
    case 4
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        t=c:0.01:d;
         if(b<=0)
            errordlg('b must be positive','care');
            return;
         end
        y=b+j.*t;
        x=a./y;
        axes(handles.axes2);
        plot(t,abs(x));
        grid on;
        axis([c d -2 a/b+2]);
          
    case 5
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        if (b<=0)
            errordlg('b must be positive','care');
            return;
        end
           
           syms A  C t w ;
           f=sym('A*Heaviside(t+C)-A*Heaviside(t-C)');
           F=fourier(f);
           A=a;
           C=b;
           F1=simple(F);
           F2=subs(F1,'[A C]',[A C]);
           axes(handles.axes2);
           ezplot(abs(F2),[c,d]);
           axis([c d -1 2*a*b+5]);
           grid on;
    case 6
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
        if (b<=0|a<=0)
            errordlg('a and b must be positive','care');
            return;
        end
           syms t w A C ;
           f=sym('A*Heaviside(t+C)-A*Heaviside(t)').*t+sym('A*Heaviside(t)-A*Heaviside(t-C)').*(-t); 
           F=fourier(f);
           A=a;
           C=b;
           F2=subs(F,'[A C]',[A C]);
           axes(handles.axes2);
           ezplot(abs(F2),[c d]);
           F3=abs(F2);
           g=c:0.01:d;
           F4=subs(F3,w,g);
           max1=max(F4);
           min1=min(F4);
           axis([c d min1-1 max1+1]);    
           grid on; 
    case 7
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
end
guidata(hObject, handles);
          if(a<=0)
            errordlg('a must be positive','care');
            return;
          end
           syms t w A C ;
           f=sym('Heaviside(t)').*exp(-A*t).*sin(C*t); 
           F=fourier(f);
           A=a;
           C=b;
           F1=simple(F);
           F2=subs(F1,'[A C]',[A C]);
           axes(handles.axes2);
           ezplot(abs(F2),[c,d]);
           axis([c d -0.1 3/a]);    
           grid on; 
    case 8
        if (isempty(a)|isempty(b)|isempty(c)|isempty(d))
       errordlg('input error,please check','care');
            return;
        end
       guidata(hObject, handles);
         if(b<=0)
            errordlg('b must be positive','care');
            return;
        end
           syms t w A C ;
           f=sym('Heaviside(t)').*exp(-A*t).*t; 
           F=fourier(f);
           A=a;
           C=b;
           F1=simple(F)
           F2=subs(F1,'[A C]',[A C]);
           axes(handles.axes2);
           ezplot(abs(F2),[c,d]);
           axis([c d -0.1 1.5/(a.^2)]);    
           grid on; 
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
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


