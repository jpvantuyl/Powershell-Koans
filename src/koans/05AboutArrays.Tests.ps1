Describe "AboutArrays" {
	It "should support Arrays of objects" {
        $array = @(1, 2, 3)
		$array.GetType() | Should Be $__FILL_ME_IN__
	}

	It "should support Arrays of specific types" {
        [int[]]$array = @(1, 2, 3)
		$array.GetType() | Should Be $__FILL_ME_IN__
	}

	It "should have a length" {
        $array = @(1, 2, 3)
		$array.Length | Should Be $__FILL_ME_IN__
	}

	It "should interpolate" {
        $array = @(1, 2, 3)
		"$array" | Should Be $__FILL_ME_IN__
	}

	It "should access items by index" {
        $array = @(1, 2, 3)
		$array[1] | Should Be $__FILL_ME_IN__
	}

	It "should mutate the array's state" {
        $array = @(1, 2, 3)
        $array[2] = 4
		"$array" | Should Be $__FILL_ME_IN__
	}

	It "should accomodate all types of object" {
        $array = @(1, "apple pie", @(2,3), @{key="value"})
		$array[0].GetType() | Should Be $__FILL_ME_IN__
		$array[1].GetType() | Should Be $__FILL_ME_IN__
		$array[2].GetType() | Should Be $__FILL_ME_IN__
		$array[3].GetType() | Should Be $__FILL_ME_IN__
	}

	It "should concatenate arrays" {
        $array = @(1, 2, 3) + @(4, 5, 6)
		"$array" | Should Be $__FILL_ME_IN__
	}

	It "should not expand immutable arrays" {
        $array = @(1, 2, 3)
		$message = "nothing to see here"
		try { $array.Add(4) } catch { $message = $_ }
		"$array" | Should Be $__FILL_ME_IN__
		$message | Should Be $__FILL_ME_IN__
	}

	It "should allocate a new immutable array" {
        $array = @(1, 2, 3)
		$message = "nothing to see here"
		try { $array += 4 } catch { $message = $_ }
		"$array" | Should Be $__FILL_ME_IN__
		$message | Should Be $__FILL_ME_IN__
	}
}