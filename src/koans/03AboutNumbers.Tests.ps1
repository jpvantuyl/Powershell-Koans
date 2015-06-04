Describe "AboutNumbers" {
	It "should support 32-bit integers" {
		(123).GetTypeCode() | Should Be Int32
	}

	It "should add" {
		19 + 73 | Should Be 92
	}

	It "should plus equals" {
        $num = 37
        $num += 91
		$num | Should Be 128
	}

	It "should multiply" {
		51 * 13 | Should Be 663
	}

	It "should divide" {
		10 / 3 | Should Be (10 / 3)
	}

	It "should use the modulus operator to get the remainder" {
		10 % 3 | Should Be 1
	}

	It "should use hexidecimal" {
		0x2a | Should Be 42
	}

	It "should support double precision floating point numbers" {
		(4.56).GetTypeCode() | Should Be double
	}

	It "should do floating point math" {
		2.5 * 4 | Should Be 10
	}

	It "should be careful when testing equality of computed doubles" {
	    (2.3 * 7.7).ToString() -eq (17.71).ToString() | Should Be $true
	    (2.3 * 7.7) -eq (17.71) | Should Be $false
	    (2.3 * 7.7).GetHashCode() | Should Be -814899913
	    (17.71).GetHashCode() | Should Be -814899916
	}
}