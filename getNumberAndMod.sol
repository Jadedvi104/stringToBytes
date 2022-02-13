//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "hardhat/console.sol";

contract StringTest is Ownable {
    using Strings for string;
    

    function getNumberAndMod(
        uint256 _ranNum,
        uint16 digit,
        uint16 mod
    ) public view virtual returns (uint16) {
        if (digit == 1) {
            return uint16((_ranNum % 10000) % mod);
        } else if (digit == 2) {
            return uint16(((_ranNum % 100000000) / 10000) % mod);
        } else if (digit == 3) {
            return uint16(((_ranNum % 1000000000000) / 100000000) % mod);
        } else if (digit == 4) {
            return
                uint16(((_ranNum % 10000000000000000) / 1000000000000) % mod);
        } else if (digit == 5) {
            return
                uint16(
                    ((_ranNum % 100000000000000000000) / 10000000000000000) %
                        mod
                );
        } else if (digit == 6) {
            return
                uint16(
                    ((_ranNum % 1000000000000000000000000) /
                        100000000000000000000) % mod
                );
        } else if (digit == 7) {
            return
                uint16(
                    ((_ranNum % 10000000000000000000000000000) /
                        1000000000000000000000000) % mod
                );
        } else if (digit == 8) {
            return
                uint16(
                    ((_ranNum % 100000000000000000000000000000000) /
                        10000000000000000000000000000) % mod
                );
        }

        return 0;
    }
    
    
}


