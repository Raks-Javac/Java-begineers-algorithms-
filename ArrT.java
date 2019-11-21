import java.util.Random;

public class ArrT {
     public static void main(String []args){
		 System.out.println("index\t   Numbers");
	int StrArr[] = {5,6,7,8,9,10};
	
   for(int count=0;count<StrArr.length;count++) {
      System.out.println(count +"\t   "+ StrArr[count]);
       }
	   
	  

	  int Arr_Sum[] = {5,6,7,8,9,10};
	   int sum = 0;
	   
	   for(int counter=0;counter<StrArr.length;counter++)  {
		   sum += Arr_Sum[counter];
	     }
            System.out.println("The sum of the numbers =  " +sum);

       
	      

		  Random Rand= new  Random();
           int freq[] = new int[7]; 

   for(int roll=1;roll<1000;roll++) {
     ++freq[1+Rand.nextInt(6)];
   }
     System.out.println("Face\tFrequency");
	 
   for(int face=1;face<freq.length;face++) {
	    System.out.println(face+"\t"+freq[face]);
   }



        







   
	 }
}