function TA_workspace_var_rename(filename)
%
%   e.g. TA_workspace_var_rename('R11')
%
%

x = load(filename);
names = fieldnames(x);
for i_name = 1:length(names)
    x.([names{i_name}, '_', filename]) = x.(names{i_name});
    x = rmfield(x, names{i_name});
end
save([filename, '_treated.mat'], '-struct', 'x')
clear all

%
%           UTSW
%           Tatsuya J. Arai
%               05/11/2017
%