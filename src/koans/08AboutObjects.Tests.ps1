#see Get-Help about_Object_Creation
Describe "AboutObjects" {
	It "should create an object using New-Object" {
		$obj = New-Object -TypeName System.Version -ArgumentList 2.3.4.5
		$obj.GetType() | Should Be Version
		$obj.Major | Should Be 2
	}
}