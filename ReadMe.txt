INTRODUCTION:
This project simulates  interation between car and bicycles on a narrow road. 
The porject contains the following files:
.
├── BikeSlowAccelerateRandomSpeed.bat
├── BikeSlowAccelerateRandomSpeed.drw
├── BikeSlowAccelerateRandomSpeed.log
├── BikeSlowAccelerateRandomSpeed.val
├── BikeSlowAccelerateRandomSpeed.webm
├── BikeSlowAccelerateRandomSpeedDRW.bat
├── bug_test
│   ├── minimum.drw
│   ├── minimum.log
│   ├── minimumtest.bat
│   ├── minimumtest.ma
│   ├── minimumtestDRW.bat
│   └── Readme.txt
├── car_path.val
├── CarAndBike.bat
├── CarAndBike.drw
├── CarAndBike.log
├── CarAndBike.val
├── CarAndBike.webm
├── CarAndBikeDRW.bat
├── CarbikeSlowDown.bat
├── CarbikeSlowDown.drw
├── CarbikeSlowDown.log
├── CarbikeSlowDown.val
├── CarbikeSlowDown.webm
├── CarbikeSlowDownDRW.bat
├── CarSlowStopAccelerate.bat
├── CarSlowStopAccelerate.drw
├── CarSlowStopAccelerate.log
├── CarSlowStopAccelerate.val
├── CarSlowStopAccelerate.webm
├── CarSlowStopAccelerateDRW.bat
├── CarSlowStopAccelerateDRWbat
├── cygwin1.dll
├── form_TrafficwithBike.doc
├── ReadMe.txt
├── rules.inc
├── trafficPath.drw
├── TrafficwithBike_Report.docx
├── trafficwithbikes.bat
├── trafficwithbikes.log
├── trafficwithbikes.ma
├── trafficwithbikesDRW.bat
└── trafficwithbikesPal.pal


FILE DESCRIPTION:

There are two types of bat files. bat files with the DRW at end draw the results of the simulation
from the generated log file. bat file without the DRW at end generates the log files and simulates 
the model. The bat file without the DRW suffix at end should be run first followed by the bat file 
with the DRW suffix.

The bat files follow the path to simuOrig.exe and drawlog.exe files in cd++ builder files in the 
Eclipse directory. Installation instruction were followed as mentioned on cd++ website. 

The .ma file contains the model and the rules associated with the model.

The .val file contains the initial values of the model.

The .log file contains the output of the simulation.

The .drw file contains a text based graphical representation of the simulation.

The .pal file contains color pallete for the cell values.

The rules.inc file is a macro file that contains macros for the .ma file to use.

The .webm files are graphical results of the simulation. Genereated using the online Cell-Devs viewwer 
tool.

The .docx files contain the report and the form for this assignment.

RUNNING A SIMULATION:

To run any simulation.
1) Copy the .val file associated with it. 
2) Rename the .val file to car_path.val.
3) Run the associated .bat files.
	- Run the bat file without the DRW suffix first
	- Run the bat file with the DRW suffix second.