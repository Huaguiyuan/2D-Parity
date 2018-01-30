function c = calc_col_parity(a, b, c)
i=a ;
for j = 1: b
    col_sum = sum(c(:,j));
    c(i,j) = mod(col_sum , 2);
end
return 
end
