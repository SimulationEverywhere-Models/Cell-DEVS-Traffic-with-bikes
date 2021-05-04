This folder contains files that can be used to test for an apparent bug. 
The simulator reads the last entry from the .val file. However  this entry 
in the cell, prevents that cell from evaluatin rules properly. In the example 
minimum.drw file we can see last entry at (0,12) does not set to 999 and is stuck
at 80. Even though the only rule is to if (0,0)=80 then (0,0)=999.
