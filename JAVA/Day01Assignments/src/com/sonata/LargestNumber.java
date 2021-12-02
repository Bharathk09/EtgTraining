package com.sonata;

public class LargestNumber {
	public static void main(String args[]) {
		int a=12;
		int b=25;
		int c=89;
		if ( a>=b && a>=c )
		{
			System.out.println(a+" is the Largest number");
		}
		else if ( b>=a && b>=c )
		{
			System.out.println(b+" is Largest number");
		}
		else
		{
			System.out.println(c+" is Largest number");
		}
	}

}
