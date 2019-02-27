function [nextRow, nextColumn] = upAndRightMove (matrixOrder, row, column)
  nextRow = row - 1;
  ## Move up 
  if row == 1
    nextRow = matrixOrder;
    ## If we are in the first row, wrap
  endif
  nextColumn = column + 1;
  ## Move right
  if column == matrixOrder
    nextColumn = 1;
    ## If we are in the last column, wrap
  endif
endfunction

