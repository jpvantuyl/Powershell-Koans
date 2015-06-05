Describe "AboutNumbers" {
	It "should support 32-bit integers" {
		(123).GetTypeCode() | Should Be $__FILL_ME_IN__
	}

	It "should add" {
		19 + 73 | Should Be $__FILL_ME_IN__
	}

	It "should plus equals" {
        $num = 37
        $num += 91
		$num | Should Be $__FILL_ME_IN__
	}

	It "should multiply" {
		51 * 13 | Should Be $__FILL_ME_IN__
	}

	It "should divide" {
		10 / 3 | Should Be $__FILL_ME_IN__
	}

	It "should use the modulus operator to get the remainder" {
		10 % 3 | Should Be $__FILL_ME_IN__
	}

	It "should use hexidecimal" {
		0x2a | Should Be $__FILL_ME_IN__
	}

	It "should support double precision floating point numbers" {
		(4.56).GetTypeCode() | Should Be $__FILL_ME_IN__
	}

	It "should do floating point math" {
		2.5 * 4 | Should Be $__FILL_ME_IN__
	}

	It "should be careful when testing equality of computed doubles" {
	    (2.3 * 7.7).ToString() -eq (17.71).ToString() | Should Be $__FILL_ME_IN__
	    (2.3 * 7.7) -eq (17.71) | Should Be $__FILL_ME_IN__
	    (2.3 * 7.7).GetHashCode() | Should Be $__FILL_ME_IN__
	    (17.71).GetHashCode() | Should Be $__FILL_ME_IN__
	}
}