// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract padre {

    mapping(address => address) public personal_contract;

    function Factory() public {
        address addr_personal_contract = address(new hijo(msg.sender, address(this)));
        personal_contract[msg.sender] = addr_personal_contract;
    }
}

contract hijo {

    Owner public propietario;
    struct Owner {
        address _owner;
        address _smartcontractPadre;
    }

    constructor (address _account, address _accountSC) {
        propietario = Owner({
            _owner : _account,
            _smartcontractPadre : _accountSC
        });
    }

}