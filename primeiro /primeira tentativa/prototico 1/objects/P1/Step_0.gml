#region
#region controles
key_right=keyboard_check(ord("D"))//dirita
key_left=keyboard_check(ord("A"))//esquerda
key_jump=keyboard_check(vk_escape)//pular
#endregion
#region mover
var move=key_right-key_left
hspd=move*spd;
vspd=vspd+grv;
if(hspd !=0)image_xscale=sign(hspd)
#region colisão horizontal
if place_meeting(x+hspd,y,G)
{while(!place_meeting(x+sign(hspd),y,G))
{x=x+sign(hspd)}
hspd=0}
x=x+hspd;
#endregion
#region colisão vertical
if place_meeting(x,y+hspd,G)
{while(!place_meeting(x,y+sign(vspd),G))
{y=y+sign(vspd)}
vspd=0}
y=y+vspd;
#endregion
#region pullo

#endregion
