function [xx,tt]=goodcos(ff,dur)
tt = 0:1/(100*ff):dur;
xx=cos(2*pi*ff*tt);