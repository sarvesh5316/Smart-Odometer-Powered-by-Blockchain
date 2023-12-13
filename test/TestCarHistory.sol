pragma solidity >=0.4.10;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/carhistory.sol"; // Assuming your contract file is named "CarHistory.sol"

contract TestCarHistory {
  carhistory ch = carhistory(DeployedAddresses.carhistory());

  // Testing the setCarHistoryLog() function
  function testSetCarHistoryLog() public {
    bool returnedStatus = ch.setCarHistoryLog("LS06UKE", 11000, "Oil", "Filter", "Brake");
    bool expectedStatus = true;
    Assert.equal(returnedStatus, expectedStatus, "CarHistory Log is set");
    // You can add more test cases or additional logic if needed
  }

  // Testing retrieval of car service history
  function testGetCarHistoryLog() public {
    uint expectedMileage = 11000;
    (uint mileage, bytes32 part1, bytes32 part2, bytes32 part3, address sender) = ch.getCarHistoryLog("LS06UKE");
    Assert.equal(mileage, expectedMileage, "Car Mileage should be 11000");
    Assert.equal(part1, "Oil", "Service history says oil changed");
    Assert.equal(part2, "Filter", "Service history says filter changed");
    Assert.equal(part3, "Brake", "Service history says brakes changed");
    // You can add more test cases or additional logic if needed
  }
}
