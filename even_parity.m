clc;
m = input('Enetr the number DataWords: ');
n = input ('Enetr the length of each DataWord: ');
d = zeros (m +1,n+1);
% error_matrix= zeros(m+1,n+1);
error_matrix = zeros(m+1, n+1);

ref_mat = zeros(m+1,n+1);

%Read Input matrix
d = read_matrix(m +1, n+1, d);

% declaration  for error generation
vector = [];
index=1; 
tot_row = m+1;
tot_col = n+1;
tot_count = 0;
vector_element =1;
total_count = 0;

% Calculating row and column Parity
d =calc_row_parity(m +1, n+1, d);
d=calc_col_parity(m+1, n+1, d);
parity_matrix = d; 

disp('Matrix After generating Parity: ');
disp(d);

% code to generate error


for i=1:tot_row
    for j=1:tot_col
        vector(index)=vector_element;
        vector_element = vector_element +1;
        index=index+1;
    end
end

for no_of_bit_error=1: ((tot_row) * (tot_col))
total_combinations = nchoosek((tot_row*tot_col),no_of_bit_error);
fprintf('TOTAL ERRORS GENERATED FOR %d bit ARE : %d.\n', no_of_bit_error, total_combinations);
total_count= total_count +total_combinations;
combinations=nchoosek(vector,no_of_bit_error);

for i=1:total_combinations
  
   error_matrix =  error_generation(parity_matrix,no_of_bit_error, combinations, i,tot_col);
end
end
   
   
   
   
   
   
      

 
                   
           
   
   
       
   
    
   
    



      
        
        
        