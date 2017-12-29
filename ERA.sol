pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ERA is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ERA(address _owner)  UpgradeableToken(_owner) {
    name = "ERA";
    symbol = "ERA";
    totalSupply = 30000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}