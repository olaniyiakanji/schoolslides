import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class RandomNumbers {
    public static void main(String[] args) {
        List<Integer> numbers = generateRandomNumbers(10);
        System.out.println("Generated Numbers: " + numbers);

        int sum = calculateSum(numbers);
        System.out.println("Sum: " + sum);

        int max = findMaximum(numbers);
        System.out.println("Maximum Value: " + max);

        int min = findMinimum(numbers);
        System.out.println("Minimum Value: " + min);
    }

    public static List<Integer> generateRandomNumbers(int count) {
        Random random = new Random();
        List<Integer> numbers = new ArrayList<>();

        for (int i = 0; i < count; i++) {
            numbers.add(random.nextInt(100));
        }

        return numbers;
    }

    public static int calculateSum(List<Integer> numbers) {
        int sum = 0;
        for (int number : numbers) {
            sum += number;
        }
        return sum;
    }

    public static int findMaximum(List<Integer> numbers) {
        int max = Integer.MIN_VALUE;
        for (int number : numbers) {
            if (number > max) {
                max = number;
            }
        }
        return max;
    }

    public static int findMinimum(List<Integer> numbers) {
        int min = Integer.MAX_VALUE;
        for (int number : numbers) {
            if (number < min) {
                min = number;
            }
        }
        return min;
    }
}
