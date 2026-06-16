subject(alice).

controller(acme).

new_controller(contoso).

processing_basis(
    consent(
        alice,
        acme
    )
).

processing_method(
    automatic
).

request(
    alice,
    data_portability(
        acme
    )
).

request(
    alice,
    data_transmission(
        acme,
        contoso
    )
).

feasible(
    data_transmission(
        contoso
    )
).

subject(bob).

controller(ministry).

processing_basis(
    public_interest(
        bob,
        ministry
    )
).

processing_method(
    automatic
).

request(
    bob,
    data_portability(
        ministry
    )
).