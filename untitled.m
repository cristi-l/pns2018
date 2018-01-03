function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 03-Jan-2018 11:45:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global Fs;
global s1;
global s2;
global s3;
global s4;
global s5;
s1=[];
s2=[];
s3=[];
s4=[];
s5=[];
Fs = 10000;


% This sets up the initial plot - only do when we are invisible
% so window can get raised using untitled.


% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function PrintMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to PrintMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function CloseMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to CloseMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                     ['Close ' get(handles.figure1,'Name') '...'],...
                     'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end

delete(handles.figure1)


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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
end

set(hObject, 'String', {'plot(rand(5))', 'plot(sin(1:0.01:25))', 'bar(1:.5:10)', 'plot(membrane)', 'surf(peaks)'});


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1



function F1_Callback(hObject, eventdata, handles)
% hObject    handle to F1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F1 as text
%        str2double(get(hObject,'String')) returns contents of F1 as a double


% --- Executes during object creation, after setting all properties.
function F1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F2_Callback(hObject, eventdata, handles)
% hObject    handle to F2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F2 as text
%        str2double(get(hObject,'String')) returns contents of F2 as a double


% --- Executes during object creation, after setting all properties.
function F2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F3_Callback(hObject, eventdata, handles)
% hObject    handle to F3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F3 as text
%        str2double(get(hObject,'String')) returns contents of F3 as a double


% --- Executes during object creation, after setting all properties.
function F3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F4_Callback(hObject, eventdata, handles)
% hObject    handle to F4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F4 as text
%        str2double(get(hObject,'String')) returns contents of F4 as a double


% --- Executes during object creation, after setting all properties.
function F4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function F5_Callback(hObject, eventdata, handles)
% hObject    handle to F5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F5 as text
%        str2double(get(hObject,'String')) returns contents of F5 as a double


