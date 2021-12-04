package com.sonata;

public class Student {
	int stdId;
	String stdName;
	int stdClass;
	Student(int s, String name, int m ) {
		this.stdId=s;
		this.stdName=name;
		this.stdClass=m;
	}
	Student(){}
	
	public void display()
	{
		System.out.println("Student Id = "+stdId);
		System.out.println("Student Name = "+stdName);
		System.out.println("Student Class = "+stdClass);
		System.out.println();
	}
	
	public static void main(String args[]) {
		Student s1=new Student();
		s1.stdId=55;
		s1.stdName="Vishal";
		s1.stdClass=8;
		s1.display();
		Student s2= new Student (2,"Abhinash",10);   
		s2.display();
	}

}
