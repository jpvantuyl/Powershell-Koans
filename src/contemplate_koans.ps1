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


#run koans, results ordered by file name then by order within file
$allKoans = Invoke-Pester -PassThru -Quiet

$koanHash = $allKoans.TestResult | Group-Object -property Describe -AsHashTable


#output results
$firstFailedKoan = $koanHash["AboutAsserts"][0]
Write-Host "Thinking $firstFailedKoan.Describe" -ForegroundColor Magenta
Write-Host "    $firstFailedKoan.Name has damaged your karma." -ForegroundColor Red
Write-Host ""
Write-Host "You have not yet reached enlightenment ..."
Write-Host "    $firstFailedKoan.FailureMessage" -ForegroundColor Red   
Write-Host ""
Write-Host "Please meditate on the following code:"
Write-Host "    $firstFailedKoan.StackTrace" -ForegroundColor Yellow
Write-Host ""
Write-Host ""
Write-Host "Flat is better than nested." -ForegroundColor Cyan
