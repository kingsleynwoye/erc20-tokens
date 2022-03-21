pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenOpenZeppelin1 is ERC20 {
    constructor() ERC20('Toke Name', 'TOKEN_TICKER) {}
}

contract TokenOpenZeppelin2 is ERC20 {
    constructor() ERC20('Toke Name', 'TOKEN_TICKER) {
        _mint(msg.sender, 10000);
    }
}

contract TokenOpenZeppelin3 is ERC20 {
    address public admin;

    constructor() ERC20('Toke Name', 'TOKEN_TICKER) {
        admin = msg.sender;
    }

    function min(address to, uint amount) external {
        require(msg.sender == admin, 'only admin)
        _mint(to, amount);
    }
}

contract TokenOpenZeppelin4 is ERC20 {
    constructor() ERC20('Toke Name', 'TOKEN_TICKER) {}

    function faucet(address to, uint amount) external {
        _mint(to, amount);
    }
}