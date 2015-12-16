
int d = day();    // 1 - 31
int mo = month();  // 1 - 12
int ye = year(); // 2015
int today;

void Date(int luckDate){

today=d;
 //om  datumet är idag eller mer, frigör lucka
 if(mo == 12 && luckDate <= today){
   open=true;
 }
 else{
 open=false;
 }
}