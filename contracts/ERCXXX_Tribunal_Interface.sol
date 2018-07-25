pragma solidity ^0.4.11;

/**
* Base ERCXXX Tribunal Interface
*/
contract ERCXXX_Tribunal_Interface {

    // #####################
    // CONTRACT VARIABLES
    // #####################

    // #####################
    // MODIFIERS
    // #####################

    // #####################
    // FUNCTIONS
    // #####################

    /**
    * Accuses the issuer of not releasing the locked funds to the redeemer, despite the corresponding tokens having
    * been burned.
    * @redeemer - redeemer address
    * @id - id of the token struct which was supposed to be redeemed (issue of dispute)
    *
    * ASSERT: user has provided sufficient collateral.
    */
    function accuse(uint id);

    /**
    * Issuer (or any user on behalf of the issuer)
    *
    * ASSERT: callable only by issuers
    */
    function rebut(uint id, byte data);


    // #####################
    // HELPER FUNCTIONS
    // #####################


    // #####################
    // EVENTS
    // #####################

    /**
    * Events related to the tribunal procedures
    * @issuer - ETH address of the accused issuer
    * @accuser - ETH address of the accuser
    * @value - value of disputed tokens
    * @data - data, contains necessary data on accusation and rebuttal (fraud proofs)
    */
    event ACCUSE(address indexed issuer, address indexed accuser, uint value, bytes data);
    event REBUT(address indexed sender, address indexed accuser, uint value, bytes data);
    event ACCUSATION_WINS(address indexed issuer, address indexed accuser, uint value, byte data);
    event REBUTTAL_WINS(address indexed issuer, address indexed accuser, uint value, byte data);

}
