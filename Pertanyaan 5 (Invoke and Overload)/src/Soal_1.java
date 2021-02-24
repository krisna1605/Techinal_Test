public class Soal_1 {
    static int F1(int input1, int input2){
        return input1 - input2;
    }

    static int F2(int input1, int input2, int input3, int input4){
        return F1(input1,input2) + F3(input3,input4);
    }

    static int F3(int input1, int input2){
        return input1 * input2;
    }

    static int F4(int input1, int input2){
        return input1 + input2;
    }

    static int F4(int input1, int input2, int input3, int input4){
        return (input1 - input2) * (input3-input4);
    }

    static int F5(int input1, int input2, int input3){
        return (input1 * input2 * input3);
    }

    static int F6(int input1, int input2){
        return input1 / input2;
    }
    public static void main(String[] args) {
        System.out.println("Hasil = F2(F4(4,2,5,2),1,6,F6(6,3)");
        System.out.println(F2(F4(4,2,5,2),1,6,F6(6,3)));
    }
}
