PImage renar;
int i =1;
void day21(){
 // Renar ställer sig utanför stugan.
 if(isHatchOpen(21))
 {
 i++;
 tint(0,i);
 image(renar,270,630,180,120);
 noTint();
 }
}