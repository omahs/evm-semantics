// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.13;

import "forge-std/Test.sol";

contract DynamicTypesTest is Test {
    function test_dynamic_byte_read(bytes memory data, uint256 offset) public {
        uint8 mydata = uint8(data[offset]);
        vm.assume(mydata < 3);
        assertTrue(mydata == 2 || mydata == 1 || mydata == 0);        
    }

    function test_array_type(uint256) public {
    }

    function test_array_type(uint256[] calldata numbers) public {
        vm.assume(numbers.length > 2);
        assertGt(numbers.length, 2);
    }
}
