#region movimento 
var dir = keyboard_check(ord("D"))
var ba  = keyboard_check(ord("S"))
var ci  = keyboard_check(ord("W"))
var es  = keyboard_check(ord("A"))

x += (dir - es)*spx
y += (ba  - ci)*spy
#endregion

