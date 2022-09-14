pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract EasyToken is ERC20{

    address public owners;

    constructor() ERC20('EASYLAB TOKEN', 'EST'){
        _mint(msg.sender, 1000 * 10 * 18);
        owners = msg.sender;
 }

 function mint(address to, uint amount) external{
  require(msg.sender == owners, 'only owners are allowed to mint');
  _mint(to, amount);
  }

  function burn(uint amount) external{
    _burn(msg.sender, amount);
  }
}