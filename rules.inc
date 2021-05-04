#BeginMacro(BikeSlowTwo)
((-1,0)!=-1 or (-1,1)!=-1 or (-1,2)!=-1 or (-1,3)!=-1 or (-1,4)!=-1 or (-1,5)!=-1 )
#EndMacro

#BeginMacro(BikeSlowFour)
(((-1,0)=-1 and (-1,1)=-1 and (-1,2)=-1 and (-1,3)=-1 and (-1,4)=-1 and (-1,5)=-1) and
    (-1,6)!=-1 or (-1,7)!=-1 or (-1,8)!=-1 or (-1,9)!=-1 or (-1,10)!=-1 or (-1,11)!=-1 )
#EndMacro

#BeginMacro(BikeCheckTwoCells)
((-1,0)=-1 and (-1,-1)=-1 and (-1,-2)=-1 
and (-1,1)=-1 and (-1,2)=-1 and (-1,3)=-1 and (-1,4)=-1 and (-1,5)=-1
and (-1,6)=-1 and (-1,7)=-1 and (-1,8)=-1 and (-1,9)=-1 and (-1,10)=-1 
and (-1,11)=-1
)
#EndMacro

#BeginMacro(BikeCheckFourCells)
((-1,0)=-1 and (-1,-1)=-1 and (-1,-2)=-1 and (-1,-3)=-1 and (-1,-4)=-1 
and (-1,1)=-1 and (-1,2)=-1 and (-1,3)=-1 and (-1,4)=-1 and (-1,5)=-1
and (-1,6)=-1 and (-1,7)=-1 and (-1,8)=-1 and (-1,9)=-1 and (-1,10)=-1 
and (-1,11)=-1)
#EndMacro

#BeginMacro(BikeCheckSixCells)
((-1,0)=-1 and (-1,-1)=-1 and (-1,-2)=-1 and (-1,-3)=-1 and (-1,-4)=-1 and (-1,-5)=-1 and (-1,-6)=-1 
and (-1,1)=-1 and (-1,2)=-1 and (-1,3)=-1 and (-1,4)=-1 and (-1,5)=-1
and (-1,6)=-1 and (-1,7)=-1 and (-1,8)=-1 and (-1,9)=-1)
#EndMacro

#BeginMacro(DACTwo)
((0,-1)=-1) and ((0,1)=-1)  
#EndMacro

#BeginMacro(DACFour)
((0,-1)=-1 and (0,-2)=-1 and (0,-3)=-1 )
#EndMacro

#BeginMacro(DACSix)
(((0,-1)=-1 and (0,-2)=-1 and (0,-3)=-1 and (0,-4)=-1 and (0,-5)=-1 ))
#EndMacro

#BeginMacro(SlowTwoTwoThree)
(((0,1)>-1 and (0,1)<7) and ((0,2)>-1 and (0,2)<7) and ((0,3)>-1 and (0,3)<7)
and (0,-1)=-1 and (0,-2)=-1)
#EndMacro

#BeginMacro(SlowTwoFourThree)
(((0,1)>-1 and (0,1)<7) and ((0,2)>-1 and (0,2)<7) and ((0,3)>-1 and (0,3)<7) and ((0,4)>-1 and (0,4)<7) 
and (0,-1)=-1 and (0,-2)=-1 and (0,-3)=-1)
#EndMacro

#BeginMacro(SlowTwoFourFour)
(((0,1)>-1 and (0,1)<7) and ((0,2)>-1 and (0,2)<7) and ((0,3)>-1 and (0,3)<7) and ((0,4)>-1 and (0,4)<7) 
and (0,-1)=-1 and (0,-2)=-1 and (0,-3)=-1 and (0,-4)=-1)
#EndMacro