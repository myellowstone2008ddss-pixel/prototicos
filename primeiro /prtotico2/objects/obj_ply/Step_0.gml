#region colisão(obj2)/movimento/gravidade
var esq =  keyboard_check(ord("A")) ||keyboard_check(vk_right)
var dir   =  keyboard_check(ord("D")) ||keyboard_check(vk_left)
sp_x = (dir - esq)*spd 
sp_y = grvt
if place_meeting(x, y+sp_y, obj_terra){ sp_y = 0 if keyboard_check(vk_space) { 
	for(i=0;100>i;i++) {
	sp_y += -0.1
	} } }

if (place_meeting(x + sp_x, y,obj_terra )) {
  sp_x = 0;
}
if(place_meeting(x,y+sp_y,obj_terra)){
	sp_y = 0;
}

x += sp_x
y += sp_y

#endregion
#region objs
if(place_meeting( x, y, obj_serra)){ room_restart()}
if(place_meeting( x, y, obj_espinhos)){ room_restart()}
if(place_meeting( x, y, obj_bandera)){ room_goto_next() }

#endregion
#region
if (sp_x !=0)image_xscale=sign(sp_x)
if keyboard_check(vk_f1){ room_restart()}
if keyboard_check(vk_f2){ room_goto_next()}

#endregion