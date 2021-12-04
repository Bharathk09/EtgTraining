package com.sonata;

public class Ford extends Car{
	int year;
	int manufacturerDiscount=50000;    //Manufacturer Discount of 50,000
	
	Ford() {}
	
	Ford(int i, double j,String k)
	{
		super(i,j,k);
	}
	
	public void getSalePrice()
	{
		double finalPrice=this.regularPrice-manufacturerDiscount;
		System.out.println("Ford Original Price (Before Manufacturer Discout) = "+regularPrice);
		System.out.println("Ford Manufacturer Discount = "+manufacturerDiscount);
		System.out.println("Ford Final Price (After Manufacturer  Discount) = "+finalPrice);
	}
	
	public static void main(String args[])
	{
		Ford f=new Ford(220,800000,"Blue");
		System.out.println("FORD Details:");
		f.display();
		f.getSalePrice();
	}
	
}
