#region controle/colisão
var dir = keyboard_check(ord("A"))|| keyboard_check(vk_right)
var esq = keyboard_check(ord("D"))|| keyboard_check(vk_left)
var cm = keyboard_check(ord("W"))|| keyboard_check(vk_up)
var bx = keyboard_check(ord("S"))|| keyboard_check(vk_down)

spx = (esq - dir )*sp
spy = (bx - cm )*sp

var vr = colisao(spx, spy, obj_parede)

spx_r = vr [0] 
spy_r = vr [1]


x +=spx_r
y += spy_r
#endregion 
if (place_meeting(x,y,obj_serra)){
	vd -= 1
}
if (vd = 0 ){
	room_restart();
}