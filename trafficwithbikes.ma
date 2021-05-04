#include (rules.inc)

[top]
components : path 

[path]
type : cell
dim : (2,50)
delay : transport
defaultDelayTime : 1
initialvalue : -1.0
border : wrapped

neighbors : (0,0) (0,1) (0,2) (0,3) 
neighbors : (0,-1) (0,-2) (0,-3)

neighbors : (0,4) (0,5) (0,6)  
neighbors : (0,-4) (0,-5) (0,-6)
neighbors : (-1,0) (-1,1) (-1,2) (-1,3) (-1,4) (-1,5) (-1,6)
neighbors : (-1,7) (-1,8) (-1,9) (-1,10) (-1,11) 
neighbors : (-1,-1) (-1,-2) (-1,-3) (-1,-4) (-1,-5) (-1,-6)


zone : bike-rule { (0,0)..(0,49) }
zone : car-rule { (1,0)..(1,49) }

initialCellsValue : car_path.val



% =================================================================
% ================ CAR RULES ======================================
% =================================================================

[bike-rule]

% use cellpos to diffrentiate between car and bike lanes. 1 for cars 0 for bike
% cars travel twice as fast as bike, first we have bike ruels then car rules 
% ACCELERATION , SLOWING DOWN, random speed adjustment, change cell positions.
$ The bike and car are in different zones. So these rules cannot apply to car lane

% Bike rules lane 0  



% ================ ACCELERATION ===================================
% =================================================================

rule : {if(random < 0.9,101,100)} 1 { cellPos(0)=0 and (0,0)=0 and ((0,1)=-1 )}
rule : {if(random < 0.9,111,114)} 1 { cellPos(0)=0 and (0,0)=-1 and ((0,-1)=1 and (0,1)=-1 )}



% ================  Slow down cells due to bike  ==================
% =================================================================

rule : {102} 1 { cellPos(0)=0 and (0,0)=-1 and (((0,-1)=1 or (0,-1)=2 ) and ((0,1)>-1 and (0,1)<3 ))}
rule : {112} 1 { cellPos(0)=0 and (0,0)=-1 and (((0,-1)=2 and ((0,2)!=-1)) and ((0,1)>-1 and (0,1)<3 ))}




% ================ DEFAULT ADVANCE CELLS ==========================
% =================================================================

rule : {110} 1 { cellPos(0)=0 and (0,0)=-1 and ((0,-1)=1)}
rule : {if(random < 0.9 ,120,113)} 1 { cellPos(0)=0 and (0,0)=-1 and ((0,-2)=2) and ((0,-1)=-1) }
rule : {-1} 1 { cellPos(0)=0 and (0,0)=-1 }



% ================ CLEAR CELLS ==================================
% ===============================================================

% clears the previous cell
rule : {-1} 0 { cellPos(0)=0 and (((0,0)=1 ) and (0,1)=110) }
rule : {-1} 0 { cellPos(0)=0 and (((0,0)=2 ) and (0,2)=120) }

% clear for accelerating cell
rule : {-1} 0 { cellPos(0)=0 and (((0,0)=1 ) and (0,1)=111) }

%clear for slowing down cell
rule : {-1} 0 { cellPos(0)=0 and (((0,0)=1 ) and (0,1)=102) }
rule : {-1} 0 { cellPos(0)=0 and (((0,0)=2 ) and (0,1)=112 or (0,1)=102) }

%clear for random slowing down

rule : {-1} 0 { cellPos(0)=0 and (((0,0)=2 ) and (0,2)=113)}
rule : {-1} 0 { cellPos(0)=0 and (((0,0)=1 ) and (0,1)=114)}


% ================ SET NEW CELL VALUES ======================
% ===========================================================

% sets the new cell to the proper value  
rule : { 0} 0 { cellPos(0)=0 and ((0,0)=100 or (0,0)=102)}
rule : { 1} 0 { cellPos(0)=0 and ((0,0)=110 or (0,0)=101 or (0,0)=112 or (0,0)=113 or (0,0)=114)}
rule : { 2} 0 { cellPos(0)=0 and ((0,0)=120 or (0,0)=111 )}

rule : {(0,0)} 0 {cellPos(0)=0 and t}



% =================================================================
% ================ CAR RULES ======================================
% =================================================================
% CAR rules lane 1

[car-rule]


% ================ ACCELERATION ===================================
% =================================================================

