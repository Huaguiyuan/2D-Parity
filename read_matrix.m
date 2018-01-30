function c =read_matrix(a,b,c)
for i = 1 : (a-1)
    for j = 1 : (b-1)
        c(i,j) = input('enter the elements');
    end
end
  return
end