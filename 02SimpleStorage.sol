// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    // boolean, unit, int, address, bytes

    uint256 public favoriteNumber;
    People [] public people;
    mapping (string => uint256) public nameToNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favNumber) public {
        favoriteNumber = _favNumber;
    }

    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToNumber[_name] = _favoriteNumber;
    }
}