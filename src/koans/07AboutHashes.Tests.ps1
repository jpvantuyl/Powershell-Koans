Describe "AboutHashes" {
	It "should support hashes" {
        $array = @{  }
		$array.GetType() | Should Be $__FILL_ME_IN__
	}
	
	It "should contain elements" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash.count | Should Be $__FILL_ME_IN__; 
	}
	
	It "should access values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash['one'] | Should Be $__FILL_ME_IN__;
		$hash['two'] | Should Be $__FILL_ME_IN__; 
	}
	
	It "should change values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash['one'] = 'eins';
		$hash['one'] | Should Be $__FILL_ME_IN__; 
	}
	
	It "should contain keys and values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash.Keys.count | Should Be $__FILL_ME_IN__;
		$hash.Values.count | Should Be $__FILL_ME_IN__;
		$hash.Keys -Contains 'one' | Should Be $__FILL_ME_IN__;
		$hash.Values -Contains 'two' | Should Be $__FILL_ME_IN__;
		$hash.Keys -Contains 'uno' | Should Be $__FILL_ME_IN__;
		$hash.Values -Contains 'dos' | Should Be $__FILL_ME_IN__;
	}
}