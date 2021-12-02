package com.sonata;

public class SumArrayValues {
	public static void main(String args[]) {
		int arr[]= {1,2,3,4,5,6};
		int sum=0;
		System.out.println("Displaying Array elements:");
		for( int i=0;i<arr.length;i++)
		{
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		for(int j=0;j<arr.length;j++)
		{
			sum=sum+arr[j];
		}
		System.out.println("Sum of Array values are "+sum);
	}
}
