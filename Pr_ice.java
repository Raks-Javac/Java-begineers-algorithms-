public class Pr_ice {
 public static void main(String []args){
	 
	  char ch ;
	 java.util.Scanner sc = new  java.util.Scanner(System.in);
	do{
		System.out.println("Enter your initial price");
    int price= sc.nextInt();
        System.out.println("Enter your tax rate for your product");
    int tax = sc.nextInt();			 
    int v = 1+tax/100;
   int Price = price*(1+v);
     System.out.println("The price of the product is =  "+ Price);
	 System.out.println("Do you want to continue operation? Y for Yes and N for no");
	  ch = sc.next().charAt(0);
	  System.out.println("Thank you");
	 }	   
	 while(ch!= 'n'); 
	 }	 
}