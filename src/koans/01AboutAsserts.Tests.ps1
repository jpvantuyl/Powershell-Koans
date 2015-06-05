Describe "AboutAsserts" {
	It "should expect true" {
		# We shall contemplate truth by testing reality, via asserts.
		$false | Should Be $true # This should be true
	}
	
	It "should fill in values" {
		# Sometimes we will ask you to fill in the values
		(1 + 1) | Should Be $__FILL_ME_IN__
	}
	
	It "should assert one's expectations" {
		# Some ways of asserting equality are better than others
		$expected = $__FILL_ME_IN__
		$actual = 1 + 1
		$actual | Should Be $expected
	}
}
