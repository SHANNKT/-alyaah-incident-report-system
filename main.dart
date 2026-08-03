import 'dart:io';


double computeAverage(List<double> scores) {
  double total = 0;

  for (double score in scores) {
    total += score;
  }

  return total / scores.length;
}

void main() {
  
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

 
  int? age;
  while (age == null) {
    stdout.write("Enter age: ");
    age = int.tryParse(stdin.readLineSync()!);

    if (age == null) {
      print("Invalid input. Please enter a valid number.");
    }
  }

  
  List<double> scores = [];

  
  for (int i = 1; i <= 3; i++) {
    double? score;

    while (score == null) {
      stdout.write("Enter quiz $i: ");
      score = double.tryParse(stdin.readLineSync()!);

      if (score == null) {
        print("Invalid input. Please enter a valid score.");
      }
    }

    scores.add(score);
  }

  
  double average = computeAverage(scores);

  
  String status;
  String remark;

  if (average >= 75) {
    status = "Passed";
    remark = "Good job, keep it up!";
  } else {
    status = "Failed";
    remark = "Study harder next time.";
  }

  
  print("\n===== Student Performance =====");
  print("Average: ${average.toStringAsFixed(2)}");
  print("Status: $status");
  print("Remark: $remark");
}

// //////////////////////////////////////////////////////////


// gumamit po ako ng if-else para po macheck yung score so kapag nasa 85 pataas ang scores is passed 
// pag 75 pababa namn is failed, gumamit din ako ng for loop para sa enter quiz so bali 3 ang lumabas
// tapos sa function is add para mag add yung dalawang numbers then gumamit din ako ng list,set,map
// para mag store ng data tapos halos lahat kinuha kona sa ibang code dating mga activites.