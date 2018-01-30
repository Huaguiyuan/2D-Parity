function x = error_detection(a,b,c, x)
for i = 1:a
    row_sum =sum(c(i,:));
        if(mod(row_sum,2) ~= 0)
            row_num=i;
            for j= 1:b
                col_sum=sum(c(:,j));
                if(mod(col_sum,2) ~=0)
                col_num=j;
                x(row_num,col_num)=1;
                end
            end
      
        end
end
return
end

        




