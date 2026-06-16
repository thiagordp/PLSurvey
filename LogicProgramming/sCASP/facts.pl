subject(alice).
controller(acme).

new_controller(contoso).

personal_data(customer_profile,alice).

processing_by_consent(
    customer_profile,
    acme
).

automated_processing(
    customer_profile
).

request(
    alice,
    data_portability(acme)
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