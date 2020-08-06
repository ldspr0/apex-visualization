public class StringArrayTest {
    public static string[] generateStringArray(integer n){
        String[] result = new List<String>();
        for (integer i = 0; i < n; i++){
            result.add('Test '+ i);
        }
        return result;
    }
}