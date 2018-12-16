function varargout = lianxujuanji(varargin)
% LIANXUJUANJI M-file for lianxujuanji.fig
%      LIANXUJUANJI, by itself, creates a new LIANXUJUANJI or raises the existing
%      singleton*.
%
%      H = LIANXUJUANJI returns the handle to a new LIANXUJUANJI or the handle to
%      the existing singleton*.
%
%      LIANXUJUANJI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIANXUJUANJI.M with the given input arguments.
%
%      LIANXUJUANJI('Property','Value',...) creates a new LIANXUJUANJI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxujuanji_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxujuanji_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help lianxujuanji

% Last Modified by GUIDE v2.5 26-May-2009 21:37:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lianxujuanji_OpeningFcn, ...
                   'gui_OutputFcn',  @lianxujuanji_OutputFcn, ...
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

% --- Executes just before lianxujuanji is made visible.
function lianxujuanji_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxujuanji (see VARARGIN)

% Choose default command line output for lianxujuanji
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lianxujuanji wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = lianxujuanji_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edita1_Callback(hObject, eventdata, handles)
% hObject    handle to edita1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita1 as text
%        str2double(get(hObject,'String')) returns contents of edita1 as a double
global a10;
a10 = str2double(get(hObject,'String'));
guidata(hObject, handles);

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
global b10;
b10 = str2double(get(hObject,'String'));
guidata(hObject, handles);

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


function edita2_Callback(hObject, eventdata, handles)
% hObject    handle to edita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edita2 as text
%        str2double(get(hObject,'String')) returns contents of edita2 as a double
global a20;
a20 = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edita2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edita2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function editb2_Callback(hObject, eventdata, handles)
% hObject    handle to editb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editb2 as text
%        str2double(get(hObject,'String')) returns contents of editb2 as a double
global b20;
b20 = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function editb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
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
syms t;
global x;
global a1;
global b1;
global axs1;
global choose1;
global axs11;
global x1;
global a10;
global b10;

a1=a10;
b1=b10;

if isempty(a1)
    msgbox('input a first','warn','warn');
    return
else
    if length(a1)>1
        msgbox('a should be a single number','warn','warn');
        return
    else
        a1=a1(1);
    end
end
if isempty(b1)
    msgbox('input b first','warn','warn');
    return
else
    if length(b1)>1
        msgbox('b should be a single number','warn','warn');
        return
    else
        b1=b1(1);
    end
end

choose1 = get(handles.popupmenu7,'value');

switch choose1
    case 1
        if b1<=0
           msgbox('b should be positive','warn','warn');
           return
        end
        x=heaviside(t-(a1-b1/2))-heaviside(t-(a1+b1/2));
        axes(handles.axes1);
        axs1=[(a1-b1/2)-3 (a1+b1/2)+3];
        axs11=a1-b1/2-3:0.1:a1+b1/2+3;
        x1=subs(x,t,axs11);
        x1(min(find(isnan(x1))))=1;
        x1(max(find(isnan(x1))))=0;
        stairs(axs11,x1);
        axis([(a1-b1/2-3),(a1+b1/2+3),0,1.1]);
        grid on;
        
    case 2
        if b1<=0
           msgbox('b should be positive','warn','warn');
           return
        end
        x=(heaviside(t-(a1-b1/2))-heaviside(t-a1))*(t-(a1-b1/2))*2/b1+(heaviside(t-a1)-heaviside(t-(a1+b1/2)))*(-t+(a1+b1/2))*2/b1;
        axes(handles.axes1);
        axs1=[(a1-b1/2)-3 (a1+b1/2)+3];      
        axs11=a1-b1/2-3:0.01:a1+b1/2+3;
        x1=subs(x,t,axs11);
        k=find(isnan(x1));
        x1(k(1))=0;
        x1(k(3))=0;
        x1(k(2))=1;
        stairs(axs11,x1);
        axis([(a1-b1/2)-3 (a1+b1/2)+3 0 1]);
        grid on;
           
    case 3
        if a1==0
            msgbox('a can not be zero','warn','warn');
            return
        end
        x=heaviside(a1*t-b1);
        axs1=[b1/a1-3 b1/a1+3];
        axes(handles.axes1);
        axs11=b1/a1-3:0.1:b1/a1+3;
        x1=subs(x,t,axs11);
        if a1>=0
            x1(isnan(x1))=1;
        else
            x1(isnan(x1))=0;
        end
        stairs(axs11,x1);
        axis([b1/a1-3,b1/a1+3,0,1.1]);
        grid on;
    
    case 4
         if a1==0
            msgbox('a can not be zero','warn','warn');
            return
         end
         x=dirac(a1*t-b1);
         axs1=[b1/a1-3 b1/a1+3];
         axs11=(b1/a1-3):0.01:(b1/a1+3);
         axes(handles.axes1);
         x1=subs(x,t,axs11);
         x1(find(x1==inf))=2;
         stairs(axs11,x1);
         axis([(b1/a1-3) (b1/a1+3) 0 1]);
 
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms t;
global y;
global a2;
global b2;
global choose2;
global axs2;
global a20;
global b20;

