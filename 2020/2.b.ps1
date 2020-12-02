$data = Get-Content C:\admin\testtext2.txt

$correctPWCount = 0

foreach ($pwData in $data){

  $pwData = $pwData -split '-| |:'
  $charpos1 = $pwData[0]-1
  $charpos2 = $pwData[1]-1
  $testChar = $pwData[2]
  $pwCharArray = $pwData[4].ToCharArray()  
  
  if (($pwCharArray[$charpos1] -eq $testChar) -xor ($pwCharArray[$charpos2] -eq $testChar)){
     $correctPWCount++
  }
} 

"There are $correctPWCount correct passwords"