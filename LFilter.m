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
## @deftypefn {} {@var{retval} =} LFilter (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Lenovo <Lenovo@DESKTOP-MKBBHGE>
## Created: 2018-10-26
pkg load image
function [Res] = LFilter (I, Filter, Postproc)
[H, W, Dim]=size(I);
S=size(I);
Res=zeros(S);
[MH, MW, MDim]=size(Filter);
pad=floor(MH/2);
Res = padarray(I,[pad pad]);
inx=MH-pad;
for i = inx:H-pad
    for j = inx:W-pad
        PixResR = I(i-pad:i+pad,j-pad:j+pad, 1).*Filter;
        PixResG = I(i-pad:i+pad,j-pad:j+pad, 2).*Filter;
        PixResB = I(i-pad:i+pad,j-pad:j+pad, 3).*Filter;
        Res(i, j, 1)=sum(PixResR(:));
        Res(i, j, 2)=sum(PixResG(:));
        Res(i, j, 3)=sum(PixResB(:));
    endfor
endfor

if (strcmp(Postproc,'cutoff'))
    for i = inx:H-pad
        for j = inx:W-pad
            if(Res(i,j)>255)
                Res(i,j)=255;
            endif
            if(Res(i,j)<0)
                Res(i,j)=0;
            endif
        endfor
    endfor
elseif (strcmp(Postproc,'absolute')) 
    for i = inx:H-pad
        for j = inx:W-pad
            if(Res(i,j)<0)
                Res(i,j)=Res(i,j)*-1;
            endif
        endfor
    endfor
else
endif