a2=a20;
b2=b20;

if isempty(a2)
    msgbox('input a first','warn','warn');
    return
else
    if length(a2)>1
        msgbox('a should be a single number','warn','warn');
        return
    else
        a2=a2(1);
    end
end
if isempty(b2)
    msgbox('input b first','warn','warn');
    return
else
    if length(b2)>1
        msgbox('b should be a single number','warn','warn');
        return
    else
        b2=b2(1);
    end
end

choose2 = get(handles.popupmenu2,'value');

switch choose2    
    case 1
        if b2<=0
           msgbox('b should be positive','warn','warn');
           return
        end
        y=heaviside(t-(a2-b2/2))-heaviside(t-(a2+b2/2));
        axes(handles.axes2);
        axs22=(a2-b2/2-3):0.1:(a2+b2/2+3);
        y1=subs(y,t,axs22);
        y1(min(find(isnan(y1))))=1;
        y1(max(find(isnan(y1))))=0;
        stairs(axs22,y1,'r');
        axis([(a2-b2/2-3),(a2+b2/2+3),0,1.1]);
        grid on;
           
    case 2
        if b2<=0
           msgbox('b should be positive','warn','warn');
           return
        end
        y=(heaviside(t-(a2-b2/2))-heaviside(t-a2))*(t-(a2-b2/2))*2/b2+(heaviside(t-a2)-heaviside(t-(a2+b2/2)))*(-t+(a2+b2/2))*2/b2;
        axes(handles.axes2);
        axs22=(a2-b2/2-3):0.01:(a2+b2/2+3);
        y1=subs(y,t,axs22);
        k=find(isnan(y1));
        y1(k(1))=0;
        y1(k(3))=0;
        y1(k(2))=1;
        stairs(axs22,y1,'r');
        axis([a2-b2/2-3 a2+b2/2+3 0 1]);
        grid on;
    
    case 3
        if a2==0
            msgbox('a can not be zero','warn','warn');
            return
        end
        y=heaviside(a2*t-b2);
        axs22=b2/a2-3:0.1:b2/a2+3;
        axes(handles.axes2);
        y1=subs(y,t,axs22);
        if a2>=0
            y1(isnan(y1))=1;
        else
            y1(isnan(y1))=0;
        end
        stairs(axs22,y1,'r');
        axis([b2/a2-3,b2/a2+3,0,1.1]);
        grid on;
 
    case 4
        if a2==0
            msgbox('a can not be zero','warn','warn');
            return
         end
         y=dirac(a2*t-b2);
         axs22=(b2/a2-3):0.01:(b2/a2+3);
         axes(handles.axes2);
         y1=subs(y,t,axs22);
         y1(find(y1==inf))=2;
         stairs(axs22,y1,'r');
         grid on;
         axis([(b2/a2-3) (b2/a2+3) 0 1]);       
  end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1;
