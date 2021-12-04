package com.sonata;

public class MyOwnAutoShop extends Car {
	public static void main(String args[])
	{
		Sedan s1=new Sedan (180,1300000,"Grey");
		Ford f1=new Ford(220,800000,"Blue");
		Ford f2=new Ford(220,800000,"Orange");
		Car c1= new Car(240,1200000,"Maroon");
		
		System.out.println("SEDAN Details:");
		s1.display();
		s1.getSalePrice();
		System.out.println();
		
		System.out.println("FORD-1 Details:");
		f1.display();
		f1.getSalePrice();
		System.out.println();
		
		System.out.println("FORD-2 Details:");
		f2.display();
		f2.getSalePrice();
		System.out.println();
		
		System.out.println("CAR Details:");
		c1.display();
		c1.getSalePrice();
	}

}
