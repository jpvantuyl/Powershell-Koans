Describe "AboutEquality" {
	It "should assert equality with the -eq operator" {
		$true -eq $true | Should Be $true
	}

	It "should assert inequality with the -ne operator" {
		$true -ne $false | Should Be $true
	}

	It "should invert results with the -not operator" {
		-not ($true -eq $false) | Should Be $true
	}

	It "should assert that zero is falsey" {
		$true -eq 0 | Should Be $false
		$false -eq 0 | Should Be $true
	}

	It "should assert that non-zero numbers are truthy" {
		$true -eq 1 | Should Be $true
		$false -eq 1 | Should Be $false
	}

	It "should assert that empty string is falsey" {
		$true -eq "" | Should Be $false
		$false -eq "" | Should Be $true
	}

	It "should assert that non-empty strings are truthy" {
		$true -eq "apple pie" | Should Be $true
		$false -eq "apple pie" | Should Be $false
	}

	It "should assert that null is neither true nor false" {
		$true -eq $null | Should Be $false
		$false -eq $null | Should Be $false
	}

	It "should assert that object is truthy" {
        $obj = New-Object -TypeName object
		$true -eq $obj | Should Be $true
		$false -eq $obj | Should Be $false
	}

	It "should assert that empty array is falsey" {
		$true -eq @() | Should Be $false
		$false -eq @() | Should Be $true
	}

	It "should assert that non-empty arrays are truthy" {
		$true -eq @(1, 2, 3) | Should Be $true
		$false -eq @(1, 2, 3) | Should Be $false
	}

	It "should assert that empty hash is truthy" {
		$true -eq @{} | Should Be $true
		$false -eq @{} | Should Be $false
	}

	It "should assert that non-empty hashes are truthy" {
		$true -eq @{ Name = "Value" } | Should Be $true
		$false -eq @{ Name = "Value" } | Should Be $false
	}
}