Describe "AboutStrings" {
	It "should allow double quotes" {
		"apple pie".GetTypeCode() | Should Be string
	}
	
	It "should allow single quotes" {
		'apple pie'.GetTypeCode() | Should Be string
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
		#credit: https://ashakibo.wordpress.com/2015/02/14/apple-pie-haiku/
		$phrase = 
@'
I like apple pie,
and I cannot lie; but wait,
I do not have one...
'@
		$phrase.Split("`n").Count | Should Be 3
	}
	
	It "should interpolate double quoted string" {
		$fruit = "apple"
		"$fruit pie" | Should Be "apple pie"
	}
	
	It "should not interpolate single quoted string" {
		$fruit = "apple"
		'$fruit pie' | Should Be '$fruit pie'
	}
	
	It "should concatenate" {
		"apple" + " " + "pie" | Should Be "apple pie"
	}
	
	It "should append" {
		$phrase = "apple"
		$phrase += " pie"
		$phrase | Should Be "apple pie"
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

	It "should be case insensitive" {
		"apple PIE" -eq "APPLE pie" | Should Be $true
	}

	It "should be case sensitive using the .Equals() method" {
		"apple PIE".Equals("APPLE pie") | Should Be $false
	}
}