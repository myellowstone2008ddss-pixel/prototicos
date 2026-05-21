#region movimento
var dir= keyboard_check(ord("D")) || keyboard_check(vk_right);
var esq= keyboard_check(ord("A")) || keyboard_check(vk_left);
var cm = keyboard_check(ord("W")) || keyboard_check(vk_up);
var bx = keyboard_check(ord("S")) || keyboard_check(vk_down);

var la = dir + cm
var al = esq  + bx

sp_x =(dir - esq)*sp
sp_y =( bx - cm )*sp

x+=sp_x
y+=sp_y
#endregion
#region animação
if (sp_y != 0 || sp_x != 0 ) {
    sprite_index = ply_and_spr;
} else {
    sprite_index = ply_pr_spr;
}

if (dir) {
    image_xscale = -1
}else if (esq){
	image_xscale = 1
}
#endregion
#region inimigos
matar(serra_seg_obj)
matar(serra_obj)
#endregion
solido(pr_obj)