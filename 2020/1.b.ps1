$numbers = Get-Content C:\admin\testtext.txt
$solved = $false
foreach ($number1 in $numbers){
if($solved){break}
  foreach ($number2 in $numbers){
  if($solved){break}
    foreach ($number3 in $numbers){
    if($solved){break}
   
    $sum = [int]$number1 + [int]$number2 + [int]$number3
    if ($sum -eq 2020){
      $answer =  [int]$number1 * [int]$number2 * [int]$number3
      "Answer is $answer"
      $solved = $true
      }
    }
  }
}