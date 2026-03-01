# 🌐 Arc Testnet: Developer Journey (2026)

This repository documents my technical contributions and smart contract deployments on the **Arc Public Testnet**. My goal is to explore the ecosystem's unique stablecoin infrastructure and cross-chain capabilities.

## 🚀 Deployed Contracts

### 1. Mission: The Architect (Verification)
- **Address:** `0xf31eb4C9960CaC4131e984962EEA49cA6A722065`
- **Status:** [Verified on Sourcify]
- **Description:** Initial deployment to establish on-chain developer identity. Implements mission-state logic to verify the owner as an authorized "Architect."

### 2. Mission: Arc Tender (ATD) Stablecoin
- **Symbol:** `ATD`
- **address;** `0x031dDa6Bcafb89d56Ef661829639d305A57e4d4D`
- **Logic:** ERC-20 with custom Minting authority.
- **Purpose:** Testing regional stablecoin liquidity and supply management.

### 3. Mission: The Guardian (Vault)
- **address** `0x5342a2486E7fe8c147E2DB83a9E419F490A7d139`
- **Logic:** Time-locked asset security.
- **Purpose:** Securing ATD assets using a 5-minute cooldown period to test DeFi storage safety.

---
## 🛠 Tools Used
- **Environment:** Remix IDE
- **Libraries:** OpenZeppelin 5.0+
- **Network:** Arc Testnet (Chain ID: 5042002)
