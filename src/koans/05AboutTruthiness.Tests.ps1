Describe "AboutTruthiness" {
	It "should assert equality with the -eq operator" {
		$true -eq $true | Should Be $__FILL_ME_IN__
	}

	It "should assert inequality with the -ne operator" {
		$true -ne $false | Should Be $__FILL_ME_IN__
	}

	It "should invert results with the -not operator" {
		-not ($true -eq $false) | Should Be $__FILL_ME_IN__
	}

	It "should assert that zero is falsey" {
		$true -eq 0 | Should Be $__FILL_ME_IN__
		$false -eq 0 | Should Be $__FILL_ME_IN__
	}

	It "should assert that non-zero numbers are truthy" {
		$true -eq 1 | Should Be $__FILL_ME_IN__
		$false -eq 1 | Should Be $__FILL_ME_IN__
	}

	It "should assert that empty string is falsey" {
		$true -eq "" | Should Be $__FILL_ME_IN__
		$false -eq "" | Should Be $__FILL_ME_IN__
	}

	It "should assert that non-empty strings are truthy" {
		$true -eq "apple pie" | Should Be $__FILL_ME_IN__
		$false -eq "apple pie" | Should Be $__FILL_ME_IN__
	}

	It "should assert that null is neither true nor false" {
		$true -eq $null | Should Be $__FILL_ME_IN__
		$false -eq $null | Should Be $__FILL_ME_IN__
	}

	It "should assert that object is truthy" {
        $obj = New-Object -TypeName object
		$true -eq $obj | Should Be $__FILL_ME_IN__
		$false -eq $obj | Should Be $__FILL_ME_IN__
	}

	It "should assert that empty array is falsey" {
		$true -eq @() | Should Be $__FILL_ME_IN__
		$false -eq @() | Should Be $__FILL_ME_IN__
	}

	It "should assert that non-empty arrays are truthy" {
		$true -eq @(1, 2, 3) | Should Be $__FILL_ME_IN__
		$false -eq @(1, 2, 3) | Should Be $__FILL_ME_IN__
	}

	It "should assert that empty hash is truthy" {
		$true -eq @{} | Should Be $__FILL_ME_IN__
		$false -eq @{} | Should Be $__FILL_ME_IN__
	}

	It "should assert that non-empty hashes are truthy" {
		$true -eq @{ Name = "Value" } | Should Be $__FILL_ME_IN__
		$false -eq @{ Name = "Value" } | Should Be $__FILL_ME_IN__
	}
}