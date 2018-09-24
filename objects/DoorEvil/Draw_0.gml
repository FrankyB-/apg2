/// @description Get state value and change into string
var Interaction = string("");
var Interaction2 = string("");
var Interaction3 = string("");
var Interaction4 = string("");

if place_meeting(x,y,Player)
{
	var Interaction = string("Interact =") + string(Interactable)
	var Interaction2 = string("Door Opened= ") + string(Door_open)
	var Interaction3 = string("Door EP= ") + string(Door_Energy)
	var Interaction4 = string("Door MaxEP= ") + string(Door_MaxEnergy)
}
draw_set_font(fnt_text);
draw_set_color(c_blue);
draw_text_ext(x-32,y-90,string(Interaction),3,128);
draw_text_ext(x-32,y-106,string(Interaction2),3,128);
draw_text_ext(x-32,y-122,string(Interaction3),3,128);
draw_text_ext(x-32,y-138,string(Interaction4),3,128);
draw_self();
