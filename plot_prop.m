clear all; close all;
h=plot(magic(5));
prop_name(1)={'Marker'};
prop_name(2)={'MarkerFaceColor'};
prop_value(1,1)={'s'};
prop_value(1,2)={get(h(1),'Color')};
prop_value(2,1)={'d'};
prop_value(2,2)={get(h(2),'Color')};
prop_value(3,1)={'o'};
prop_value(3,2)={get(h(3),'Color')};
prop_value(4,1)={'p'};
prop_value(4,2)={get(h(4),'Color')};
prop_value(5,1)={'h'};
prop_value(5,2)={get(h(5),'Color')};
set(h,prop_name,prop_value);