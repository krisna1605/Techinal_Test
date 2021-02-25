public class Main {
    public static void main(String[] args) {
        int A, B, C, D, E, F;
        A = 4;
        B = 3;
        C = 6;
        D = 8;
        E = 2;
        F = 9;
        A = C;
        C = E;
        E = F;
        F = B;
        A = C;
        C = E;
        System.out.println("A = " + A + "\nB = " + B + "\nC = " + C + "\nD = " + D + "\nE = " + E + "\nF = " + F);
        System.out.println("Rumus Pertama: (A+C) X B = " + (A + B) * C);
        System.out.println("Rumus Kedua : (D + E + F) X C = " + (D + E + F) * C);

    }
}
