$f1=get-content -Path .\file1.txt
$f2=get-content -Path .\file2.txt
foreach ($objf1 in $f1)
{
                $objf1 = $objf1.tostring().Trim()
                $objf1 = $objf1.Replace(" ","")
                $objf1 = $objf1.ToUpper()
                $found = $false
                foreach ($objf2 in $f2)
                {
                               $objf2=$objf2.Replace(" ", "")
                               $objf2=$objf2.Trim()
                               $objf2=$objf2.ToUpper()
                               if ($objf1 -eq $objf2)
                               {
                                               $found = $true
                               }
                }
                if ((!$found) -and ($objf1 -ne ""))
                {
                               $result += $objf1.tostring().trim() + "`r`n"
                }
}
set-content -path resultFile.txt -value $result
#echo $result
