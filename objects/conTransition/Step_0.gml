if transTime > 0{
transTime --; 

}else if transTime == 0{
audio_play_sound(soundTadaa,1,0)
transTime--
}
if!init{
init =true
}