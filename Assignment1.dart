/*
  Write a Dart program that checks if a given number is even or odd.
		Input: 2
		Output:	 2 is even
  */

import 'dart:math';

void checkOddOrEven(int number) {
  if (number % 2 == 0) {
    print(" $number is even number");
  } else {
    print(" $number is odd number");
  }
}

/*
Define a function named 'multiply' that takes two parameters and returns their product.
		Input: 5, 2
		Output:	 The product is 10.
*/

int multiply({inputNumberOne, inputNumberTwo}) {
  return inputNumberOne * inputNumberTwo;
}

/*
Create a class named 'Person' with a constructor and a method to display the person's name.
		Input: Person person = Person(‘Agent Jack’)
			person.display()	
		Output:	 My name is Agent Jack 
*/

class Person {
  String personName = '';

  Person(String personName) {
    this.personName = personName;
  }

  void display() {
    print("My Name is $personName");
  }
}

/*
  Write a Dart function that divides two numbers and handles the case when the denominator is zero. (USING Try Catch)
		Input: 5, 2     |  Input: 5, 0
		Output:	 2.5   |  Output: Cannot divide by zero.
  */

void divides(int divident, int divisor) {
  try {
    if (divisor == 0) {
      throw Exception("Cannot be divided bt 0");
    } else
      print(divident / divisor);
  } catch (e) {
    print(e);
  }
}

/*
Write a Dart program that checks whether a given number is positive, negative, or zero.
		Input: 7
		Output:	 Positive
*/
void checkNumberIsPossitiveNegativeOrZero(int inputNumber) {
  String result = inputNumber == 0
      ? "number is zero"
      : inputNumber > 0
          ? "number is possitive"
          : "number is negative";
  print(result);
}

/*
Create a Dart program that uses a switch statement to determine the day of the week based on a given number (1-7). (USING Switch Case)
		Input: 3                     | Input: 23
		Output:	 Wednesday | Output: Invalid Day number
  */
void dayOfTheWeek(int day) {
  switch (day) {
    case 1:
      {
        print("Monday");
      }
      break;
    case 2:
      {
        print("Tuesday");
      }
      break;
    case 3:
      {
        print("Wednesday");
      }
      break;
    case 4:
      {
        print("Thursday");
      }
      break;
    case 5:
      {
        print("Friday");
      }
      break;
    case 6:
      {
        print("Saturday");
      }
      break;
    case 7:
      {
        print("Sunday");
      }
      break;
    default:
      {
        print("Invalid Day Number");
      }
      break;
  }
}

/*
  Write a Dart program that uses a switch statement to determine the season based on a given month. (January/February/March - Winter), (April/May/June - Sprint), (July,August,September - Summer), (October/November/December - Fall) 
		Input: Jan 
		Output:	 Winter
  */

void seasonOfTheYear(String month) {
  switch (month.toLowerCase()) {
    case ("january" || "february" || "march"):
      {
        print("Winter");
      }
      break;

    case ("april" || "may" || "june"):
      {
        print("Sprint");
      }
      break;

    case ("july" || "august" || "september"):
      {
        print("Summer");
      }
      break;

    case ("november" || "december" || "octomber"):
      {
        print("fall");
      }
      break;

    default:
      {
        print("Invalid Month");
      }
      break;
  }
}

/*

Write a Dart program with a function that calculates the volume of a box.
The function should take three parameters: length, width, and height.
Make height an optional parameter with a default value of 1.0.
Input: length: 10, width: 10, height, 3 | Input: length: 10, width: 10 
		Output:	 300                                        | Output: 100

*/

double volumeOfRectangle(int length, int breadth, [double height = 1.0]) {
  return length * breadth * height;
}

