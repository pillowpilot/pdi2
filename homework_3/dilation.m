function dilated = dilation(image, strElement, centerRow, centerColumn)
  
  imageRows = size(image)(1);
  imageColumns = size(image)(2);
  strEleRows = size(strElement)(1);
  strEleColumns = size(strElement)(2);
  
  dilated = zeros(imageRows, imageColumns);
  for row = 1:imageRows
    for column = 1:imageColumns
      imPixelValue = image(row, column);
      if imPixelValue == 1
        
        for SErow = 1:strEleRows
          for SEcolumn = 1:strEleColumns
            sePixelValue = strElement(SErow, SEcolumn);
            if sePixelValue == 1
              
              dilRow = row + SErow - centerRow;
              dilColumn = column + SEcolumn - centerColumn;
              
              if isValidCoord(dilated, dilRow, dilColumn)
                dilated(dilRow, dilColumn) = 1;
              endif
              
            endif
          endfor
        endfor
        
      endif
    endfor
  endfor
  
endfunction

function ans = isValidCoord(image, row, column)
  rows = size(image)(1);
  columns = size(image)(2);
  ans = true;
  if row < 1 || rows < row || column < 1 || columns < column
    ans = false;
  endif
endfunction
