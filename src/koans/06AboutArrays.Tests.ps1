Describe "AboutArrays" {
	It "should support Arrays of objects" {
        $array = @(1, 2, 3)
		$array.GetType() | Should Be System.Object[]
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

	It "should mutate the array's state" {
        $array = @(1, 2, 3)
        $array[2] = 4
		"$array" | Should Be "1 2 4"
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
}