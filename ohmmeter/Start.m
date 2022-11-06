function Start
%Program Summary of this function goes here
% Функция, обрабатывающая события после нажатия кнопки "Старт".
% глобальные параметры
global hEditTimeInterval
global hEditVariance
global hTxtOutCurrent
global hTxtMinEdit
global hTxtMaxEdit

delta_R = str2num(get(hEditVariance, 'String'));
R = randi([300-delta_R, 300+delta_R], [1, 18]);

t = str2num(get(hEditTimeInterval, 'String')) / 1000;

min = R(1);
max = R(1);

for i=1:18 
    current = R(i);
    if R(i) > max
        max = R(i);
    end
    if R(i) < min
        min = R(i);
    end
    set(hTxtMinEdit, 'String', {min});
    set(hTxtMaxEdit, 'String', {max});
    set(hTxtOutCurrent, 'String', {current});
    pause(t);
end

end

