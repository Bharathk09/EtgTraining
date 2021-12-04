package com.sonata;

public class Product {
	int proID;
	String proName;
	double proPrice;
	double totPrice=0;
	Product (int a, String b, double c)
	{
		this.proID=a;
		this.proName=b;
		this.proPrice=c;
	}
	
	
	public void display ()
	{
		System.out.println("Product ID = "+proID);
		System.out.println("Product Name = "+proName);
		System.out.println("Product Price = "+proPrice);
	}
	
	public double gstCal()
	{
		if( this.proPrice > 2000)
		{
			 totPrice=this.proPrice + (this.proPrice*0.18); // 18% GST applicable on Products Price over 2000
		}
		else
		{
			totPrice=this.proPrice;
		}
		return totPrice;
	}
	
	public static void main(String args[]) {
		Product p1= new Product(102,"Table",2500);
		p1.display();
		System.out.println("Product Final Price = "+p1.gstCal());
		
	}

}