void main() {
  // Declare a variable named 'message' and assign the value "Hello, Dart!" to it.
  String message = "Hello, Dart!";
  print(message);

  /*
  Write a Dart program that checks if a given number is even or odd.
		Input: 2
		Output:	 2 is even
  */
  checkOddOrEven(4);

  /*
Create a list of fruits and print each fruit using a loop.
		Input: ['Apple', 'Banana', 'Orange', 'Grapes']
		Output:	 Apple, Banana, Orange, Grapes
  */

  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes'];
  for (int indexOfFruits = 0; indexOfFruits < fruits.length; indexOfFruits++) {
    print(fruits[indexOfFruits]);
  }

  /*

Define a function named 'multiply' that takes two parameters and returns their product.
		Input: 5, 2
		Output:	 The product is 10.
*/
  int multiplicationResult = multiply(inputNumberOne: 5, inputNumberTwo: 2);
  print("the product is $multiplicationResult");

/*
Create a class named 'Person' with a constructor and a method to display the person's name.
		Input: Person person = Person(‘Agent Jack’)
			person.display()	
		Output:	 My name is Agent Jack 
*/

  Person person = new Person("Agent Jack ");
  person.display();

  /*
Define a Dart program that uses a map to store the age of different people and prints the ages.
		Input: Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };

		Output:	 Alice is 25 years old //… should print all items in new line
  */

  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };

  ages.forEach((nameOfPerson, ageOfPerson) {
    print("$nameOfPerson is $ageOfPerson years old");
  });

/*
Write a Dart function that divides two numbers and handles the case when the denominator is zero. (USING Try Catch)
		Input: 5, 2     |  Input: 5, 0
		Output:	 2.5   |  Output: Cannot divide by zero.
*/

  divides(5, 2);
  divides(5, 0);

  /*
Write a Dart program that removes duplicates from a list and prints the unique elements.
		Input: [1, 2, 3, 2, 4, 5, 1, 6]
		Output:	 [1, 2, 3, 4, 5, 6]

  */

  List<int> numbers = [1, 2, 3, 2, 4, 5, 1, 6];
  Set<int> uniqueNumbers = {};
  uniqueNumbers.addAll(numbers);
  print(uniqueNumbers);

/*
Write a Dart program that checks whether a given number is positive, negative, or zero.
		Input: 7
		Output:	 Positive
*/
  checkNumberIsPossitiveNegativeOrZero(-3);

  /*
Create a Dart program that uses a switch statement to determine the day of the week based on a given number (1-7). (USING Switch Case)
		Input: 3                     | Input: 23
		Output:	 Wednesday | Output: Invalid Day number
  */

  dayOfTheWeek(3);
  dayOfTheWeek(23);

  /*
  Write a Dart program that uses a switch statement to determine the season based on a given month. (January/February/March - Winter), (April/May/June - Sprint), (July,August,September - Summer), (October/November/December - Fall) 
		Input: Jan 
		Output:	 Winter
  */

  seasonOfTheYear("January");

  /*Write a Dart program that skips printing even numbers from a list of integers using 'continue'. 
		Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		Output:	 1,3,5,7,9 */

  List<int> numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int indexOfNumber = 0;
      indexOfNumber < numbersList.length;
      indexOfNumber++) {
    if (numbersList[indexOfNumber] % 2 == 0) {
      continue;
    } else {
      print(numbersList[indexOfNumber]);
    }
  }

  /*
Create a Dart program that finds the first occurrence of a negative number in a list using 'break'.
	Input: [5, 8, -3, 10, -7, 2]
		Output:	 5, 8
  */

  List<int> integerList = [5, 8, -3, 10, -7, 2];
  for (int indexOfNumber = 0;
      indexOfNumber < integerList.length;
      indexOfNumber++) {
    if (integerList[indexOfNumber] < 0) {
      break;
    } else {
      print(integerList[indexOfNumber]);
    }
  }

/*

Write a Dart program with a function that calculates the volume of a box.
The function should take three parameters: length, width, and height.
Make height an optional parameter with a default value of 1.0.
Input: length: 10, width: 10, height, 3 | Input: length: 10, width: 10 
		Output:	 300                                        | Output: 100
*/

  double resultVolume = volumeOfRectangle(10, 10, 3);
  print(resultVolume);

  /*
Write a Dart program that uses an “where” to filter a list of even numbers.
Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		Output:	 2,4,6,8,10
  */

  List<int> result = numbersList.where((element) => element % 2 == 0).toList();
  print(result);

  /*
  Combine two lists using spread operator
Input: [1,2,3,4], [-1,-2,-3,-4]
Output: [-1,-2,-3,-4, 1,2,3,4]
  */
  List<int> firstList = [1, 2, 3, 4];
  List<int> secondList = [-1, -2, -3, -4];

  List<int> resultantList = [...secondList, ...firstList];
  print(resultantList);
}
