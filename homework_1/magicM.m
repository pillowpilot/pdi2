function magicMatrix = magicM(matrixOrder)
  
  element = 1;
  magicMatrix = zeros(matrixOrder, matrixOrder);
  
  row = 1;
  column = floor(matrixOrder / 2) + 1;
  magicMatrix(row, column) = element;
  element = element + 1;
  
  while element <= matrixOrder*matrixOrder
    [nextRow, nextColumn] = upAndRightMove(matrixOrder, row, column);
    if magicMatrix(nextRow, nextColumn) ~= 0
      [nextRow, nextColumn] = downMove(matrixOrder, row, column);
    endif
    magicMatrix(nextRow, nextColumn) = element;
    row = nextRow;
    column = nextColumn;
    element = element + 1;
  endwhile  
  
endfunction
