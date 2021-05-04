

[top]
components : path 

[path]
type : cell
dim : (2,200)
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


initialCellsValue : car_path.val

localtransition : car-rule



[car-rule]

rule : {999} 1 { (0,0)=80 }

rule : {(0,0)} 0 {t}