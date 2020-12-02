$numbers = Get-Content C:\admin\testtext.txt

foreach ($number1 in $numbers){

  foreach ($number2 in $numbers){
    $sum = [int]$number1 + [int]$number2
    if ($sum -eq 2020){
     $answer =  [int]$number1 * [int]$number2
      "$number1 + $number2 = $sum"
      "Answer is $answer"
      break
    }
  }
}