rule : {221} 1 { cellPos(0)=1 and (0,0)=0 and ((0,1)=-1 and (0,2)=-1 )}
rule : {241} 1 { cellPos(0)=1 and (0,0)=-1 and ((0,-2)=2 and (0,-1)=-1 ) and ((0,1)=-1 and (0,2)=-1) and #macro(BikeCheckTwoCells)}
rule : {261} 1 { cellPos(0)=1 and (0,0)=-1 and (0,-4)=4 and (0,-3)=-1 and (0,-2)=-1 and (0,-1)=-1 and (0,1)=-1 and (0,2)=-1 and (0,3)=-1 and (0,4)=-1 and #macro(BikeCheckFourCells)}



% ================ SLOWING DOWN DUE TO CARS ======================
% ================================================================
rule : {200} 1 {cellPos(0)=1 and (0,0)> 0 and (0,0)<7 and (0,1)>-1 and (0,1)<7 and #macro(BikeCheckTwoCells)}
rule : {201} 1 {cellPos(0)=1 and (0,0)=-1 and ((0,-1)> 0 and (0,-1)<7) and ((0,1)>-1 and (0,1)<7) and #macro(BikeCheckTwoCells)}           
rule : {202} 1 {cellPos(0)=1 and (0,0)=-1 and ((0,-2)>0 and (0,-2)<7) and (0,-1)=-1 and (((0,1)>-1 and (0,1)<7) or ((0,2)>-1 and (0,2)<7)) and #macro(BikeCheckTwoCells)}
rule : {223} 1 {cellPos(0)=1 and (0,0)=-1 and ((0,-3)=4 or (0,-3)=6) and #macro(SlowTwoTwoThree) and #macro(BikeCheckTwoCells)}
rule : {243} 1 {cellPos(0)=1 and (0,0)=-1 and ((0,-4)=6) and #macro(SlowTwoFourThree) and #macro(BikeCheckFourCells)}
rule : {244} 1 {cellPos(0)=1 and (0,0)=-1 and ((0,-5)=6) and #macro(SlowTwoFourFour) and #macro(BikeCheckFourCells)}


% ================  Slow down cells due to bike  ==================
% =================================================================

rule : {222} 1 { cellPos(0)=1 and (0,0)=-1 and ((0,-2) > 0 and (0,-2) < 7) and #macro(BikeSlowTwo)} %if bike within 0-5 cells max speed is 2
rule : {242} 1 { cellPos(0)=1 and (0,0)=-1 and ((0,-4) > 0 and (0,-4) < 7) and #macro(BikeSlowFour)} %if bike within 6-11 cells max speed is 4

rule : {224} 1 { cellPos(0)=1 and (0,0)=-1 and (0,-1)=-1 and (0,-2)=2 and ((-1,-2)!=-1 or (-1,-1)!=-1) and (-1,0)=-1 and (-1,1)=-1 and (-1,2)=-1 and (-1,3)=-1}

% ================ DEFAULT ADVANCE CELLS ========================
% ===============================================================

rule : { 226} 1 { cellPos(0)=1 and (0,0)=-1 and (0,-2)=2 and #macro(DACTwo) and #macro(BikeCheckTwoCells)}
rule : { 246} 1 { cellPos(0)=1 and (0,0)=-1 and (0,-4)=4 and #macro(DACFour) and #macro(BikeCheckFourCells)}
rule : { 266} 1 { cellPos(0)=1 and (0,0)=-1 and (0,-6)=6 and #macro(DACSix) and #macro(BikeCheckSixCells)}
rule : {  -1} 1 { cellPos(0)=1 and (0,0)=-1}



% ================ CLEAR CELLS ==================================
% ===============================================================

%clear Slowing due to car cells

rule : { -1} 0 {cellPos(0)=1 and ((0,0)>0 and (0,0)<7) and (0,1)=201 }
rule : { -1} 0 {cellPos(0)=1 and ((0,0)>0 and (0,0)<7) and (0,2)=202 }
rule : { -1} 0 {cellPos(0)=1 and ((0,0)>0 and (0,0)<7) and (0,3)=223 }
rule : { -1} 0 {cellPos(0)=1 and ((0,0)>0 and (0,0)<7) and (0,4)=243 }
rule : { -1} 0 {cellPos(0)=1 and ((0,0)=6)and (0,5)=244 }


%clear Slowing due to bike cells

rule : { -1} 0 {cellPos(0)=1 and ((0,0)>0 and (0,0)<7) and (0,2)=222 }
rule : { -1} 0 {cellPos(0)=1 and ((0,0)>0 and (0,0)<7) and (0,4)=242 }
rule : { -1} 0 {cellPos(0)=1 and ((0,0)=2) and (0,2)=224 }

%Clear Accelerating cells 

rule : { -1} 0 {cellPos(0)=1 and (0,0)=2 and (0,2)=241 }
rule : { -1} 0 {cellPos(0)=1 and (0,0)=4 and (0,4)=261 }


%clear advance cells

rule : { -1} 0 {cellPos(0)=1 and (0,0)=2 and (0,2)=226 }
rule : { -1} 0 {cellPos(0)=1 and (0,0)=4 and (0,4)=246 }
rule : { -1} 0 {cellPos(0)=1 and (0,0)=6 and (0,6)=266 }


% ================ SET NEW CELL VALUES ======================
% ===========================================================

% sets the new cell to the proper value  
rule : { 0} 0 { cellPos(0)=1 and ((0,0)=200 or (0,0)=201 or (0,0)=202)}
rule : { 2} 0 { cellPos(0)=1 and ((0,0)=221 or (0,0)=226 or (0,0)=222 or (0,0)=223 or (0,0)=224)}
rule : { 4} 0 { cellPos(0)=1 and ((0,0)=241 or (0,0)=242 or (0,0)=243 or (0,0)=244 or (0,0)=245 or (0,0)=246 )}
rule : { 6} 0 { cellPos(0)=1 and ((0,0)=261 or (0,0)=266)}




% Dont change if not rules equate to true
rule : {(0,0)} 0 {cellPos(0)= 1 and t}