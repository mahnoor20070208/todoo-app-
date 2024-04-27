import 'dart:io';

String? value1, value2;
void main() {
  int tryCount = 0;
  while (true) {
    if (functions()) {
      print("");
      stdout.write("Do you want to start again? yes/no : ");
      String? choice = stdin.readLineSync();
      print("");
      switch (choice) {
        case 'yes':
          tryCount++;
          break;
        case 'no':
          print("");
          print("Bye Bye :)");
          print("");
          return;
        default:
          print("Error");
      }
    } else {
      print("Error");
      break; // Add this line to exit the while loop if there is an error in functions()
    }
  }
}

bool functions() {
  print(
      "Please Enter number \n 1) Temprature Converter \n 2) Lenght Converter \n 3) Time Converter ");
  stdout.write("Enter number: ");
  value2 = stdin.readLineSync();
  print("");

  switch (value2) {
    case '1':
      temprature();
    case '2':
      lenght();
    case '3':
      time();
    default:
      print("Try Again");
  }
  return true;
}

bool lenght() {
  print(
      "Please Enter number \n 1) M to Km \n 2) Km to M \n 3) Ft to In \n 4) In to Ft \n 5) Cm to M \n 6) M to Cm");
  stdout.write("Enter number: ");
  value2 = stdin.readLineSync();
  print("");
  switch (value2) {
    case '1':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(meter_kilometer(value3));
    case '2':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(kilometer_meter(value3));
    case '3':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(feet_inches(value3));
    case '4':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(inches_feet(value3));
    case '5':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(cm_meter(value3));
    case '6':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(meter_cm(value3));
    default:
      print("Error");
  }
  return true;
}

bool time() {
  print(
      "Please Enter number \n 1) Sec to Min \n 2) Min to Sec \n 3) Min to Hour \n 4) Sec to Hour \n 5) MilliSec to Min \n 6) MilliSec to Hour");
  stdout.write("Enter number: ");
  value2 = stdin.readLineSync();
  print("");
  switch (value2) {
    case '1':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(sec_min(value3));
    case '2':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(min_sec(value3));
    case '3':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(min_hour(value3));
    case '4':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(sec_hour(value3));
    case '5':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(milli_min(value3));
    case '6':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(milli_hour(value3));
    default:
      print("Error");
  }
  return true;
}

bool temprature() {
  print(
      "Please Enter number \n 1) Fahrenhiet to Celsius \n 2) Celsius to Fahrenhiet");
  stdout.write("Enter number: ");
  value2 = stdin.readLineSync();

  switch (value2) {
    case '1':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(f_to_c(value3));
    case '2':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(c_to_f(value3));
    default:
      print("Error");
  }
  return true;
}

double meter_kilometer(double value) {
  //1
  double km = value / 1000;
  return km;
}

double kilometer_meter(double value) {
  //2
  double m = value * 1000;
  return m;
}

double feet_inches(double value) {
  //3
  double inc = value * 12;
  return inc;
}

double inches_feet(double value) {
  //4
  double ft = value / 12;
  return ft;
}

double cm_meter(double value) {
  //5
  double m = value / 100;
  return m;
}

double meter_cm(double value) {
  //6
  double cm = value * 100;
  return cm;
}
// temprature conversion

//1
double f_to_c(double value) {
  double celsius = (value - 32) / 1.8;
  return celsius;
}

//2
double c_to_f(double value) {
  double fahrenhiet = (9 / 5) * value + 32;
  return fahrenhiet;
}
// Time conversion

//1
double sec_min(double value) {
  double minutes = value / 60;
  return minutes;
}

//2
double min_sec(double value) {
  double second = value * 60;
  return second;
}

//3
double min_hour(double value) {
  double second = value / 60;
  return second;
}

//4
double sec_hour(double value) {
  double hour = value / 3600;
  return hour;
}

//5
double milli_min(double value) {
  double min = value / 60000;
  return min;
}

//6
double milli_hour(double value) {
  double ho = value / 3.6000e+6;
  return ho;
}