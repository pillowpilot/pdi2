# Unallocated
tic

for i = 1:1024
  for j = 1:1024
    unallocatedMatrix(i, j) = i + 2*j;
  endfor
endfor

time1 = toc;

printf('Unallocated: %d\n', time1); # ~5.17s

# Preallocated
tic

preallocatedMatrix = zeros(1024, 1024);
for i = 1:1024
  for j = 1:1024
    preallocatedMatrix(i, j) = i + 2*j;
  endfor
endfor

time2 = toc;

printf('Preallocated: %d\n', time2); # ~5.02s