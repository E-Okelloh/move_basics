
/// Module: hello_world
module hello_world::hello_world {
    use sui::object::{UID};
    use sui::tx_context::{TxContext};
    use sui::transfer;
    use std::string;

    /// An object that contains an arbitrary string
    public struct HelloWorldObject has key, store {
        id: UID,
        text: string::String,
    }

    /// Mint a HelloWorldObject and transfer to sender
    public entry fun mint(ctx: &mut TxContext) {
        let sender = tx_context::sender(ctx);
        let obj = HelloWorldObject {
            id: object::new(ctx),
            text: string::utf8(b"Hello World!"),
        };
        transfer::transfer(obj, sender);
    }
}


// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


