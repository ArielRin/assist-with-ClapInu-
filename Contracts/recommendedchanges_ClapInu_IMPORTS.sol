// SPDX-License-Identifier: MIT

/*

Website: https://www.clapinu.com/
TG: https://t.me/ClapInu
Twitter: https://twitter.com/ClapInuAvax

Token Details

    Name: ClapInu
    Symbol: STD
    Decimals: 18
    Total Supply: 100,000,000 STD
    Blockchain: Avalanche (ERC-20 compliant)

*/

pragma solidity 0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.5/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.5/contracts/access/Ownable.sol";

/**
 * @title ClapInu Token Contract
 * @dev Extends ERC20 Token Standard basic implementation with additional features
 */
contract ClapInu is ERC20, Ownable {
    uint256 public constant MAX_TX_AMOUNT = 100_000_000 * 10**18 / 100; // 1% of total supply
    uint256 public constant MAX_WALLET_AMOUNT = 100_000_000 * 10**18 / 50; // 2% of total supply

    /**
     * @dev Sets the values for {name} and {symbol}, and mints all tokens to the deployer.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor() ERC20("ClapInu", "STD") {
        _mint(msg.sender, 100_000_000 * 10**18);
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes minting
     * and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * Requirements:
     *
     * - Max transaction amount and max wallet amount are enforced.
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override {
        super._beforeTokenTransfer(from, to, amount);

        if (from != address(0) && to != address(0)) { // Exclude minting and burning
            require(amount <= MAX_TX_AMOUNT, "ClapInu: Transfer exceeds the maxTxAmount.");
            uint256 toBalance = balanceOf(to);
            require(toBalance + amount <= MAX_WALLET_AMOUNT, "ClapInu: Exceeds max wallet token amount.");
        }
    }

    /**
     * @dev Allows the owner to recover ERC20 tokens sent to the contract.
     *
     * Requirements:
     *
     * - Only the contract owner can call this function.
     */
    function recoverERC20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        IERC20(tokenAddress).transfer(owner(), tokenAmount);
    }

    /**
     * @dev Allows the owner to recover Avax sent to the contract.
     *
     * Requirements:
     *
     * - Only the contract owner can call this function.
     */
    function recoverETH(uint256 amount) external onlyOwner {
        payable(owner()).transfer(amount);
    }

 /**
     * @dev Allows the destruction of tokens
     *
     * Requirements:
     *
     * - msg.sender can call this function.
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
