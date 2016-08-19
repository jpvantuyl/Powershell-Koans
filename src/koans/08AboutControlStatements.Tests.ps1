#see Get-Help about_If
#see Get-Help about_Switch
Describe "AboutControlStatements" {
	It "should support if statements" {	
		if ($true)
		{
			$result = 'true value'
		}
		else
		{
			$result = 'false value'
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should support elseif statements" {
		if ('blue' -eq 'orange')
		{
			$result = 'colors'
		}
		elseif ('square' -eq 'square')
		{
			$result = 'shapes'
		}
		else
		{
			$result = 'other'
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should support switch statements" {
		switch (3)
		{
			1 {$result = "It is one."}
			2 {$result = "It is two."}
			3 {$result = "It is three."}
			4 {$result = "It is four."}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should test all switch conditions" {
		$result = ""
		switch (3)
		{
			1 {$result += "It is one. "}
			2 {$result += "It is two. "}
			3 {$result += "It is three. "}
			4 {$result += "It is four. "}
			3 {$result += "Three again. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should switch off a list" {
		$list = @(4, 2)
		$result = ""
		switch ($list)
		{
			1 {$result += "It is one. "}
			2 {$result += "It is two. "}
			3 {$result += "It is three. "}
			4 {$result += "It is four. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should break out of the switch" {
		$list = @(4, 3, 2, 1)
		$result = ""
		switch ($list)
		{
			1 {$result += "It is one. "}
			2 {$result += "It is two. "}
			3 {$result += "It is three. "; Break}
			4 {$result += "It is four. "}
			3 {$result += "Three again. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should continue within the switch" {
		$list = @(4, 3, 2, 1)
		$result = ""
		switch ($list)
		{
			1 {$result += "It is one. "}
			2 {$result += "It is two. "}
			3 {$result += "It is three. "; continue; "... The lonliest number. "}
			4 {$result += "It is four. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should default the switch" {
		$result = ""
		switch (5)
		{
			1 {$result += "It is one. "}
			2 {$result += "It is two. "}
			3 {$result += "It is three. "}
			4 {$result += "It is four. "}
			default {$result += "It is default. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should switch on case" {
		$result = ""
		switch -casesensitive ("One")
		{
			"one" {$result += "lower case"}
			"One" {$result += "Title Case"}
			"ONE" {$result += "UPPER CASE"}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should switch on case" {
		$result = ""
		switch -casesensitive ("One")
		{
			"one" {$result += "lower case"}
			"One" {$result += "Title Case"}
			"ONE" {$result += "UPPER CASE"}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should switch on wildcard" {
		$result = ""
		switch -wildcard ('three')
		{
			'o*' {$result += "It is one. "}
			'two' {$result += "It is two. "}
			'*ee' {$result += "It is three. "}
			'fo*' {$result += "It is four. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should switch on regex" {
		$result = ""
		switch -regex ('one')
		{
			'^o.[e,E]' {$result += "It is one. "}
			'tw.' {$result += "It is two. "}
			'r[e]{2}' {$result += "It is three. "}
			'fo*' {$result += "It is four. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
	
	It "should allow access to the local variable within the switch" {
		$list = @(1, 22, 333)
		$result = ""
		switch -regex ($list)
		{
			'^.{1}$' {$result += "$_ has one character. "}
			'^.{2}$' {$result += "$_ has two characters. "}
			'^.{3}$' {$result += "$_ has three characters. "}
		}
		$result | Should Be $__FILL_ME_IN__
	}
}