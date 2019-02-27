function [nextRow, nextColumn] = downMove (matrixOrder, row, column)
  nextRow = row + 1;
  ## Move down
  if row == matrixOrder
    nextRow = 1;
    ## If we are in the last row, wrap
  endif
  nextColumn = column;
endfunction

