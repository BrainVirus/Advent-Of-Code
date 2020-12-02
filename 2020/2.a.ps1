$data = Get-Content C:\admin\testtext2.txt
#$data = '2-7 s: egcswlb'

$correctPWCount = 0

foreach ($pwData in $data){

  $pwData = $pwData -split '-| |:'
  $minCount = $pwData[0]
  $maxCount = $pwData[1]
  $testChar = $pwData[2]
  $testPW = $pwData[4]
  $charCount =($pwData[4].ToCharArray() -eq "$testChar").count
  
  if (($charCount -ge $minCount) -and ($charCount -le $maxCount)){
    $correctPWCount++
  }
} 

"There are $correctPWCount correct passwords"