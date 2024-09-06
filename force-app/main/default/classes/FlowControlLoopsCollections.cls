/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Zohaib Karim Noorani
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        if (x > y){ //applying if statement
            return 'Hello World!'; //returns 'Hello World!' if x > y
        }
        return null; // returns null in all other cases
    }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        return age >= 18; // returns the Boolean true only when the age is equal to or greater than 18
    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        if (num1 >= num2){ //checking for greater and equal to for num1
            return num1; //return num1
        }
        else if (num2 > num1){ //checking for num2 greater than num1
            return num2; //return num2
        }
        else {
            return null; //for anyother case return null
        }
    }


    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        if (a > 0) { //if a is positive
            return 'Positive'; //return positive
        }
        else if (a < 0) { //if a is negative
            return 'Negative'; //return negative
        }
        else if (a == 0){ //if a is zero
            return 'Zero'; //return zero
        }
        else{
        return null; //for everything else return null
        }
    }

    /**
     * Question 5
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        // Check if the input integer is null
        if (a == null) {
            return null; // Return null if the input is null
        }
    
        // Use the Math.mod method to determine if the integer is even or odd
        if (Math.mod(a, 2) == 0) {
            return 'Even'; // Return 'Even' if the remainder of the division by 2 is 0
        } else {
            return 'Odd';  // Return 'Odd' if the remainder of the division by 2 is not 0
        }
    }  

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        // Check if the input string is null
        if (a == null) {
            return 'Null';
        }
    
        // Check if the input string is empty (i.e., has zero length)
        if (String.isEmpty(a)) {
            return 'Empty';
        } else {
            // If the string is neither null nor empty, it contains text
            return 'Contains Text';
        }
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
        // Check if the score is 90 or above
        if (score >= 90) {
            return 'A'; // Return "A" for scores 90 and above
        }
        // Check if the score is between 80 and 89
        else if (score >= 80) {
            return 'B'; // Return "B" for scores between 80 and 89
        }
        // Check if the score is between 70 and 79
        else if (score >= 70) {
            return 'C'; // Return "C" for scores between 70 and 79
        }
        // Check if the score is between 60 and 69
        else if (score >= 60) {
            return 'D'; // Return "D" for scores between 60 and 69
        }
        // If the score is below 60
        else {
            return 'F'; // Return "F" for scores below 60
        }
    }


    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        // Initialize the sum to 0
        Integer sum = 0;
    
        // Loop through all numbers from 1 up to intLimit (inclusive)
        for (Integer num = 1; num <= intLimit; num++) {
            // Add the current number to the sum
            sum = sum + num;
        }
        return sum;
    }
    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        // Initialize the result string as an empty string
        String helloWorld = '';
    
        // Use a for loop to append 'Hello World!;' three times
        for (Integer i = 1; i <= 3; i++) {
            // Append 'Hello World!; ' to the result string in each iteration
            helloWorld += 'Hello World!; ';
        }
    
        // Return the final string containing 'Hello World!;' three times with spaces in between
        return helloWorld;
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount) {

        // Initialize the result string as an empty string
        String repeatInput = '';
    
        // Loop to append the inputString to the result string repeatCount times
        for (Integer i = 1; i <= repeatCount; i++) {
            // Append the inputString to the result string
            repeatInput += inputString;
    
            // Add a semicolon and space after the inputString, except for the last occurrence
            if (i < repeatCount) {
                repeatInput += '; ';
            }
        }
    
        // Return the final string with the inputString repeated and separated by semicolons and spaces
        return repeatInput;
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        // Create a new list of integers and initialize it with the values 1, 2, and 3
        List<Integer> newList = new List<Integer>{1, 2, 3};
        
        // Return the populated list
        return newList;
    }

    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; //DO NOT CHANGE

        // Remove the 3rd element (number 3) from the list
        numberList.remove(2);
        // Return the updated list
        return numberList; // Replace null with the variable you used to store the result
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        // Create a new list of integers
        List<Integer> newlst = new List<Integer>();
    
        // Use a for loop to populate the list with integers from 1 to n
        for (Integer lst = 1; lst <= n; lst++) {
            newlst.add(lst); // Add the current integer to the list
        }
    
        // Return the populated list of integers
        return newlst;
    }

    /**
     * Question 14
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        // Create a new Set of strings to store unique elements
        Set<String> stringSet = new Set<String>();
    
        // Iterate through each string in the input list
        for (String stringValue : inputList) {
            // Add the string to the set (duplicates will be automatically ignored)
            stringSet.add(stringValue);
        }
        // Return the set containing unique strings
        return stringSet;
    }
    

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        // Predefined list of integers, including both positive and negative values
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; // DO NOT CHANGE
    
        // Initialize a variable to store the sum of positive integers
        Integer sum = 0;
    
        // Loop through each number in the list
        for (Integer numb : numbers) {
            // Check if the current number is positive
            if (numb > 0) {
                // Add the positive number to the sum
                sum = sum + numb;
            }
            // If the number is negative, skip this iteration (implicitly handled by not adding it)
        }
    
        // Return the sum of all positive integers
        return sum;
    }

    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        // Initialize the index variable
        Integer index = -1; // Set default to -1, indicating the word was not found
    
        // Loop through the list of words
        for (String word : words) {
            // Use .equals() to compare the strings
            if (word.equals(wordToFind)) {
                // If the word is found, get its index in the list
                index = words.indexOf(word);
                break; // Exit the loop as we've found the word
            }
        }
    
        // Return the index of the word or -1 if not found
        return index;
    }

    /**
     * Question 17
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        // The list of money in the wallet, represented in dollars and cents
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE
    
        // Initialize a variable to keep track of the total sum of money
        Decimal sum = 0;
        
        // Iterate over each money value in the wallet
        for(Decimal money : moneyInWallet){
            // Add the current money value to the total sum
            sum = sum + money;
    
            // If the total sum exceeds 40, stop the loop
            if (sum > 40){
                break;
            }
        }
    
        // Return the total sum calculated
        return sum;
    }

    /**
     * Question 18
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        // Initialize an empty Map to store fruit names as keys and their quantities as values
        Map<String, Integer> fruitBasket = new Map<String, Integer>();
    
        // Add key-value pairs to the Map
        // The key is the name of the fruit, and the value is the quantity
    
        // Add 5 Apples to the Map
        fruitBasket.put('Apples', 5);
        
        // Add 10 Oranges to the Map
        fruitBasket.put('Oranges', 10);
        
        // Add 15 Bananas to the Map
        fruitBasket.put('Bananas', 15);
        
        // Add 20 Pears to the Map
        fruitBasket.put('Pears', 20);
        
        // Add 25 Grapes to the Map
        fruitBasket.put('Grapes', 25);
    
        // Return the populated Map with all the fruit and their respective quantities
        return fruitBasket;
    }
    
    /**
     * Question 19
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        // Initialize a Map to store employee names as keys and their salaries as values
        Map<String, Integer> salary = new Map<String, Integer>();
    
        // Add key-value pairs to the Map
        // add John Doe => 50000
        salary.put('John Doe', 50000);
        // add Jane Smith => 60000
        salary.put('Jane Smith', 60000);
        // add Sam Brown => 55000
        salary.put('Sam Brown', 55000);
        // add Alice Johnson => 65000
        salary.put('Alice Johnson', 65000);
    
        // Get the salary of the employee using the provided employeeName as the key
    
        // Return the salary of the employee, or null if the employee is not found in the Map
        return salary.get(employeeName);
    }
    

    /**
     * Question 20
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then, iterates over the map and checks if an employee's salary is more than 55000.
     * If it is, add the employee's name to a list of employees that is returned by the method.
     * Remember that a Map is a collection of key-value pairs. Key are a set of unique values, so you can't have duplicate keys. Values are a list of values, so you can have duplicate values.
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return A list of employee names who have a salary more than 55000.
     */
    public static List<String> getHighPaidEmployees() {
        // Initialize a Map to store employee names as keys and their salaries as values
        Map<String, Integer> employeeSalaries = new Map<String, Integer>();
    
        // Add key-value pairs to the Map
        // The key is the employee's name, and the value is their salary
        // Add John Doe with a salary of 50000
        employeeSalaries.put('John Doe', 50000);
        // Add Jane Smith with a salary of 60000
        employeeSalaries.put('Jane Smith', 60000);
        // Add Sam Brown with a salary of 55000
        employeeSalaries.put('Sam Brown', 55000);
        // Add Alice Johnson with a salary of 65000
        employeeSalaries.put('Alice Johnson', 65000);
    
        // Initialize a List to store the names of employees who are considered high paid
        List<String> highlyPaid = new List<String>();
    
        // Iterate over the Map using a for loop to access each employee's name
        for(String name : employeeSalaries.keySet()) {
            // Check if the employee's salary is greater than 55000
            if (employeeSalaries.get(name) > 55000) {
                // Add the employee's name to the List of highly paid employees
                highlyPaid.add(name);
            }
        }
    
        // Return the List containing names of employees with salaries above 55000
        return highlyPaid;
    }    

}