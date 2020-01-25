#line 1 "C:/Users/Public/Documents/Mikroelektronika/SireneSt01/SireneSt01/SireneSt01.c"







void wail(void){
int a, b, c, d, freq;
if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1){
 freq = 110;
 for(d = 0;d < 63;d++){
 if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1){
 for(b = 0;b < 20;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1)for(a=0;a<freq;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1)for(a=0;a<freq;a++);
 }
 }
 freq--;
 }
 for(d = 0;d < 63;d++){
 if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1){
 for(b = 0;b < 20;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1)for(a=0;a<freq;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1)for(a=0;a<freq;a++);
 }
 }
 freq++;
 }
 }
}

void yelp(void){
int a, b, c, d, freq;
if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 0){
 freq = 56;
 for(d = 0;d < 10;d++){
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 0){
 for(b = 0;b < 11;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 for(a=0;a<freq;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 for(a=0;a<freq;a++);
 }
 }
 freq = freq-3;

 }
 for(d = 0;d < 10;d++){
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 0){
 for(b = 0;b < 11;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 for(a=0;a<freq;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 for(a=0;a<freq;a++);
 }
 }
 freq = freq+3;
 }
}
}

void hilo(void){
int a, b, c, d, freq;
if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1){
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1){
 for(b = 0;b < 850;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1)for(a=0;a<30;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1)for(a=0;a<30;a++);
 }
 }
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1){
 for(b = 0;b < 700;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1)for(a=0;a<48;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1)for(a=0;a<48;a++);
 }
 }
 }
}

void priority(void){
int a, b, c, d, freq;
if( RA1_bit  == 1 &&  RA0_bit  == 0 &&  RA7_bit  == 0){
 freq = 45;
 for(d = 0;d < 8;d++){
 if( RA1_bit  == 1 &&  RA0_bit  == 0 &&  RA7_bit  == 0){
 for(b = 0;b < 5;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 for(a=0;a<freq;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 for(a=0;a<freq;a++);
 }
 freq = freq-3;
 }
 }
 for(d = 0;d < 7;d++){
 if( RA1_bit  == 1 &&  RA0_bit  == 0 &&  RA7_bit  == 0){
 for(b = 0;b < 5;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 for(a=0;a<freq;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 for(a=0;a<freq;a++);
 }
 freq = freq+3;
 }
 }
 }
}

void horn(void){
int a, b, c, d, freq;
if( RA1_bit  == 1 &&  RA0_bit  == 0 &&  RA7_bit  == 1){
 for(b = 0;b < 3;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 for(a=0;a<110;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 for(a=0;a<110;a++);
 }
 for(b = 0;b < 4;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 for(a=0;a<95;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 for(a=0;a<95;a++);
 }
 }
}

void man(void){
int a, b, c, d, freq;
freq = 25;
while( RA1_bit  == 1 &&  RA0_bit  == 1 &&  RA7_bit  == 1){


 for(b = 0;b < 20;b++){
  RB7_bit  = 1;
  RB6_bit  = 0;
 if( RA1_bit  == 1 &&  RA0_bit  == 1 &&  RA7_bit  == 1)for(a=0;a<freq;a++);
  RB7_bit  = 0;
  RB6_bit  = 1;
 if( RA1_bit  == 1 &&  RA0_bit  == 1 &&  RA7_bit  == 1)for(a=0;a<freq;a++);
 }

 freq++;
 }
#line 187 "C:/Users/Public/Documents/Mikroelektronika/SireneSt01/SireneSt01/SireneSt01.c"
}

void yelp2(void){

}

void main(){

CMCON = 0b00001111;

 TRISA = 0b10000011;
 TRISB = 0b00000000;

 PORTA = 0;
 PORTB = 0;

 while (1){
 if( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 1)wail();
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 0)yelp();
 if( RA1_bit  == 0 &&  RA0_bit  == 1 &&  RA7_bit  == 1)hilo();
 if( RA1_bit  == 1 &&  RA0_bit  == 0 &&  RA7_bit  == 0)priority();
 if( RA1_bit  == 1 &&  RA0_bit  == 0 &&  RA7_bit  == 1)horn();
 if( RA1_bit  == 1 &&  RA0_bit  == 1 &&  RA7_bit  == 0)yelp2();
 if( RA1_bit  == 1 &&  RA0_bit  == 1 &&  RA7_bit  == 1)man();
 while( RA1_bit  == 0 &&  RA0_bit  == 0 &&  RA7_bit  == 0) RB7_bit  = 0;
 }
}
