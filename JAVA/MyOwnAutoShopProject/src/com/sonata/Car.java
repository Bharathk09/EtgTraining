package com.sonata;

public class Car {
	int speed;
	double regularPrice;
	String color;
	Car() {}
	Car(int a,double b,String c)
	{
		this.speed=a;
		this.regularPrice=b;
		this.color=c;
	}
	
	public void getSalePrice()
	{
		System.out.println("Car Price = "+regularPrice);
	}
	
	public void display()
	{
		System.out.println("Speed (km/hr) = "+speed);
		System.out.println("Color = "+color);
	}
	
	public static void main (String args[]) {
		Car c1= new Car(240,1200000,"Maroon");
		c1.display();
		c1.getSalePrice();
	}

}
