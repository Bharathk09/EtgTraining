package com.sonata;

public class Truck extends Car{
	int weight=2300;          
	double tot=0;
	Truck(){}
	
	Truck(int i, double j,String k)
	{
		super(i,j,k);
	}
	
	
	public void getSalePrice()
	{
		if (weight>2000)
		{
			tot=this.regularPrice-(this.regularPrice*0.1);   //10% Discount
			
		}
		else
		{
			tot=this.regularPrice-(this.regularPrice*0.2);   //20% Discount
			
		}
		System.out.println("Truck Weight (Kg)= "+weight);
		System.out.println("Truck Original Price (Before Discout) = "+regularPrice);
		System.out.println("Truck Final Price (After Discount) = "+tot);
		
	}
	
	public static void main(String args[]) {
		
		Truck t=new Truck(120,500000,"White");
		System.out.println("TRUCK Details:");
		t.display();
		t.getSalePrice();
		System.out.println();
		
	}

}
