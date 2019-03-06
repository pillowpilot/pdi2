function out = erode(image, strElement, centerRow, centerColumn)

  inverted = invert(image);
  reflectedSE = flipud(fliplr(strElement));
  dilated = dilation(inverted, reflectedSE, ...
                      size(strElement)(2) - centerColumn, ...
                      size(strElement)(1) - centerRow);
  out = invert(dilated);
  
endfunction
