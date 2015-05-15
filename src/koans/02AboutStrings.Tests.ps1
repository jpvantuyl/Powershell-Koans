Describe "AboutStrings" {
	It "should be fine with double quotes" {
		"system.string" | Should Be "Hello, world.".GetType().ToString()
	}
	
	It "should be fine with single quotes" {
		"system.string" | Should Be 'Hello, world.'.GetType().ToString()
	}
}