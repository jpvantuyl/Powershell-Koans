#See Get-Help about_Arrays
Describe "AboutArrays" {
	It "should support Arrays of objects" {
        $array = @(1, 2, 3)
		$array.GetType() | Should Be System.Object[]
		$array.Count | Should Be 3
	}
	
	It "should allow for more implicit initializiation" {
        $array = 5, 2, 'one way', "or another"
		$array.GetType() | Should Be System.Object[]
		$array.Count | Should Be 4
	}
	
	It "should allow initializiation from ranges" {
        $array = 2..6
		$array.GetType() | Should Be System.Object[]
		$array.Count | Should Be 5
	}

	It "should support Arrays of specific types" {
        [int[]]$array = @(1, 2, 3)
		$array.GetType() | Should Be int[]
	}

	It "should have a length" {
        $array = @(1, 2, 3)
		$array.Length | Should Be 3
	}

	It "should interpolate" {
        $array = @(1, 2, 3)
		"$array" | Should Be "1 2 3"
	}

	It "should access items by index" {
        $array = @(1, 2, 3)
		$array[1] | Should Be 2
	}

	It "should access items by negative index" {
        $array = @(1, 2, 3)
		$array[-1] | Should Be 3
	}

	It "should mutate the array's state" {
        $array = @(1, 2, 3)
        $array[2] = 4
		"$array" | Should Be "1 2 4"
	}

	It "should add array elements" {
        $array = @(1, 2, 3)
        $array += 4
		"$array" | Should Be "1 2 3 4"
	}

	It "should accomodate all types of object" {
        $array = @(1, "apple pie", @(2,3), @{key="value"})
		$array[0].GetType() | Should Be int
		$array[1].GetType() | Should Be string
		$array[2].GetType() | Should Be System.Object[]
		$array[3].GetType() | Should Be hashtable
	}

	It "should concatenate arrays" {
        $array = @(1, 2, 3) + @(4, 5, 6)
		"$array" | Should Be "1 2 3 4 5 6"
	}

	It "should not expand immutable arrays" {
        $array = @(1, 2, 3)
		$message = "nothing to see here"
		try { $array.Add(4) } catch { $message = $_ }
		"$array" | Should Be $__FILL_ME_IN__
		"$message" | Should Be $__FILL_ME_IN__
	}

	It "should allocate a new immutable array" {
        $array = @(1, 2, 3)
		$message = "nothing to see here"
		try { $array += 4 } catch { $message = $_ }
		"$array" | Should Be $__FILL_ME_IN__
		"$message" | Should Be $__FILL_ME_IN__
	}
}