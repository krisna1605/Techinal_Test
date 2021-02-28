public class Main {
    static int boxkueA = 10;
    static int boxkueB = 12;
    static int boxkueC = 14;
    static int boxkueD = 8;
    static int boxkueE = 6;
    static int kueA = 0;
    static int kueB = 0;
    static int kueC = 0;
    static int kueD = 0;
    static int kueE = 0;


    public static void main(String[] args) {

            System.out.println("Check Kue A " + kueA);
            System.out.println("Check Kue B " + kueB);
            kueB = boxkueB * 2;
            System.out.println("Check Kue B " + kueB);
            {
                kueB = kueB - 5;
                kueA = boxkueA * 1;
                {
                    System.out.println("Check Kue B " + kueB);
                    kueA = kueA + (boxkueA * 2);
                    int kueD = boxkueD * 1;
                    kueD = kueD - 1;
                    System.out.println("Check Kue D " + kueD);
                    kueC = boxkueC * 2;
                }
                kueC = kueC;
                System.out.println("Check Kue C " + kueC);
                {
                    System.out.println("Check Kue B " + kueB);
                    System.out.println("Check Kue A " + kueA);
                    int kueD = boxkueD * 1;
                    System.out.println("Check Kue D " + kueD);
                    System.out.println("Check Kue C " + kueC);
                }
                System.out.println("Check Kue C " + kueC);
            }
            kueB = kueB - 5;
            {
                System.out.println("Check Kue A " + kueA);
                System.out.println("Check Kue D " + kueD);
                kueD = boxkueD * 1;
                kueC = boxkueC * 1;
                kueE = boxkueE * 1;
                kueD = kueD - 7;
                kueC = kueC - 13;
                kueE = kueE - 5;
                System.out.println("Check Kue D " + kueD);
                System.out.println("Check Kue C " + kueC);
            }
            System.out.println("Check Kue B " + kueB);
            System.out.println("Check Kue A " + kueA);
            System.out.println("Check Kue E " + kueE);
        }
    }



