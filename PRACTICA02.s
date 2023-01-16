PROCESSOR 18F57Q84

#include "Bit_Config.inc"  /*config statements should precede project file includes.*/
#include <xc.inc>
#include "Retardos.inc"
    
PSECT resetVect Class=CODE, reloc=2
    
Resectvect:
    Goto Main

PSECT CODE
Main:
    CALL Config_osc
    CALL Config_port
    CALL Delay_1s    ;Retardo de 1ms	
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto VALORES_NUMERICOS
    Goto LETRAS
    
VALORES_NUMERICOS:    
NUMERO_0:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1   ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_1
    Goto LETRAS
 
NUMERO_1:
    BANKSEL PORTD
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
   
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_2
    Goto LETRAS
 
    
NUMERO_2:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido 
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_3
    Goto LETRAS
 
 
NUMERO_3:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_4
    Goto LETRAS
 
    
NUMERO_4:
    BANKSEL PORTD
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido    
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_5
    Goto LETRAS
 
 
NUMERO_5:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_6
    Goto LETRAS
 
    
NUMERO_6:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_7
    Goto LETRAS
 
NUMERO_7:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
   
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_8
    Goto LETRAS
 
    
NUMERO_8:
    BANKSEL PORTD
    SETF LATD,1      ;PORTD =0, display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_9
    Goto LETRAS
 
NUMERO_9:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_0
    Goto LETRAS

LETRAS:     
LETRA_A:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_0
    Goto LETRA_B
    
LETRA_B:
    BANKSEL PORTD
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_0
    Goto LETRA_C
 
LETRA_C:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido 
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_0
    Goto LETRA_D
    
LETRA_D:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,2,1     ;PORTD<2> =0, c del display ánodo común encendido  
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_0
    Goto LETRA_E
    
LETRA_E:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido
    BCF LATD,1,1     ;PORTD<1> =0, b del display ánodo común encendido
    BCF LATD,3,1     ;PORTD<3> =0, d del display ánodo común encendido   
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms

    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_0
    Goto LETRA_F

LETRA_F:
    BANKSEL PORTD
    BCF LATD,0,1     ;PORTD<0> =0, a del display ánodo común encendido 
    BCF LATD,4,1     ;PORTD<4> =0, e del display ánodo común encendido
    BCF LATD,5,1     ;PORTD<5> =0, f del display ánodo común encendido
    BCF LATD,6,1     ;PORTD<6> =0, g del display ánodo común encendido
    BCF LATD,7,1     ;PORTD<7> =0, dp del display ánodo común encendido
    CALL Delay_1s    ;Retardo de 1ms
    
    SETF PORTD,1     ;PORTD =1, display OFF    
    CALL Delay_1s    ;Retardo de 1ms
    
    BTFSC PORTA,3,0  ;PORTA<3>=0? -Button press?
    Goto NUMERO_0
    Goto LETRA_A

      
Config_osc:
    ;Configiración del oscilador interno a una frecuencia de 4MHz
    BANKSEL OSCCON1
    MOVLW 0x60     ;Seleccionamos el bloque del osc interno con un div:1
    MOVWF OSCCON1 
    MOVLW 0x02     ;seleccionamos una frecuencia de 4MHz
    MOVWF OSCFRQ,1
    RETURN
    
Config_port:
    
    ;Puerto D
    BANKSEL PORTD
    SETF PORTD,1    ;PORTD=1 display apagado
    CLRF ANSELD,1   ; PORTD digital
    CLRF TRISD,1    ;PORTD como salida
    
    ;Config buttoN
    BANKSEL PORTA 
    CLRF PORTA,1
    CLRF ANSELA,1 
    BSF TRISA,3,1   ;Activamos la resistencia  PullUp
    
 RETURN
    
END Resectvect