global b1;
global a2;
global b2;
global x;
global y;
global choose2;
global choose1;
global axs1;
global axs2;
global axs11;
global x1;
syms t tao;

if isempty(x)
    msgbox('select x first','warn','warn');
    return
end
if isempty(y)
    msgbox('select y first','warn','warn');
    return
end

axes(handles.axes3);
cla reset; 
axes(handles.axes6);
cla reset; 

axs3=axs1;

switch choose2
    
    case 1   %choose2=1
                
        axs3=[min(axs1) max(axs1)+b2-2];
        axs32=min(axs3):0.05:max(axs3)+0.05;
        x1=subs(x,t,axs32);
        
        switch choose1
            case 1               
                x1(min(find(isnan(x1))))=1;
                x1(max(find(isnan(x1))))=0;
                if b1>b2
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2+0.4];
                else
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1+0.4];
                end
            case 2
                axs32=min(axs3):0.01:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                k=find(isnan(x1));
                if numel(k)==3
                    x1(k(1))=0;
                    x1(k(3))=0;
                    x1(k(2))=1;
                else
                    x1(k(1))=0;
                    x1(k(2))=1;
                end
                if b1>b2
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2];
                else
                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1/2+0.4];
                end
            case 3
                if a1>=0
                    x1(isnan(x1))=1;  
                    if (isempty(find(isnan(x1))))==1
                        k=find(x1==0)
                        x1(k(end))=1;
                    end
                else
                    x1(isnan(x1))=0;
                end
                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2+0.4];
            case 4
                 axs32=min(axs3):0.01:max(axs3)+0.05;
                 x1=subs(x,t,axs32);
                 x1(find(x1==inf))=2;
                 axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,1.1];
                 xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
                 xy=simple(simple(int(xy_tao,tao,-100,100)));
        end
        
        axs4=[(min(axs3)+(a2-b2/2))-0.05 (min(axs3)+(a2-b2/2))];
        y2=heaviside(t-(min(axs3)-b2))-heaviside(t-(min(axs3)));
       
                    
                    for i=min(axs3):0.05:max(axs3)+0.05 
                        axes(handles.axes3);  
                        stairs(axs32,x1);
                        hold on;                     
                        y22=subs(y2,t,axs32);
                        y22(find(isnan(y22)))=y22(find(isnan(y22))+1);
                        stairs(axs32,y22,'r');
                        grid on;
                        y2=heaviside(t-(i-b2))-heaviside(t-i);
                        hold off;
                        if (choose1==4)
                            axis tight;
                            xlim([min(axs3),max(axs3)]);
                        else
                            axis([min(axs3),max(axs3),0,1.1]);
                        end
                                       
                        if (choose1==4)
                                axes(handles.axes6);
                                ezplot(xy,axs4);
                                grid on;
                                axs4(2)=axs4(2)+0.05; 
                                axis(axs444);
                                pause(0.001);
                        else
                                axes(handles.axes6);
                                xy_tao=subs(x,t,tao)*subs(y,t,i+(a2-b2/2)-tao);
                                xy=simple(simple(int(xy_tao,tao,-100,100)));
                                axs44=(min(axs3)+(a2-b2/2)):0.05:(i+(a2-b2/2));
                                k=round((i-min(axs3))/0.05+1);
                                xy1(k)=double(xy);
                                plot(axs44,xy1);
                                grid on;
                                axis(axs444);
                                pause(0.001);
                        end
                   end       
                    
     case 2  %choose2=2
                axs3=[min(axs1) max(axs1)+b2-2];
                axs32=min(axs3):0.05:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                
                      switch choose1
                            case 1               
                                x1(min(find(isnan(x1))))=1;
                                x1(max(find(isnan(x1))))=0;
                                if b1>b2
                                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2/2+0.4];
                                else
                                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1];
                                end
                            case 2
                                axs32=min(axs3):0.01:max(axs3)+0.05;
                                x1=subs(x,t,axs32);
                                k=find(isnan(x1));
                                if numel(k)==3
                                    x1(k(1))=0;
                                    x1(k(3))=0;
                                    x1(k(2))=1;
                                else
                                    x1(k(1))=0;
                                    x1(k(2))=1;
                                end
                                if b1>b2
                                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2/2];
                                else
                                    axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b1/2];
                                end
                            case 3
                                if a1>=0
                                    x1(isnan(x1))=1;  
                                    if (isempty(find(isnan(x1))))==1
                                        k=find(x1==0)
                                        x1(k(end))=1;
                                    end
                                else
                                    x1(isnan(x1))=0;
                                end                              
                                axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,b2/2+0.4];
                            case 4
                                 axs32=min(axs3):0.01:max(axs3)+0.05;
                                 x1=subs(x,t,axs32);
                                 x1(find(x1==inf))=2;
                                 axs444=[min(axs3)+(a2-b2/2),max(axs3)+(a2-b2/2),0,1.1];
                                 xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
                                 xy=simple(simple(int(xy_tao,tao,-100,100)));
                     end
         
                    axs4=[(min(axs3)+(a2-b2/2))-0.05 (min(axs3)+(a2-b2/2))];
                    
                    for i=min(axs3):0.05:max(axs3)+0.05
                        axes(handles.axes3);  
                        stairs(axs32,x1);
                        grid on;
                        hold on;           
                        axs33=(i-b2):0.05:i;
                        y22=zeros(length(axs33));
                        for k=1:length(axs33)
                            if (axs33(k)>=(i-b2)&axs33(k)<=(i-b2/2))
                                y22(k)=(axs33(k)-(i-b2))*2/b2;
                            else
                                y22(k)=(i-axs33(k))*2/b2;                               
                            end
                        end
                        plot(axs33,y22,'r');
                        grid on;
                        hold off;
                        axis([min(axs3),max(axs3),0.02,1.1]);                     
                                         
                        if (choose1==4)
                                axes(handles.axes6);
                               
                                ezplot(xy,axs4);
                                grid on;
                                axs4(2)=axs4(2)+0.05;     
                                axis(axs444);
                                pause(0.003);
                        else
                                axes(handles.axes6);
                                xy_tao=subs(x,t,tao)*subs(y,t,i+(a2-b2/2)-tao);
                                xy=simple(simple(int(xy_tao,tao,-100,100)));
                                axs44=(min(axs3)+(a2-b2/2)):0.05:i+(a2-b2/2);
                                k=round((i-min(axs3))/0.05+1);
                                xy1(k)=double(xy);
                                plot(axs44,xy1);
                                grid on;
                                axis(axs444);
                                pause(0.001);
                        end
                    end
                                    
    case 3  %choose2=3
                        
                axs32=min(axs3):0.05:max(axs3)+0.05;
                x1=subs(x,t,axs32);
                
                      switch choose1
                            case 1               
                                x1(min(find(isnan(x1))))=1;
                                x1(max(find(isnan(x1))))=0;
                                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),0,b1+0.4];

                            case 2
                                axs32=min(axs3):0.01:max(axs3)+0.05;
                                x1=subs(x,t,axs32);
                                k=find(isnan(x1));
                                if numel(k)==3
                                    x1(k(1))=0;
                                    x1(k(3))=0;
                                    x1(k(2))=1;
                                else
                                    x1(k(1))=0;
                                    x1(k(2))=1;
                                end

                                    axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),0,b1/2+0.4];
                            case 3
                                if a1>=0
                                    x1(isnan(x1))=1;
                                else
                                    x1(isnan(x1))=0;
                                end
                                axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),-0.05,3.05];
                            case 4
                                 axs32=min(axs3):0.01:max(axs3)+0.05;
                                 x1=subs(x,t,axs32);
                                 x1(find(x1==inf))=2;
                                 axs444=[min(axs3)+(b2/a2),max(axs3)+(b2/a2),0,1.1];
                      end
                                           
        y2=heaviside(-(a2/abs(a2))*t+(a2/abs(a2))*min(axs3));    
        axs4=[b1/a1+b2/a2-3.05 b1/a1+b2/a2-3];
        
        if (choose1==1)|(choose1==2)
                
                for i=min(axs3):0.05:max(axs3)+0.1
                    axes(handles.axes3);  
                    stairs(axs32,x1);
                    hold on;
                  
                    y22=subs(y2,t,axs32);
                    y22(isnan(y22))=1;
                    stairs(axs32,y22,'r');
                    grid on;
                    y2=heaviside(-(a2/abs(a2))*t+(a2/abs(a2))*i);
                    hold off;
                    axis([min(axs3),max(axs3),0,1.1]);
                                   
                    axes(handles.axes6);
                    xy_tao=subs(x,t,tao)*subs(y,t,i+b2/a2-tao);
                    xy=simple(simple(int(xy_tao,tao,-inf,inf)));
                    axs44=(min(axs3)+b2/a2):0.05:i+b2/a2; 
                    k=round((i+b2/a2-(min(axs3)+b2/a2))/0.05+1);
                    xy1(k)=double(xy);
                    plot(axs44,xy1);
                    grid on; 
                    axis(axs444);
                    pause(0.001);
                end
                 
        else %choose1==3,4
                if ((a1/abs(a1))~=(a2/abs(a2)))&(choose1==3)
                    msgbox('x、y都为阶跃函数时,两个a参数必须同号','warn','warn');
                    return
                end      
                    xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
                    xy=simple(simple(int(xy_tao,tao,-100,100)));
                for i=min(axs3):0.05:max(axs3)+0.1
                    axes(handles.axes3);  
                    stairs(axs32,x1);
                    hold on;
              
                    y22=subs(y2,t,axs32);
                    y22(isnan(y22))=1;
                    stairs(axs32,y22,'r');
                    grid on;
                    y2=heaviside(-(a2/abs(a2))*t+(a2/abs(a2))*i);
                    hold off;
                    axis([b1/a1-3,b1/a1+3,0,1.1]);
                    
                    axes(handles.axes6);             
                    ezplot(xy,axs4);
                    grid on;
                    axs4(2)=axs4(2)+0.05;
                    axis(axs444);
                    pause(0.001);
                end
        end  
    
   
    case 4  %choose2=4
        
               axs4=[min(axs3)+b2/a2-0.05 min(axs3)+b2/a2];
                    if choose1==4   %冲激卷积，另外处理  
                        axs43=[b1/a1+b2/a2-0.01 b1/a1+b2/a2  b1/a1+b2/a2+0.01];
                        xy3=[0 10 0];                      
                    else
                        xy_tao=subs(x,t,tao)*subs(y,t,t-tao);
                        xy=simple(simple(int(xy_tao,tao,-inf,inf)))
                    end
                   
                for i=min(axs3):0.05:max(axs3)+0.05
                    
                    axes(handles.axes3)
                    stairs(axs11,x1);
                    hold on;
                    y2=dirac(t-i);
                    axs32=min(axs3):0.005:i;
                    y22=subs(y2,t,axs32);                  
                    y22(end)=2;
                    stairs(axs32,y22,'r');
                    grid on;
                    hold off;
                    axis([min(axs3),max(axs3),0,2]);
                              
                    axes(handles.axes6);
                    if choose1==4
                        axs42=min(axs3)+b2/a2:0.05:i+b2/a2;
                        xy2=zeros(length(axs42));
                        plot(axs42,xy2,'b');
                        grid on;
                        
                        if (i>=(b1/a1));      
                            hold on;
                            stairs(axs43,xy3);
                            grid on;
                            hold off;
                        end
                    else
                        ezplot(xy,axs4);
                        grid on;
                        axs4(2)=axs4(2)+0.05;
                    end     
                    axis([min(axs3)+b2/a2,max(axs3)+b2/a2,0,1.1]);
                    pause(0.0001);
                    
                end
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;
start;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


