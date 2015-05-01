#
# Acknowledgment:
#
# Powershell Koans is a port of Python Koans which is a port of Ruby Koans originally written by Jim Weirich
# and Joe O'brien of Edgecase.
#

$ScriptDir = Split-Path -parent $MyInvocation.MyCommand.Path

Import-Module $ScriptDir\..\lib\Pester

$allKoans = Invoke-Pester -PassThru -Quiet

$failedKoans = $allKoans.TestResult | Where-Object { $_.Passed -ne $true }

$failedKoans[0] 
#        Mountain().walk_the_path(sys.argv)