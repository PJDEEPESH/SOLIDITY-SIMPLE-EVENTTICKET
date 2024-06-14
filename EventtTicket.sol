//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Eventticket
{
    uint256  NumberOfticket;
    uint256  TicketPrice;
    uint256  StartTime;
    uint256  EndTime;
    uint256  Timerange;
    string public message = "Buy your first ticket";
    constructor (uint256 _ticketprice)
    {
        TicketPrice = _ticketprice;
        StartTime = block.timestamp;
        EndTime = block.timestamp + 7; 
        Timerange = (EndTime - StartTime)/ 60 / 60 / 24;

    }
    function BuyTicket(uint256 _value) public returns(uint256 ticketId)
    {
        NumberOfticket++;
        TicketPrice += _value;
        ticketId = NumberOfticket;

    }
    function getAmount() public view returns(uint256)
    {
        return TicketPrice;
    }
}
