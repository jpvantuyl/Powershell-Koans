#see Get-Help about_Hash_Tables
Describe "AboutHashes" {
	It "should support hashes" {
        $hash = @{  };
		$hash.GetType() | Should Be $__FILL_ME_IN__;
	}
	
	It "should contain elements" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' };
		$hash.count | Should Be $__FILL_ME_IN__; 
	}
	
	It "should access values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' };
		$hash['one'] | Should Be $__FILL_ME_IN__;
		$hash['two'] | Should Be $__FILL_ME_IN__;
		$hash.one | Should Be $__FILL_ME_IN__;
	}
	
	It "should change values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' };
		$hash['one'] = $__FILL_ME_IN__;
		$hash['one'] | Should Be $__FILL_ME_IN__; 
	}
	
	It "should add values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' };
		$hash['three'] = 'tres';
		$hash['three'] | Should Be $__FILL_ME_IN__;
		$hash.Add('four', 'quatro'); 
		$hash['four'] | Should Be $__FILL_ME_IN__; 
	}
	
	It "should remove values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' };
		$hash.Remove('two');
		$hash.count | Should Be $__FILL_ME_IN__;
		$hash.Keys[0] | Should Be $__FILL_ME_IN__;
	}
	
	It "should contain keys and values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' };
		$hash.Keys.count | Should Be 2;
		$hash.Values.count | Should Be 2;
		$hash.Keys -Contains 'one' | Should Be $__FILL_ME_IN__;
		$hash.Values -Contains 'two' | Should Be $__FILL_ME_IN__;
		$hash.Keys -Contains 'uno' | Should Be $__FILL_ME_IN__;
		$hash.Values -Contains 'dos' | Should Be $__FILL_ME_IN__;
	}
	
	It "should sometimes be ordered" {
		$hash = @{ 'two' = 'dos'; 'one' = 'uno' };
		$orderedhash = [ordered]@{ 'two' = 'dos'; 'one' = 'uno' };
		$hash.Keys[0] | Should Be $__FILL_ME_IN__;
		$orderedhash.Keys[0] | Should Be $__FILL_ME_IN__;
	}
}