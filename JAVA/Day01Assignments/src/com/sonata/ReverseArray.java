package com.sonata;

public class ReverseArray {
	public static void main(String args[]) {
		int arr[]= {1,2,3,4,5};
		System.out.println("Array elements before Reversing are:");
		for(int i=0;i<arr.length;i++)
		{
			System.out.print(arr[i]+" ");
		}
		
		System.out.println();
		System.out.println("Array elements after Reversing are:");
		for(int j=arr.length-1;j>=0;j--)
		{
			System.out.print(arr[j]+" ");
		}
	}

}
