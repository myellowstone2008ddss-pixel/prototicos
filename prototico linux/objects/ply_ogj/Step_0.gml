var dir= keyboard_check(ord("D"))// && keyboard_check(vk_right);
var esq= keyboard_check(ord("A"))// && keyboard_check(vk_left);
var cm = keyboard_check(ord("W"))// && keyboard_check(vk_up);
var bx = keyboard_check(ord("S"))// && keyboard_check(vk_down);

x+=(dir - esq)*sp
y+=( bx - cm )*sp