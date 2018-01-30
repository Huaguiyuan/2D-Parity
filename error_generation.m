function error_matrix = error_generation(original_matrix,no_of_bit, comb, err_no,n)

error_matrix=original_matrix; 

    for j=1:no_of_bit               
        % convert vector index into matrix index
        row_no = ceil(comb(err_no,j)/n);
        col_no = mod(comb(err_no,j),n);
        if(col_no == 0)
            col_no=n;
        end
        % Change one bit at a time          
     error_matrix(row_no,col_no)= ~original_matrix(row_no,col_no);
    
    end
     
    disp(error_matrix);
   
return
end

