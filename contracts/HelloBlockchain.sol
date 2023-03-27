pragma solidity >=0.4.25 <0.9.0;

contract HelloBlockchain {
    enum StateType { Request, Respond }

    StateType public  State;
    address public  Requestor;
    address public  Responder;

    string public RequestMessage;
    string public ResponseMessage;

    constructor(string memory message) {
        Requestor = msg.sender;
        RequestMessage = message;
        State = StateType.Request;
    }

    // call this function to send a request
    function SendRequest(string memory requestMessage) public {

        if (Requestor != msg.sender) {
            revert();
        }

        RequestMessage = requestMessage;
        State = StateType.Request;
    }

    // call this function to send a response
    function SendResponse(string memory responseMessage) public  returns (string memory){

        Responder = msg.sender;
        ResponseMessage = responseMessage;
        State = StateType.Respond;

        return "hello";
    }

    function GetMessage() public pure returns (string memory) {
        return "hello";
    }

    function say() public pure returns (string memory) {
        return "hello";
    }
}
