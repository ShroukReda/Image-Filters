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
## @deftypefn {} {@var{retval} =} Gauss1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Lenovo <Lenovo@DESKTOP-MKBBHGE>
## Created: 2018-10-26

function G=Gauss1(Size, Sig)
G=zeros(Size,Size); 
cen = (Size + 1 ) / 2 ;
for i=-(Size-1)/2:(Size-1)/2
  for j=-(Size-1)/2:(Size-1)/2
    x=i+cen; 
    y=j+cen; 
    bai = (1 / (2 * (22/7) * (sSig)^2 ));
    G(y,x)=exp(-((x-cen)^2+(y-cen)^2)/(2*Sig*Sig))*bai;
  endfor
endfor
sum1=sum(G(:));
G=G/sum1;
endfunction
