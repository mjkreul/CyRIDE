%% 
clear, clc
fprintf("Please save airfoil data file as a .dat\n");
filename = input("Filename: ", "s");
new_size = str2double(input("Chord length: ", "s"));
data = readmatrix(filename);
[row, col] = size(data);
new_mat = zeros(row, 3);
new_mat(:,1) = data(:,1)*new_size;
new_mat(:,3) = data(:,2)*new_size;
fout = "output.dat";
writematrix(new_mat, fout)
