#define  sel2 RA0_bit
#define  sel1 RA1_bit
#define  sel3 RA7_bit

#define  som1 RB7_bit
#define  som2 RB6_bit

void wail(void){
int a, b, c, d, freq;
if(sel1 == 0 && sel2 == 0 && sel3 == 1){  //wail
              freq = 110;                  //110
              for(d = 0;d < 63;d++){      //70
              if(sel1 == 0 && sel2 == 0 && sel3 == 1){
                       for(b = 0;b < 20;b++){     //20
                             som1 = 1;
                             som2 = 0;
                             if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
                             som1 = 0;
                             som2 = 1;
                             if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
                       }//end for
              }//end if
              freq--;
              }//end for
              for(d = 0;d < 63;d++){    //70
                    if(sel1 == 0 && sel2 == 0 && sel3 == 1){
                             for(b = 0;b < 20;b++){   //20
                             som1 = 1;
                             som2 = 0;
                             if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
                             som1 = 0;
                             som2 = 1;
                             if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
                             }//end for
              }// end if
              freq++;
              }//end for
     }//end if wail
}//end wail

void yelp(void){
int a, b, c, d, freq;
if(sel1 == 0 && sel2 == 1 && sel3 == 0){  //yelp
              freq = 56;  //
              for(d = 0;d < 10;d++){
              if(sel1 == 0 && sel2 == 1 && sel3 == 0){
                       for(b = 0;b < 11;b++){
                       som1 = 1;
                       som2 = 0;
                       for(a=0;a<freq;a++);
                       som1 = 0;
                       som2 = 1;
                       for(a=0;a<freq;a++);
                       }//end for
              }//end if
              freq = freq-3;

              }//end for
              for(d = 0;d < 10;d++){
              if(sel1 == 0 && sel2 == 1 && sel3 == 0){
                       for(b = 0;b < 11;b++){
                       som1 = 1;
                       som2 = 0;
                       for(a=0;a<freq;a++);
                       som1 = 0;
                       som2 = 1;
                       for(a=0;a<freq;a++);
                       }//end for
              }//end if
              freq = freq+3;
              }//end for
}//end if yelp
}//end yelp

void hilo(void){
int a, b, c, d, freq;
if(sel1 == 0 && sel2 == 1 && sel3 == 1){  //hilo
                if(sel1 == 0 && sel2 == 1 && sel3 == 1){
                for(b = 0;b < 850;b++){
                      som1 = 1;
                      som2 = 0;
                      if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<30;a++);  //33
                      som1 = 0;
                      som2 = 1;
                      if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<30;a++);
                      }//end for                                                //33
                }//end if
                if(sel1 == 0 && sel2 == 1 && sel3 == 1){
                         for(b = 0;b < 700;b++){
                               som1 = 1;
                               som2 = 0;
                               if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<48;a++);   //48
                               som1 = 0;
                               som2 = 1;
                               if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<48;a++);  //48
                         }//end for
                }//end if
       }//end if hilo
}//end hilo

void priority(void){      //priority
int a, b, c, d, freq;
if(sel1 == 1 && sel2 == 0 && sel3 == 0){
                freq = 45;
                for(d = 0;d < 8;d++){
                      if(sel1 == 1 && sel2 == 0 && sel3 == 0){
                               for(b = 0;b < 5;b++){
                                     som1 = 1;
                                     som2 = 0;
                                     for(a=0;a<freq;a++);
                                     som1 = 0;
                                     som2 = 1;
                                     for(a=0;a<freq;a++);
                               }//end for
                               freq = freq-3;
                      }//end if
                }//end for
                for(d = 0;d < 7;d++){
                      if(sel1 == 1 && sel2 == 0 && sel3 == 0){
                               for(b = 0;b < 5;b++){
                               som1 = 1;
                               som2 = 0;
                               for(a=0;a<freq;a++);
                               som1 = 0;
                               som2 = 1;
                               for(a=0;a<freq;a++);
                               }//end for
                               freq = freq+3;
                      }//end if
                }//end for
       }//end if prio 
}//end priority

void horn(void){
int a, b, c, d, freq;
if(sel1 == 1 && sel2 == 0 && sel3 == 1){  //horn
                for(b = 0;b < 3;b++){                //5
                      som1 = 1;
                      som2 = 0;
                      for(a=0;a<110;a++);           //110
                      som1 = 0;
                      som2 = 1;
                      for(a=0;a<110;a++);           //110
                }//end for
                for(b = 0;b < 4;b++){               //6
                      som1 = 1;
                      som2 = 0;
                      for(a=0;a<95;a++);             //89
                      som1 = 0;
                      som2 = 1;
                      for(a=0;a<95;a++);            //89
                }//end for
       }//end if horn
}//end horn

void man(void){               //man
int a, b, c, d, freq;
freq = 25;
while(sel1 == 1 && sel2 == 1 && sel3 == 1){


                             for(b = 0;b < 20;b++){   //20
                             som1 = 1;
                             som2 = 0;
                             if(sel1 == 1 && sel2 == 1 && sel3 == 1)for(a=0;a<freq;a++);
                             som1 = 0;
                             som2 = 1;
                             if(sel1 == 1 && sel2 == 1 && sel3 == 1)for(a=0;a<freq;a++);
                             }//end for

              freq++;
              }//end if


        /*
              for(b = 0;b < 20;b++){
                    som1 = 1;
                    som2 = 0;
                    if(sel1 == 1 && sel2 == 1 && sel3 == 1)for(a=0;a<freq;a++);
                    som1 = 0;
                    som2 = 1;
                    if(sel1 == 1 && sel2 == 1 && sel3 == 1)for(a=0;a<freq;a++);
              }//end for
       }//end if
       freq--;        */

}//end man

void yelp2(void){

}//end yelp2

void main(){

CMCON = 0b00001111;

     TRISA = 0b10000011;        //0 COMO SAIDA 1 COMO ENTRADA
     TRISB = 0b00000000;        //0 COMO SAIDA 1 COMO ENTRADA

     PORTA = 0;
     PORTB = 0;

     while (1){
     if(sel1 == 0 && sel2 == 0 && sel3 == 1)wail();
     if(sel1 == 0 && sel2 == 1 && sel3 == 0)yelp();
     if(sel1 == 0 && sel2 == 1 && sel3 == 1)hilo();
     if(sel1 == 1 && sel2 == 0 && sel3 == 0)priority();
     if(sel1 == 1 && sel2 == 0 && sel3 == 1)horn();
     if(sel1 == 1 && sel2 == 1 && sel3 == 0)yelp2();
     if(sel1 == 1 && sel2 == 1 && sel3 == 1)man();
     while(sel1 == 0 && sel2 == 0 && sel3 == 0)som1 = 0;
     }//end while
}//end main