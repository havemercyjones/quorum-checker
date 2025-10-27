// contracts/Quorum.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Quorum {
    uint256 public members;
    function setMembers(uint256 m) external { members=m; }
    function hasQuorum(uint256 yes) external view returns(bool){
        return yes*100/members>=50;
    }
}
