#
# Acknowledgment:
#
# Powershell Koans is a port of Python Koans which is a port of Ruby Koans originally written by Jim Weirich
# and Joe O'brien of Edgecase.
#

$ScriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

Import-Module $ScriptDir\..\lib\Pester


#all my koans, in the correct order
$aboutDescriptions = @("AboutAsserts","AboutStrings")

#helpful defaults
$__FILL_ME_IN__ = "FILL ME IN"


#run koans, results ordered by file name then by order within file
$allKoans = Invoke-Pester -PassThru -Quiet

$koanHash = $allKoans.TestResult | Group-Object -property Describe -AsHashTable


#output results
$about = ""
$karma = $true
$i = 0
While ($karma) {
	$koan = $allKoans.TestResult[$i]
	
	if ($about -ne $koan.Describe) {
		$about = $koan.Describe
		Write-Host "Thinking $about" -ForegroundColor Magenta
	}
	
	$name = $koan.Name
	
	if ($koan.Passed) {
		Write-Host "    $name has expanded your awareness." -ForegroundColor Green
	} else {
		$failed = $koan.FailureMessage
		$stackTrace = $koan.StackTrace
		
		Write-Host "    $name has damaged your karma." -ForegroundColor Red
		Write-Host ""
		Write-Host "You have not yet reached enlightenment ..."
		Foreach ($str in $failed -split "\n") {
			Write-Host "    $str" -ForegroundColor Red 
		}  
		Write-Host ""
		Write-Host "Please meditate on the following code:"
		Foreach ($str in $stackTrace -split "\n") {
			Write-Host "    $str" -ForegroundColor Yellow
		}
		Write-Host ""
		Write-Host ""
	}
	
	$i += 1
	$karma = $koan.Passed -and $i -lt $allKoans.TestResult.Length
}
Write-Host "Flat is better than nested." -ForegroundColor Cyan
