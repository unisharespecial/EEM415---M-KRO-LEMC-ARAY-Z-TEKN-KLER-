#include <18F452.H>  //kullan�lacak denetleyici belirleniyor

#pragma config[1] = 0xF1 // Osilat�r: XT
#pragma config[2] = 0xFE & 0xF9 // PWRT a��k, BOR kapal�
#pragma config[3] = 0xFE // Watchdog Timer kapal�


#use	delay	(clck=4000000) //kullan�lacak osilat�r frekans�

#use	fast_io(b)			   //port y�nlendirme komutu portb i�in
#use	fast_io(d)			   //port y�nlendirme komutu portd i�in

#byte	portb=0x06			   //B portu "portb" kelimesi ile e�leniyor

#define	sut1	pin_d0		   //portd0 ifedesi "sut1" kelimesi ile e�leniyor
#define	sut2	pin_d1		   //portd1 ifedesi "sut2" kelimesi ile e�leniyor
#define	sut3	pin_d2		   //portd2 ifedesi "sut3" kelimesi ile e�leniyor
#define	sut4	pin_d3		   //portd3 ifedesi "sut4" kelimesi ile e�leniyor

#define	sat1	pin_d4		   //portd4 ifedesi "sat1" kelimesi ile e�leniyor
#define	sat2	pin_d5		   //portd5 ifedesi "sat2" kelimesi ile e�leniyor
#define	sat3	pin_d6		   //portd6 ifedesi "sat3" kelimesi ile e�leniyor
#define	sat4	pin_d7		   //portd7 ifedesi "sat4" kelimesi ile e�leniyor


char	tus=0				   //karekter tipinde de�i�ken tan�mland�

//=================keypad tarama=============================================

char	keypad_oku()		//fonksiyon ismi
{
	output_d(0x00);			//portd s�f�rland�
	
	output_high(sat1);		//1. sat�r 1 yap�l�yor sutunlar� okuma ba�l�yor
	if	(input(sut1))		//1. sut�n okunuyor
		{delay_ms(20); tus=1}
	if	(input(sut2))		//2. sut�n okunuyor
		{delay_ms(20); tus=2}
	if	(input(sut3))		//3. sut�n okunuyor
		{delay_ms(20); tus=3}
	if	(input(sut4))		//4. sut�n okunuyor
		{delay_ms(20); tus=0xA}
	output_low(sat1);		//1. sat�r s�f�ra �ekiliyor

	output_high(sat2);		//2. sat�r 1 yap�l�yor sutunlar� okuma ba�l�yor
	if	(input(sut1))		//1. sut�n okunuyor
		{delay_ms(20); tus=4}
	if	(input(sut2))		//2. sut�n okunuyor
		{delay_ms(20); tus=5}
	if	(input(sut3))		//3. sut�n okunuyor
		{delay_ms(20); tus=6}
	if	(input(sut4))		//4. sut�n okunuyor
		{delay_ms(20); tus=0xB}
	output_low(sat2);		//2. sat�r s�f�ra �ekiliyor

	output_high(sat3);		//3. sat�r 1 yap�l�yor sutunlar� okuma ba�l�yor
	if	(input(sut1))		//1. sut�n okunuyor
		{delay_ms(20); tus=7}
	if	(input(sut2))		//2. sut�n okunuyor
		{delay_ms(20); tus=8}
	if	(input(sut3))		//3. sut�n okunuyor
		{delay_ms(20); tus=9}
	if	(input(sut4))		//4. sut�n okunuyor
		{delay_ms(20); tus=0xC}
	output_low(sat3);		//3. sat�r s�f�ra �ekiliyor

	output_high(sat4);		//4. sat�r 1 yap�l�yor sutunlar� okuma ba�l�yor
	if	(input(sut1))		//1. sut�n okunuyor
		{delay_ms(20); tus=0xE}
	if	(input(sut2))		//2. sut�n okunuyor
		{delay_ms(20); tus=0}
	if	(input(sut3))		//3. sut�n okunuyor
		{delay_ms(20); tus=0xF}
	if	(input(sut4))		//4. sut�n okunuyor
		{delay_ms(20); tus=0xD}
	output_low(sat4);		//4. sat�r s�f�ra �ekiliyor

	return tus;				//tus de�eri ile geri d�ner
}


//=================Ana program=====================================

void main ()
{
	set_tris_b(0x00);
	set_tris_d(0x0F);

	outpuy_b(0x00);

	while(1)			//sonsuz d�ng�
	{
	portb=keypad_oku();
	}
}