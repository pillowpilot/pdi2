function inverted = invert(binaryMatrix)
  rows = size(binaryMatrix)(1);
  columns = size(binaryMatrix)(2);
  
  inverted = zeros(rows, columns);
  for row = 1:rows
    for column = 1:columns
      inverted(row, column) = 1 - binaryMatrix(row, column);
    endfor
  endfor
  
endfunction