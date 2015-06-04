Describe "AboutHashes" {
	It "should support hashes" {
        $array = @{  }
		$array.GetType() | Should Be hashtable	}
}