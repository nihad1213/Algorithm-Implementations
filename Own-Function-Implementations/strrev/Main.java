public class Main {

    public static String ownStrrev(String str) {
        if (str == null) return null;

        char[] chars = str.toCharArray();
        int len = chars.length;

        for (int i = 0; i < len / 2; i++) {
            char temp = chars[i];
            chars[i] = chars[len - 1 - i];
            chars[len - 1 - i] = temp;
        }

        return new String(chars);
    }

    void main() {
        String result = ownStrrev("Nihad");
        System.out.println(result);
    }
}