% --- Executes during object creation, after setting all properties.
function F5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M1_Callback(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M1 as text
%        str2double(get(hObject,'String')) returns contents of M1 as a double


% --- Executes during object creation, after setting all properties.
function M1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M2_Callback(hObject, eventdata, handles)
% hObject    handle to M2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M2 as text
%        str2double(get(hObject,'String')) returns contents of M2 as a double


% --- Executes during object creation, after setting all properties.
function M2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M3_Callback(hObject, eventdata, handles)
% hObject    handle to M3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M3 as text
%        str2double(get(hObject,'String')) returns contents of M3 as a double


% --- Executes during object creation, after setting all properties.
function M3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M4_Callback(hObject, eventdata, handles)
% hObject    handle to M4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M4 as text
%        str2double(get(hObject,'String')) returns contents of M4 as a double


% --- Executes during object creation, after setting all properties.
function M4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M5_Callback(hObject, eventdata, handles)
% hObject    handle to M5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M5 as text
%        str2double(get(hObject,'String')) returns contents of M5 as a double


% --- Executes during object creation, after setting all properties.
function M5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs;
global s1;
global s2;
global s3;
global s4;
global s5;

f = str2double(get(handles.F1, 'String'));
m = str2double(get(handles.M1, 'String'));
if isempty(f)
    f=100;
    warndlg('Input must be numerical');
end
if isempty(m)
    m=1;
    warndlg('Input must be numerical');
end

s1=[];
t = 0:1/Fs:0.1;
s1 =sinus(f,0.1,m,Fs);
if (isempty(s2))
    s2=linspace(0,0,length(s1));
end
if (isempty(s3))
    s3=linspace(0,0,length(s1));
end
if (isempty(s4))
    s4=linspace(0,0,length(s1));
end

s5=s1+s2+s3+s4;
spectru(s5,handles.axes7,'Spectrul semnalului suma','f[Hz]','Sk');
grafic(s5,t,handles.axes5,'Semnal suma','timp [s]','Amplitudine [V]');
grafic(s1,t,handles.axes1,'Semnal sin 1','timp [s]','Amplitudine [V]');

% --- Executes on button press in button2.
function button2_Callback(hObject, eventdata, handles)
% hObject    handle to button2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs;
global s1;
global s2;
global s3;
global s4;
global s5;

f = str2double(get(handles.F2, 'String'));
m = str2double(get(handles.M2, 'String'));
if isempty(f)
    f=100;
    warndlg('Input must be numerical');
end
if isempty(m)
    m=1;
    warndlg('Input must be numerical');
end

s2=[];
t = 0:1/Fs:0.1;
s2 =sinus(f,0.1,m,Fs);
if (isempty(s1))
    s1=linspace(0,0,length(s2));
end
if (isempty(s3))
    s3=linspace(0,0,length(s2));
end
if (isempty(s4))
    s4=linspace(0,0,length(s2));
end

s5=s1+s2+s3+s4;
spectru(s5,handles.axes7,'Spectrul semnalului suma','f[Hz]','Sk');
grafic(s5,t,handles.axes5,'Semnal suma','timp [s]','Amplitudine [V]');
grafic(s2,t,handles.axes2,'Semnal sin 2','timp [s]','Amplitudine [V]');

% --- Executes on button press in button3.
function button3_Callback(hObject, eventdata, handles)
% hObject    handle to button3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs;
global s1;
global s2;
global s3;
global s4;
global s5;

f = str2double(get(handles.F3, 'String'));
m = str2double(get(handles.M3, 'String'));
if isempty(f)
    f=100;
    warndlg('Input must be numerical');
end
if isempty(m)
    m=1;
    warndlg('Input must be numerical');
end

s3=[];
t = 0:1/Fs:0.1;
s3 =triunghi(f,0.1,m,Fs);
if (isempty(s1))
    s1=linspace(0,0,length(s3));
end
if (isempty(s2))
    s2=linspace(0,0,length(s3));
end
if (isempty(s4))
    s4=linspace(0,0,length(s3));
end

s5=s1+s2+s3+s4;
spectru(s5,handles.axes7,'Spectrul semnalului suma','f[Hz]','Sk');
grafic(s5,t,handles.axes5,'Semnal suma','timp [s]','Amplitudine [V]');
grafic(s3,t,handles.axes3,'Semnal triunghiular','timp [s]','Amplitudine [V]');

% --- Executes on button press in button4.
function button4_Callback(hObject, eventdata, handles)
% hObject    handle to button4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs;
global s1;
global s2;
global s3;
global s4;
global s5;

f = str2double(get(handles.F4, 'String'));
m = str2double(get(handles.M4, 'String'));
if isempty(f)
    f=100;
    warndlg('Input must be numerical');
end
if isempty(m)
    m=1;
    warndlg('Input must be numerical');
end


s4=[];
t = 0:1/Fs:0.1;
s4 = dreptunghi(f,0.1,m,Fs);
if (isempty(s1))
    s1=linspace(0,0,length(s4));
end
if (isempty(s2))
    s2=linspace(0,0,length(s4));
end
if (isempty(s3))
    s3=linspace(0,0,length(s4));
end

s5=s1+s2+s3+s4;
spectru(s5,handles.axes7,'Spectrul semnalului suma','f[Hz]','Sk');
grafic(s5,t,handles.axes5,'Semnal suma','timp [s]','Amplitudine [V]');
grafic(s4,t,handles.axes4,'Semnal dreptunghiular','timp [s]','Amplitudine [V]');


function spectru (s,axa,titlu,Xlabel,Ylabel)
global Fs;
S = fft(s);
S = abs(S);
S = fftshift(S);
F = linspace(-Fs/2,Fs/2,length(s));
grafic(S,F,axa,titlu,Xlabel,Ylabel);

% --- Executes on button press in buttonFiltrare.
function buttonFiltrare_Callback(hObject, eventdata, handles)
% hObject    handle to buttonFiltrare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Fs;
global s5;

ordin = str2double(get(handles.editOrdin, 'String'));
if isempty(ordin)
    ordin=100;
end
ft1 = str2double(get(handles.editFT1, 'String'));
if isempty(ft1)
    ft1=10;
end
ft2 = str2double(get(handles.editFT2, 'String'));
if isempty(ft2)
    ft2=100;
end

popup_sel_index = get(handles.popupmenu2, 'Value');
switch popup_sel_index
    case 1  %FTJ
        h = coeficientiFTJ(ft1,Fs,ordin); 
        h_ideal = coeficientiFTJIdeal(ft1,Fs,ordin);
    case 2  %FTS
        h = coeficientiFTS(ft1,Fs,ordin);
        h_ideal = coeficientiFTSIdeal(ft1,Fs,ordin);
    case 3  %FTB
        h = coeficientiFTB(ft1,ft2,Fs,ordin);
        h_ideal = coeficientiFTBIdeal(ft1,ft2,Fs,ordin);
    case 4  %FOB
        h = coeficientiFOB(ft1,ft2,Fs,ordin);
        h_ideal = coeficientiFOBIdeal(ft1,ft2,Fs,ordin);
end
sFiltrat = convolutie(s5,h);
t = 0:1/Fs:(length(sFiltrat)-1)/Fs;
grafic(sFiltrat,t,handles.axes9,'Semnal suma filtrat','timp [s]','Amplitudine [V]');
spectru(sFiltrat,handles.axes8,'Spectru semnal suma filtrat','f[Hz]','Sk');


axes(handles.axes6);


F = linspace(-Fs/2,Fs/2,length(h));
plot(F,fftshift(abs(fft(h))),'b')

hold on
F = linspace(-Fs/2,Fs/2,length(h_ideal));
plot(F,h_ideal,'r')

hold off
title('Caracteristica filtrului');
xlabel('f[Hz]');
ylabel('Sk');
grid minor;
legend('H real', 'H ideal');




% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

popup_sel_index = get(handles.popupmenu2, 'Value');
switch popup_sel_index
    case 1
        set([handles.editFT2],'Enable','off');
    case 2
        set([handles.editFT2],'Enable','off');
    case 3
        set([handles.editFT2],'Enable','on');
    case 4
        set([handles.editFT2],'Enable','on');
end


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editOrdin_Callback(hObject, eventdata, handles)
% hObject    handle to editOrdin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editOrdin as text
%        str2double(get(hObject,'String')) returns contents of editOrdin as a double


% --- Executes during object creation, after setting all properties.
function editOrdin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editOrdin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFT1_Callback(hObject, eventdata, handles)
% hObject    handle to editFT1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFT1 as text
%        str2double(get(hObject,'String')) returns contents of editFT1 as a double


% --- Executes during object creation, after setting all properties.
function editFT1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFT1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFT2_Callback(hObject, eventdata, handles)
% hObject    handle to editFT2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFT2 as text
%        str2double(get(hObject,'String')) returns contents of editFT2 as a double


% --- Executes during object creation, after setting all properties.
function editFT2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFT2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function toggleAudio_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to toggleAudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function toggleAudio_OffCallback(hObject, eventdata, handles)
% hObject    handle to toggleAudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set([handles.uipanel1],'Visible','on');
set([handles.uipanel2],'Visible','off');


% --------------------------------------------------------------------
function toggleAudio_OnCallback(hObject, eventdata, handles)
% hObject    handle to toggleAudio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set([handles.uipanel1],'Visible','off');
set([handles.uipanel2],'Visible','on');

% --------------------------------------------------------------------
function openFile_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to openFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global semnal_audio_original
global semnal_audio_filtrat
global Fs_audio

[FileName,PathName] = uigetfile({'*.wav; *.flac; *.mp3'},'Audio files *.wav *.flac *.mp3' ,'');
[semnal_audio_original,Fs_audio]=audioread(strcat(PathName,FileName));
grafic(semnal_audio_original(:,1),linspace(0,length(semnal_audio_original(:,1))/Fs_audio,length(semnal_audio_original(:,1))),handles.axes12,'Semnal audio original','timp [s]','Amplitudine');
grafic(fftshift(abs(fft(semnal_audio_original(:,1)))),linspace(-Fs_audio/2,Fs_audio/2,length(semnal_audio_original(:,1))),handles.axes13,'Semnal audio original','f[Hz]','Amplitudine');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global semnal_audio_original
global semnal_audio_filtrat
global Fs_audio
ordin = str2double(get(handles.edit18, 'String'));
if isempty(ordin)
    ordin=100;
end
ft1 = str2double(get(handles.edit19, 'String'));
if isempty(ft1)
    ft1=10;
end
ft2 = str2double(get(handles.edit20, 'String'));
if isempty(ft2)
    ft2=100;
end
h=[];
popup_sel_index = get(handles.popupmenu4, 'Value');
switch popup_sel_index
    case 1  %FTJ
        h = coeficientiFTJ(ft1,Fs_audio,ordin); 
       % h_ideal = coeficientiFTJIdeal(ft1,Fs_audio,ordin);
    case 2  %FTS
        h = coeficientiFTS(ft1,Fs_audio,ordin);
        %h_ideal = coeficientiFTSIdeal(ft1,Fs_audio,ordin);
    case 3  %FTB
        h = coeficientiFTB(ft1,ft2,Fs_audio,ordin);
      %  h_ideal = coeficientiFTBIdeal(ft1,ft2,Fs_audio,ordin);
    case 4  %FOB
        h = coeficientiFOB(ft1,ft2,Fs_audio,ordin);
       % h_ideal = coeficientiFOBIdeal(ft1,ft2,Fs_audio,ordin);
end

semnal_audio_filtrat = conv(semnal_audio_original(:,1),h,'valid');
%semnal_audio_filtrat(:,2) = conv(semnal_audio_original(:,2),h,'valid');

grafic(semnal_audio_filtrat,linspace(0,length(semnal_audio_filtrat)/Fs_audio,length(semnal_audio_filtrat)),handles.axes15,'Semnal audio filtrat','timp [s]','Amplitudine');
grafic(fftshift(abs(fft(semnal_audio_filtrat))),linspace(-Fs_audio/2,Fs_audio/2,length(semnal_audio_filtrat)),handles.axes14,'Semnal audio filtrat','f[Hz]','Amplitudine');


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
popup_sel_index = get(handles.popupmenu4, 'Value');
switch popup_sel_index
    case 1
        set([handles.edit20],'Enable','off');
    case 2
        set([handles.edit20],'Enable','off');
    case 3
        set([handles.edit20],'Enable','on');
    case 4
        set([handles.edit20],'Enable','on');
end


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonPlayOriginal.
function buttonPlayOriginal_Callback(hObject, eventdata, handles)
% hObject    handle to buttonPlayOriginal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global semnal_audio_original
global Fs_audio
global player

player = audioplayer(semnal_audio_original(:,1),Fs_audio);

playblocking(player);



% --- Executes on button press in buttonPlayFiltrat.
function buttonPlayFiltrat_Callback(hObject, eventdata, handles)
% hObject    handle to buttonPlayFiltrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global semnal_audio_filtrat
global Fs_audio
global player

player = audioplayer(semnal_audio_filtrat(:,1),Fs_audio);

playblocking(player);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton13.
function pushbutton13_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player
stop(player)

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player
stop(player)


% --------------------------------------------------------------------
function info_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to info (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CreateStruct.Interpreter = 'tex';
CreateStruct.WindowStyle = 'modal';

str = sprintf('Lapadus Cristian\nCarjan Diana \n231/3');
h=msgbox(str,CreateStruct);
