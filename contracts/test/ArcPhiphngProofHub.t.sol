// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "../src/ArcPhiphngProofHub.sol";
contract ArcPhiphngProofHubTest {
    function testOpenTask() public {
        ArcPhiphngProofHub app = new ArcPhiphngProofHub();
        uint256 id = app.openTask(1000000, keccak256("arc-agent"), "arc proof");
        require(id == 1, "bad id");
    }
}
