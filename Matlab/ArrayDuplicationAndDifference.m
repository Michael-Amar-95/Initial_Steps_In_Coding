%create an array
var0 = [0 5 9 2];
%create a new array 
var_dup = DuplicateArrayValues(var0);
var1 = var_dup(2:2:end)
var2 = var_dup(1:2:end)
%subtract the first array from the second array
dif1 = var1 - var0
dif2 = var2 - var0