function c = calc_row_parity(a, b, c)
j = b ;
for i = 1: a-1
    row_sum = sum(c(i, :));
    c(i,j) = mod(row_sum , 2);
end
return 
end



