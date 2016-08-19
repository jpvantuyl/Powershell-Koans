#See Get-Help about_Pester
Describe "AboutAsserts" {
	It "should expect true" {
		# We shall contemplate truth by testing reality, via asserts.
		$true | Should Be $true # This should be true
	}
	
	It "should fill in values" {
		# Sometimes we will ask you to fill in the values
		(1 + 1) | Should Be 2
	}
	
	It "should assert one's expectations" {
		# Some ways of asserting equality are better than others
		$expected = 2
		$actual = 1 + 1
		$actual | Should Be $expected
	}
}
