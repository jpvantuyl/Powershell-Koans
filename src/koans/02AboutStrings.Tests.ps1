Describe "AboutStrings" {
	It "should allow double quotes" {
		"apple pie.".GetType().ToString() | Should Be "system.string"
	}
	
	It "should allow single quotes" {
		'apple pie.'.GetType().ToString() | Should Be "system.string"
	}
	
	It "should treat both as equal" {
		"apple" -eq 'apple' | Should Be $true
	}
	
	It "should use single quotes to create a string with double quotes" {
		$phrase = 'Hey, leggo my "apple pie"'
		$phrase | Should Be 'Hey, leggo my "apple pie"'
	}
	
	It "should use double quotes to create a string with single quotes" {
		$phrase = "don't touch my apple pie"
		$phrase | Should Be "don't touch my apple pie"
	}
	
	It "should use backtick to escape double quotes" {
		$phrase = "we had an `"agreement`""
		$phrase | Should Be "we had an `"agreement`""
	}
	
	It "should span mutliple lines" {
		$phrase = 
@'
I like apple pie,
and I cannot lie; but wait,
I do not have one...
'@
		$phrase.Length | Should Be 68
	}
	
	It "should concatenate" {
		"apple" + " " + "pie" | Should Be "apple pie"
	}
	
	It "should be composed of characters" {
		"apple"[0].GetType().ToString() | Should Be "system.char"
	}
	
	It "should have a length" {
		"mmmmmmmmmmmm, apple pie".Length | Should Be 23
	}
	
	It "should split" {
		"mmmmmmmmmmmm, apple pie".Split(", ")[0] | Should Be "mmmmmmmmmmmm"
	}
}