#region colisão(obj2)/movimento/gravidade
xsp = 0;
ysp += 0.49
if keyboard_check(ord("A")) { xsp = -1.9 }

if keyboard_check(ord("D")){ xsp = +1.9 }

if place_meeting(x, y+1, obj2){ ysp = 0 if keyboard_check(vk_space) { ysp = -5 } }

move_and_collide(xsp, ysp, obj2)

#endregion
#region objs
if(place_meeting( x, y, serra)){ room_restart()}
if(place_meeting( x, y, Obj3)){ room_restart()}
if(place_meeting( x, y, Obj4)){ room_goto_next() }

#endregion
#region
if (xsp !=0)image_xscale=sign(xsp)
if keyboard_check(vk_f1){ room_restart()}
if keyboard_check(vk_f2){ room_goto_next()}

#endregion