$map = Get-Content C:\admin\map.txt

$right = 3
$down = 1
$treeCounter = 0
$location = 0

foreach ($line in $map){
  if ($down -gt 1){
    $location = $location + $right
    if ($location -ge $line.Length){
      $location = $location - $line.Length 
    }
    $lineArray = $line.ToCharArray()
    if ($lineArray[$location] -eq '#'){
      $treeCounter++
    }
  }
  $down++
 }
 "count = $treeCounter"