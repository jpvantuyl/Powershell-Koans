Describe "AboutStrings" {
	It "should allow double quotes" {
		"apple pie".GetTypeCode() | Should Be $__FILL_ME_IN__
	}
	
	It "should allow single quotes" {
		'apple pie'.GetTypeCode() | Should Be $__FILL_ME_IN__
	}
	
	It "should treat both as equal" {
		"apple" -eq 'apple' | Should Be $__FILL_ME_IN__
	}
	
	It "should use single quotes to create a string with double quotes" {
		$phrase = 'Hey, leggo my "apple pie"'
		$phrase | Should Be $__FILL_ME_IN__
	}
	
	It "should use double quotes to create a string with an apostrophe" {
		$phrase = "don't touch my apple pie"
		$phrase | Should Be $__FILL_ME_IN__
	}
	
	It "should use backtick to escape double quotes" {
		$phrase = "we had an `"agreement`""
		$phrase | Should Be $__FILL_ME_IN__
	}
	
	It "should span mutliple lines" {
		#credit: https://ashakibo.wordpress.com/2015/02/14/apple-pie-haiku/
		$phrase = 
@'
I like apple pie,
and I cannot lie; but wait,
I do not have one...
'@
		$phrase.Split("`n").Count | Should Be $__FILL_ME_IN__
	}
	
	It "should interpolate double quoted string" {
		$fruit = "apple"
		"$fruit pie" | Should Be $__FILL_ME_IN__
	}
	
	It "should not interpolate single quoted string" {
		$fruit = "apple"
		'$fruit pie' | Should Be $__FILL_ME_IN__
	}
	
	It "should concatenate" {
		"apple" + " " + "pie" | Should Be $__FILL_ME_IN__
	}
	
	It "should append" {
		$phrase = "apple"
		$phrase += " pie"
		$phrase | Should Be $__FILL_ME_IN__
	}
	
	It "should be composed of characters" {
		"apple"[0].GetTypeCode() | Should Be $__FILL_ME_IN__
	}
	
	It "should have a length" {
		"mmmmmmmmmmmm, apple pie".Length | Should Be $__FILL_ME_IN__
	}
	
	It "should split" {
		"mmmmmmmmmmmm, apple pie".Split(",")[0] | Should Be $__FILL_ME_IN__
	}

	It "should be case insensitive" {
		"apple PIE" -eq "APPLE pie" | Should Be $__FILL_ME_IN__
	}

	It "should be case sensitive using the .Equals() method" {
		"apple PIE".Equals("APPLE pie") | Should Be $__FILL_ME_IN__
	}
}
