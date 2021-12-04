package com.sonata;

public class Tshirt {
	String color;
	String material;
	String design;
	
	Tshirt(String a,String b,String c)
	{
		this.color=a;
		this.material=b;
		this.design=c;
	}
	
	public void display()
	{
		System.out.println("Color of the T-Shirt is "+this.color);
		System.out.println("Material of the T-Shirt is "+this.material);
		System.out.println("Design of the T-Shirt is "+this.design);
		System.out.println();
	}
	
	public static void main(String args[]) {
		Tshirt s= new Tshirt("Red","Cotton","Plain");
		System.out.println("SMALL size T-Shirt: ");
		s.display();
		Tshirt l= new Tshirt("Blue","Fabric","Printed");
		System.out.println("LARGE size T-Shirt: ");
		l.display();
		Tshirt xl= new Tshirt("Balck","Synthetic","Sports");
		System.out.println("XTRA-LARGE size T-Shirt: ");
		xl.display();
		
	}

}
