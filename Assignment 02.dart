/*
Author: Md Alhaz Mondal Hredhay
Student of Faridpur Polytechnic Institute
GitHub & Linkedin: hredhayxz
E-mail: amhredhay102@gmail.com
*/

String studentGrade(String studentName, int testScore) {
  String gettingGrade;

  ///Using if-else
  /*
  //Starting if-else
  if (0 > testScore || testScore > 100) {
    gettingGrade = "Invalid Grade";
  } else if (90 <= testScore) {
    gettingGrade = "A";
  } else if (80 <= testScore) {
    gettingGrade = "B";
  } else if (70 <= testScore) {
    gettingGrade = "C";
  } else if (60 <= testScore) {
    gettingGrade = "D";
  } else {
    gettingGrade = "F";
  }
  //End of if-else
  */

  ///Using switch
  //Starting switch
  if (0 > testScore || testScore > 100) {
    gettingGrade = "Invalid Grade";
  } else {
    double marks = testScore / 10;
    int caseKey = marks.toInt();
    switch (caseKey) {
      case 10:
      case 9:
        // Marks between 90-100
        gettingGrade = "A";
        break;
      case 8:
        // Marks between 80-89
        gettingGrade = "B";
        break;
      case 7:
        // Marks between 70-79
        gettingGrade = "C";
        break;
      case 6:
        // Marks between 60-69
        gettingGrade = "D";
        break;
      default:
        // Marks less than 59
        gettingGrade = "F";
    }
  }
  //End of switch
  return gettingGrade;
}

void main() {
  String studentName = "Md Alhaz Mondal Hredhay";
  int testScore = 96;
  String grade = studentGrade(studentName, testScore);
  print("$studentName's grade: $grade");
}
