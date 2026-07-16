function colisao(spx,spy,obj){
	if(place_meeting(x+spx,y,obj)){
	spx=0 
	}
if(place_meeting(x,y+spy,obj)){
	spy=0
	}
	return[spx,spy]
}