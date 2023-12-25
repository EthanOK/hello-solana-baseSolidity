@program_id("F1ipperKF9EfD821ZbbYjS319LXYiBmjhzkkf5a26rC")
contract hello_solana {
    bool private value = true;

    address private owner;

    @payer(payer)
    constructor(address payer) {
        print("Hello, World!");

        print("Solidity for Solana!");

        owner = payer;
    }

    /// A message that can be called on instantiated contracts.
    /// This one flips the value of the stored `bool` from `true`
    /// to `false` and vice versa.
    function flip() public {
        value = !value;
    }

    /// Simply returns the current value of our `bool`.
    function get() public view returns (bool) {
        return value;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
