pragma solidity ^0.4.19;

import "./ERC20.sol";

contract Airdroplet
{

    ERC20 public token;

    function airdropExecute(address source, address[] recipents, uint256 amount) public
    {

        uint x = 0;
        token = ERC20(source);

        while(x < recipents.length)
        {

          token.transferFrom(msg.sender, recipents[x], amount);
          x++;

        }

    }


}
