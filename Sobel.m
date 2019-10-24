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
## @deftypefn {} {@var{retval} =} Sobel (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Lenovo <Lenovo@DESKTOP-MKBBHGE>
## Created: 2018-10-27

function [retval] = Sobel (input1)
  if (input1 == 'H')
    retval = [-1,-2,-1;0,0,0;1,2,1];
   elseif (input1 == 'V')
    retval = [1 , 0 ,-1; 2 , 0 , -2 ; 1 , 0 , -1];
   endif
endfunction