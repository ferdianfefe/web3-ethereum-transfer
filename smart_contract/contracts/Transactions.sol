// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions{
    uint256 transactionsCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct{
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable_receiver, uint256 amount, string memory message, string memory keyword) public {
        transactionsCount++;
        transactions.push(TransferStruct(msg.sender, payable_receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, payable_receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns(TransferStruct[] memory){
        return transactions;
    }
    
    function getTransactionCount() public view returns (uint256) {
        return transactionsCount;
    }
}