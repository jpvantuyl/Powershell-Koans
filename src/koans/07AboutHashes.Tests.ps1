Describe "AboutHashes" {
	It "should support hashes" {
        $hash = @{  }
		$hash.GetType() | Should Be hashtable	
	}
	
	It "should contain elements" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash.count | Should Be 2; 
	}
	
	It "should access values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash['one'] | Should Be 'uno';
		$hash['two'] | Should Be 'dos'; 
	}
	
	It "should change values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash['one'] = 'eins';
		$hash['one'] | Should Be 'eins'; 
	}
	
	It "should contain keys and values" {
		$hash = @{ 'one' = 'uno'; 'two' = 'dos' }
		$hash.Keys.count | Should Be 2;
		$hash.Values.count | Should Be 2;
		$hash.Keys -Contains 'one' | Should Be $true;
		$hash.Values -Contains 'two' | Should Be $false;
		$hash.Keys -Contains 'uno' | Should Be $false;
		$hash.Values -Contains 'dos' | Should Be $true;
	}
}