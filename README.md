# Tribute to Mohbad NFT Project

This project is a heartfelt tribute to the late Mohbad, a beloved icon of Afrobeats. Using blockchain technology and IPFS, we have created an NFT that immortalizes his legacy, allowing fans to hold a digital piece of his memory.

## Project Overview

This project involves the creation and deployment of a smart contract for an NFT that:
- Features an image of Mohbad uploaded to IPFS.
- Includes metadata describing the NFT and its purpose.
- Is deployed on the Ethereum blockchain (testnet or mainnet).

## Technology Stack

- **Solidity**: For writing the smart contract.
- **Foundry**: For testing and deploying the smart contract.
- **IPFS/Pinata**: For storing the image and metadata.
- **VS Code**: For development and editing.

## Steps to Create the NFT

1. **Upload the Image to IPFS**:
   - The image of Mohbad was uploaded to IPFS via Pinata.
   - The CID for the image is `bafkreienvsw7lyvumsu5uk6i3ucj5jpjsvwnvhb3ntv5a2bzntguq7i64a`.

2. **Create Metadata JSON**:
   - A metadata JSON file was created to describe the NFT:
     ```json
     {
         "name": "Tribute to Mohbad",
         "description": "A tribute NFT for the late Mohbad, an icon of Afrobeats.",
         "image": "ipfs://bafkreienvsw7lyvumsu5uk6i3ucj5jpjsvwnvhb3ntv5a2bzntguq7i64a"
     }
     ```
   - This file was uploaded to IPFS, and the CID for the metadata file is used in the smart contract.

3. **Deploy the Smart Contract**:
   - The smart contract includes the IPFS URI for the metadata file.
   - The contract was deployed to a blockchain network using Foundry.

## How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/owolabi-victor/smart-contract-lottery.git
   ```

2. Install dependencies:
   ```bash
   forge install
   ```

3. Deploy the smart contract:
   ```bash
   make deploy ARGS="--network <network-name>"
   ```

4. Verify the token URI:
   - Call the `tokenURI` function on the deployed contract to get the metadata URI.
   - Open the URI in an IPFS gateway to view the metadata.

## Tribute to Mohbad

This project is dedicated to Mohbad (Ilerioluwa Oladimeji Aloba), whose music and influence touched millions. Through this NFT, we honor his contributions to Afrobeats and ensure that his legacy lives on in the digital world.

May his soul rest in peace.

## License

This project is open-source and available under the MIT License.

