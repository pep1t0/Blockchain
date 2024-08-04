// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract loops_conditionals {
    function loop_and_conditional() public pure returns (uint256) {
        uint256 counter = 1;
        uint256 _sum = 1;

        while (counter < 15) {
            counter++;
            if (counter % 2 == 1) {
                _sum += counter;
            }
        }
        return _sum;
    }

    function fsum(uint256 _numer) public pure returns (uint256) {
        uint256 aux_sum = 0;

        for (uint256 i = _numer; i < (10 + _numer); i++) {
            aux_sum += i;
        }
        return aux_sum;
    }
}
