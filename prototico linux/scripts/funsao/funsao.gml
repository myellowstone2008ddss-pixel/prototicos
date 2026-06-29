function seguir(n1,n2,ob){
if (instance_exists(ob)) {
    x = lerp(x, ob.x, n1);
    y = lerp(y, ob.y, n2);
}
}
function matar(ob){
if (place_meeting(x, y, ob)) {
     room_restart()
}

} 
function solido(sp_x , ob){

if (place_meeting(x + sp_x, y, ob)) {
  sp_x = 0;
}}