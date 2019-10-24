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
## @deftypefn {} {@var{retval} =} Gaussian2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Lenovo <Lenovo@DESKTOP-MKBBHGE>
## Created: 2018-10-26

function g=Gaussian2(Sig)
N = floor (( 3.7 * Sig ) - 0.5 );
Size = (2*N)+1 ;
g=zeros(Size,Size); 
c = ( Size + 1 ) /2 ;
for i=-(Size-1)/2:(Size-1)/2
  for j=-(Size-1)/2:(Size-1)/2
   
    x=i+c; %row
    y=j+c; %col
    bai = (1 / (2 * (22/7) * (Sig)^2 ));
    g(y,x)=exp(-((x-c)^2+(y-c)^2)/2/Sig/Sig)*bai;
  endfor
endfor
sum1=sum(g(:));

g=g/sum1;
endfunction
