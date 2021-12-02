package com.sonata;

public class TestSpecificValueArray {
	public static void main(String args[]) {
		int arr[]= {1,2,3,4,5};
		int svalue=2;
		boolean found=false;
		
		for(int i=0;i<arr.length;i++)
		{
			if(arr[i]==svalue)
			{
				found=true;
				break;
			}
		}
		
		if(found)
		{
			System.out.println("The Specific value "+svalue+" is Found.");
		}
		else
		{
			System.out.println("The Specific value "+svalue+" is Not Found.");
		}
	}

}
