// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArcMission1 {
    address public mentor;
    uint256 public missionTimestamp;
    string public missionStatus;

    constructor() {
        mentor = msg.sender;
        missionTimestamp = block.timestamp;
        missionStatus = "Mission 1: Architect - Initialized on Arc Testnet";
    }

    // Function to prove you are active on the network
    function completeMission() public {
        require(msg.sender == mentor, "Only the Architect can complete this.");
        missionStatus = "Mission 1: Successful - Architect Verified";
    }
}
