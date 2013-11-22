function varargout = prova1(varargin)
% PROVA1 MATLAB code for prova1.fig
%      PROVA1, by itself, creates a new PROVA1 or raises the existing
%      singleton*.
%
%      H = PROVA1 returns the handle to a new PROVA1 or the handle to
%      the existing singleton*.
%
%      PROVA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROVA1.M with the given input arguments.
%
%      PROVA1('Property','Value',...) creates a new PROVA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prova1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prova1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prova1

% Last Modified by GUIDE v2.5 21-Nov-2013 00:15:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prova1_OpeningFcn, ...
                   'gui_OutputFcn',  @prova1_OutputFcn, ...
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


% --- Executes just before prova1 is made visible.
function prova1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prova1 (see VARARGIN)

% Choose default command line output for prova1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prova1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prova1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

varargout{1} = handles.output;




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



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c as text
%        str2double(get(hObject,'String')) returns contents of c as a double


% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in solve.
function solve_Callback(hObject, eventdata, handles)
% hObject    handle to solve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

contents =get(handles.lista,'Value');

switch contents
    case 1
a=str2num(get(handles.a,'String'));
b=str2num(get(handles.b,'String'));
c=str2num(get(handles.c,'String'));
cap=str2num(get(handles.risultato,'String'));

%int=num2str(c/b);
t=0:0.01:pi;
x=a*cos(t);
y=cap*(b-c)*sin(t)

axes(handles.axel);
h=plot(x,y);

for i=0:32
    rotate(h,[0 0 -1],i,[-1.8 0.55 0])
    pause(0.2);
    drawnow;
end
xlabel('x');
ylabel('y');
guidata(hObject,handles);

    case 2
        
        a=str2num(get(handles.a,'String'));
b=str2num(get(handles.b,'String'));
c=str2num(get(handles.c,'String'));
cap=str2num(get(handles.risultato,'String'));

%int=num2str(c/b);
t=0:0.01:pi;
x=a*cos(t);
y=(cap*(b-c)*sin(t))/2*a*b;

axes(handles.axel);
plot(x,y);
xlabel('x');
ylabel('y');
guidata(hObject,handles);

end


% --- Executes on button press in prima.
function prima_Callback(hObject, eventdata, handles)
% hObject    handle to prima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=str2num(get(handles.a,'String'));
b=str2num(get(handles.b,'String'));
c=str2num(get(handles.c,'String'));

d=a-b;
ap=(a-c)*d;

int = num2str(ap);
set(handles.risultato,'String',int);
guidata(hObject,handles);





function risultato_Callback(hObject, eventdata, handles)
% hObject    handle to risultato (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of risultato as text
%        str2double(get(hObject,'String')) returns contents of risultato as a double


% --- Executes during object creation, after setting all properties.
function risultato_CreateFcn(hObject, eventdata, handles)
% hObject    handle to risultato (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lista.
function lista_Callback(hObject, eventdata, handles)
% hObject    handle to lista (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lista contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lista


% --- Executes during object creation, after setting all properties.
function lista_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lista (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in risualtato_uscita.
function risualtato_uscita_Callback(hObject, eventdata, handles)
% hObject    handle to risualtato_uscita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

value=str2num(get(handles.risultato,'String'));
[ciao]=prova_res(value);


%%faccio vedere la funzione esterna prova_gui_axis dentro l'asse axes2
i=3;
j=7;
%[r1,r2]=prova_gui_axis(i,j);
main_sec
%% Prende la variabile dal Workspace
r1 = evalin('base','r1')
r2 = evalin('base','r2')
t1=0:0.01:5;
axes(handles.axes2);
plot(cos(r1*t1),sin(r2*t1));
xlabel('xa');
ylabel('yb');
guidata(hObject,handles);





