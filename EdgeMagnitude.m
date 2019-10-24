
## Copyright (C) 2018 Lenovo
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} EdgeMagnitude (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Lenovo <Lenovo@DESKTOP-MKBBHGE>
## Created: 2018-10-27

function retval = EdgeMagnitude (I)
a=Sobel('H');
b=Sobel('V');
x=LinearFilter(I,a,'absolute');
y=LinearFilter(I,b,'absolute');
retval=abs(x+y);
height = columns (retval);
width = rows (retval);
for i = 1:height
  for j = 1:width
    pixl = retval (i , j);
    if (pixl > 255)
      retval (i , j) = 255;
    elseif (pixl < 0)
      retval (i , j) = 0;
    endif
  endfor
endfor
endfunction
