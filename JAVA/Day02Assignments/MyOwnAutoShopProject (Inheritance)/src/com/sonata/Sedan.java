package com.sonata;

public class Sedan extends Car {
	int length=24;
	double total=0;
	Sedan() {}
	
	Sedan(int i, double j,String k)
	{
		super(i,j,k);
	}
	
	public void getSalePrice()
	{
		if(length > 20)
		{
			total=this.regularPrice-(this.regularPrice*0.05);    //5% Discount
	
		}
		else
		{
			total=this.regularPrice-(this.regularPrice*0.1);    //10% Discount
		}
		System.out.println("Sedan Car Length (Feet) = "+length);
		System.out.println("Sedan Original Price (Before Discout) = "+regularPrice);
		System.out.println("Sedan Final Price (After Discount) = "+total);
	}
	
	public static void main(String args[]) {
		Sedan s1=new Sedan (180,1300000,"Grey");
		System.out.println("SEDAN Details:");
		s1.display();
		s1.getSalePrice();
	}

}
