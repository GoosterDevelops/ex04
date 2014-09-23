/* EXERCISE 4 */

import 'dart:math' as math;

void main() {
  print('------------------------');
  /* FINBONNACCI EXERCISE */ 
  int count = 9;
    String sequence = 
        fibonacciIteration(count);
    print('FIBONACCI EXERCISE');
    print('Fibonacci with iteration: '
          '${count + 1} numbers sequence');
    print(sequence);
    
    /* END FINBONNACCI EXERCISE */ 
    
    print('------------------------');
    
    /* RECTANGLE + LINE EXERCISE */
    
    print('RECTANGLE + LINE EXERCISE');
    print('the final coordinates are ');
    
    int width = 800;
    int height = 600;
    print("${lineCoordinates(width, height)} \n");
    
    /* END RECTANGLE + LINE EXERCISE */
    
    print('------------------------');
    
    /* NEW DATETIME FUNCTION FOR BIRTHDAY TIME PASSED */
     
    print('BEGIN TIME SINCE BIRTHDAY FUNCTION');
    int year = 1993;
    int month = 06;
    int day = 10;
    print("${computeTimeSinceBirth(day, month, year)}"); 
      
    
    /* END BIRTHDAY */
       
    print('------------------------');
       
    /* COMPUND INTEREST RATE */
    
    print('INVESTMENT RETURN EXERCISE');
    int yearInvestment = 5;
    double interest = 4.8;
    double investment = 1000.0;
    print("${computeInterest(investment, interest, yearInvestment)}");
    
    /* END INTEREST RATE */
    
    print('------------------------');
    
    /* TABLE OF 8 */
    
    int tableMultiplier = 8;
    int maxLoop = 17;
    print('TABLE OF 8');
    print("${tableOf8(maxLoop, tableMultiplier)}");
    
    /* END TABLE OF 8 */
}



String fibonacciIteration(int t) {
  int a = 0, b = 1, f = 1, n = 1;
  String result = '0' ' 1';
  while (n < t) {
    f = a + b;
    result = '$result $f';
    a = b; 
    b = f;
    n = n + 1;
  }
  return result;
}




String lineCoordinates(int width, int height){
 var angle = 45;
 var hypoth = 160;
 var radiant = angle * (math.PI / 180);
 var xFin = width/2 + hypoth*math.cos(radiant);
 var yFin = height/2 + hypoth*math.sin(radiant);
 String Coordinates = 'Beginning: (${(width/2).toStringAsFixed(2)}, ${(height/2).toStringAsFixed(2)}) \n'
 'End: (${xFin.toStringAsFixed(2)}, ${yFin.toStringAsFixed(2)})';
 return Coordinates;
 }




String computeTimeSinceBirth(int aday, int amonth, int ayear){
 var currentDate = new DateTime.now();
      String date = currentDate.toString();
      var dateOnly = date.split(' ');
      var splitDate = dateOnly[0];
      var splitElements = splitDate.split('-');
     
      var years = int.parse(splitElements[0]);
      var month = int.parse(splitElements[1]);
      var day = int.parse(splitElements[2]);
      
      int newYears;
      int newMonths;
      int newDays;
      if (month < amonth) {
        newYears = (years-ayear) - 1;
        newMonths = (amonth-month);
        newMonths = (amonth - newMonths);
        
      } else {
        newYears = (years-ayear);
        newMonths = (month-amonth);
      }
      if (day < aday){      
        newMonths = newMonths - 1;
        newDays = (aday-day);
         if (newMonths == 0) {
           newMonths = 11;
         }
      } else {
        newDays = (day-aday);
      }
      
      String resultTime = '$newYears years  $newMonths months  $newDays days \n';
      return resultTime;
 }



String computeInterest(double investment, double interest, int yearInvestment){
  double monthlyInterest = investment;
  String totalInv = '' ;
  for(int i=1; i<yearInvestment+1; i++){ 
    monthlyInterest = monthlyInterest + ((interest * monthlyInterest)/100);
    totalInv = "$totalInv ${i} ans = ${monthlyInterest} \n";
  }
  return totalInv;
}


String tableOf8(int maxLoop, int tableMultiplier) {
  String tableEight = '';
  int x;
   for (int i = 0; i < (maxLoop); i ++ ){
     x = tableMultiplier;
          x = x * i;
     tableEight = "$tableEight ${tableMultiplier} * ${i} = ${x} \n";
     
   }
   return tableEight;
   
}


