# ClapInu Token (STD) - GitHub README

## Welcome to ClapInu Token
The ClapInu Token (STD) represents a significant step forward in the world of digital assets. Designed as an ERC-20 token on the Avalanche blockchain, ClapInu is not just a cryptocurrency; it's a symbol of community strength and innovation.

### Project Overview
ClapInu Token (STD) is created with a vision to integrate advanced blockchain functionalities and a community-centric approach. This repository provides the entire smart contract code for ClapInu, along with comprehensive documentation detailing its features, tokenomics, and the modifications made from its original version.

#### Token Details
- **Name**: ClapInu
- **Symbol**: STD
- **Decimals**: 18
- **Blockchain Network**: AVAX (ERC-20 Compliant)

#### Tokenomics
- **Total Supply**: 100 million STD
- **Max Transaction Limit**: 1 million STD (1% of the total supply)
- **Max Wallet Holding**: 2 million STD (2% of the total supply)

### Key Features
1. **Standardized Security**: Inherits from OpenZeppelin's ERC20 and Ownable contracts, ensuring a high security standard.
2. **Transaction and Holding Limits**: Imposes limits on transaction sizes and wallet holdings to foster market stability.
3. **OpenZeppelin's Ownership Management**: Utilizes OpenZeppelin's Ownable for a more robust ownership control.
4. **Efficient Transfer Checks**: Employs OpenZeppelin's `_beforeTokenTransfer` for enforcing transaction limits.
5. **Streamlined Burn Functionality**: Adheres to the ERC-20 standard methods for token burning.
6. **Refined Codebase**: The contract focuses on essential features, enhancing performance and readability.

### Modifications from the Original Contract
- Transitioned to using OpenZeppelin contracts for basic functionalities.
- Updated transfer logic to OpenZeppelin's `_beforeTokenTransfer`.
- Simplified ownership management with OpenZeppelin's `Ownable`.
- Adapted standard burn functionality of ERC-20.
- Removed the fallback function for simplicity.
- Overall code optimization for enhanced performance.

### Getting Started
#### Setup
1. Clone the repository:
   ```
   git clone [Repository URL]
   ```
2. Install necessary dependencies in the cloned directory.

#### Deployment
- Compile and deploy using Remix IDE or other Ethereum development tools.
- Ensure to have Avax for deployment on the Avalanche network.

### Contributing
Contributions are highly encouraged! Please follow these steps:
1. Fork the repository.
2. Create your feature branch.
3. Commit your changes.
4. Push to the branch and open a pull request.

For detailed contribution guidelines, refer to the `CONTRIBUTING.md` file.

### Community and Support
Join our vibrant community on  [Telegram](https://t.me/ClapInu). Stay updated and participate in discussions and decisions.

For support, reach out to us at [support@clapinu.com](mailto:support@clapinu.com).

### License
This project is licensed under the MIT License

---

**ClapInu Token (STD)**: More than a token - a commitment to innovation, community, and the future of finance.
