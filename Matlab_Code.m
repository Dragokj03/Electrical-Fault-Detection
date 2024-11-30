clc
clear
data= cell(1,1);

i = 1;
for x=1:1:25
for t=0.0:0.02:0.15
    sim('simulation1.slx');
    ans=ans.yout;
    current1=ans.getElement('current_sig_c');
    c=current1.Values.Data;
    data{i}=c;
    size(c);
    i = i + 1;
end
end

arraySize=numel(data{1});
arraySize2=numel(data{2});
numArrays=numel(data);

dataArray = cell2mat(data);
writematrix(dataArray, 'Linear_Faults_Voltage_c_bg_fault.csv')