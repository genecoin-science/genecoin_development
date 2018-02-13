pragma solidity ^0.4.18;


import "./StandardToken.sol";


/**
 * @title createToken based on SimpleToken.sol from Open Zepellin
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract createToken is StandardToken {

  string public constant name = "Genecoin"; // solium-disable-line uppercase
  string public constant symbol = "GEN"; // solium-disable-line uppercase
  uint8 public constant decimals = 8; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = 100000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function SimpleToken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }

}
