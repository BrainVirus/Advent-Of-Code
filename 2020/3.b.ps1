
#todo: turn into function and handle arguments including lines down. Current code will only work for 1 or 2 down. Not good solution, but works. 

$map = Get-Content C:\admin\map.txt

$rightArray = 1,3,5,7
$treeGrandTotal = @()

foreach ($right in $rightArray){
  $treeCounter = 0
  $location = 0
  $down = 1
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
  $treeGrandTotal += $treeCounter
 }
 
$rightArray = 1
 
foreach ($right in $rightArray){
  $treeCounter = 0
  $location = 0
  $down = 0
  foreach ($line in $map){
    if (($down -ge 2) -and ($down % 2-eq 0)){
      $location = $location + $right
      if ($location -ge $line.Length){
        $location = $location - $line.Length 
      }
      $lineArray = $line.ToCharArray()
      if ($lineArray[$location] -eq '#'){
        $treeCounter++
        "tree on line $down"
      }
    }
    $down++
  }
  "count = $treeCounter"
  $treeGrandTotal += $treeCounter
 }
 
$Command=$treeGrandTotal -join "*"
$Result = Invoke-Expression -Command $Command
Write-Output $Result
"Grand Total Trees = $Result "
 

