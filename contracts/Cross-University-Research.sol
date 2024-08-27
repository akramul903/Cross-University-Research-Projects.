// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ResearchFunding {
    address public owner;
    IERC20 public projectToken; // The ERC20 token representing project shares

    struct Contribution {
        address contributor;
        uint256 amount;
    }

    Contribution[] public contributions;
    mapping(address => uint256) public rewards;

    event ContributionReceived(address indexed contributor, uint256 amount);
    event RewardDistributed(address indexed contributor, uint256 amount);

    constructor(address _projectToken) {
        owner = msg.sender;
        projectToken = IERC20(_projectToken);
    }

    function contribute(uint256 _amount) external {
        require(_amount > 0, "Contribution amount must be positive");
        contributions.push(Contribution(msg.sender, _amount));
        projectToken.transferFrom(msg.sender, address(this), _amount);
        emit ContributionReceived(msg.sender, _amount);
    }

    function distributeRewards(address _contributor, uint256 _rewardAmount) external {
        require(msg.sender == owner, "Only owner can distribute rewards");
        require(rewards[_contributor] == 0, "Rewards already distributed");
        rewards[_contributor] = _rewardAmount;
        projectToken.transfer(_contributor, _rewardAmount);
        emit RewardDistributed(_contributor, _rewardAmount);
    }

    // Other functions (e.g., voting, project management) can be added here
}

