public class Soal_2 {
    static int F1(int input1, int input2) {
        return input1 + input2;
    }

    static int F1(int input1, int input2, int input3) {
        return F1(input1, input2) * F2(input3);
    }

    static int F2(int input1) {
        return input1 * 2;
    }

    static int F3(int input1, int input2, int input3, int input4) {
        return F1(input1, input4, input4) * F4(input2, input2);
    }

    static int F4(int input1, int input2) {
        return (input1 * input2) + input1;
    }

    static int F5() {
        return F1(2, 3, 3) + F3(2, 2, 4, 3);
    }

    public static void main(String[] args) {
        System.out.println("F1(2,3,3) = " + F1(2, 3, 3));
        System.out.println("F3(2,2,4,3) = " + F3(2, 2, 4, 3));
        System.out.println("Hasilnya F5() = ");
        System.out.println(F5());
    }
}
