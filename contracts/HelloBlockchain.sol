// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.9.0;

contract HelloBlockchain {
    string public data;

    constructor(string memory message) {
        data = message;
    }

    // call this function to send a request
    function SendRequest(string memory requestMessage) public {
        data = requestMessage;
    }

    // call this function to send a response
    function SendResponse(string memory responseMessage) public  returns (string memory){
        data = responseMessage;
        return "hello";
    }

    function GetMessage() public view  returns (string memory) {
        return data;
    }

    function say() public view  returns (string memory) {
        return data;
    }
}
