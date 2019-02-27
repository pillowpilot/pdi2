for n = 1:2:15
  n
  candidateMatrix = magicM(n);
  
  # Test 1 - Sum of all entries
  totalSum = sum( 1:n*n );
  if sum( sum( candidateMatrix ) ) ~= totalSum
    printf('Error con la suma de todas las entradas\n');
  endif
  
  # Test 2 - Sum of rows
  transposeCandidate = candidateMatrix';
  correctRowSum = sum( 1:n*n ) / n;
  for row = 1:n
    rowSum = sum( transposeCandidate );
    if rowSum ~= correctRowSum
      printf('Error con la suma de las filas\n');
    endif
  endfor
  
  # Test 3 - Sum of columns
  correctColumnSum = sum( 1:n*n ) / n;
  for column = 1:n
    columnSum = sum( transposeCandidate );
    if columnSum ~= correctColumnSum
      printf('Error con la suma de las columnas\n');
    endif
  endfor
  
endfor
