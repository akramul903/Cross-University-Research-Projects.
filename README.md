# ResearchFunding Smart Contract
![image](https://github.com/user-attachments/assets/463fdbf2-9f47-4dbe-94f1-ce275a9f13c0)

## Vision:

The `ResearchFunding` smart contract is designed to facilitate and manage contributions and reward distributions for research projects. By using ERC20 tokens to represent project shares, contributors can support projects financially and receive rewards based on their contributions. This contract aims to streamline funding processes, ensuring transparency and security in reward distribution.

## Contract Flow:

1. **Contribution Process:**
   - Contributors send ERC20 tokens to the contract to support the research project.
   - The contract records each contribution with the contributor's address and the amount contributed.
   - An event is emitted to notify that a contribution has been received.

2. **Reward Distribution:**
   - The owner of the contract can distribute rewards to contributors.
   - Rewards are assigned to contributors based on their previous contributions.
   - The contract ensures that rewards are only distributed once and issues an event for transparency.

## Flowchart:

```plaintext
+-----------------------+
|     Contributor       |
+-----------------------+
            |
            v
+-----------------------+
| Contribute Function   | <--- (1) Contributor sends tokens
+-----------------------+
            |
            v
+-----------------------+
|  Contract Storage     |
| - Contributions       |
| - Rewards             |
+-----------------------+
            |
            v
+-----------------------+
| ContributionReceived  |
| Event Emission        | <--- (2) Log contribution
+-----------------------+
            |
            v
+-----------------------+
|     Contract Owner    |
+-----------------------+
            |
            v
+-----------------------+
| Distribute Rewards    | <--- (3) Owner distributes rewards
+-----------------------+
            |
            v
+-----------------------+
|   ERC20 Token Transfer|
| - Transfer reward     |
+-----------------------+
            |
            v
+-----------------------+
| RewardDistributed     |
| Event Emission        | <--- (4) Log reward distribution
+-----------------------+
```

## Contract Address:
0xF5dc80e2a205BdCC9a1C7a5665b8C3EC2eC9C5cd

## Future Scope:

1. **Voting Mechanism:**
   - Introduce a voting system where contributors can vote on project-related decisions.

2. **Project Management:**
   - Add functionalities for project management and progress tracking.

3. **Enhanced Reward Logic:**
   - Implement dynamic reward mechanisms based on project milestones or contributor performance.

4. **Multi-Signature Support:**
   - Integrate multi-signature approval for reward distributions to enhance security.

## Contact Details:

For any questions or further information, please contact:

- **Project Owner:** AKRAMUL ISLAM
- **Email:** akramulislam903@gmail.com
- **GitHub:** github.com/akramul903
