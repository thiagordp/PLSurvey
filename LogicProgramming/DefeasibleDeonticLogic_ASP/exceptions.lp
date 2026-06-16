target(X) :-
    subject(X).

target(X) :-
    new_controller(X).

permissiveRule(
    r6,
    non(
        provide_data(
            Controller,
            X
        )
    )
) :-
    target(X),
    controller(Controller).

applicable(
    r6,
    non(
        provide_data(
            Controller,
            X
        )
    )
) :-
    target(X),
    defeasible(
        processing_basis(
            public_interest(
                Subject,
                Controller
            )
        )
    ).

permissiveRule(
    r7,
    non(
        provide_data(
            Controller,
            X
        )
    )
) :-
    target(X),
    controller(Controller).

applicable(
    r7,
    non(
        provide_data(
            Controller,
            X
        )
    )
) :-
    target(X),
    defeasible(
        processing_basis(
            public_authority(
                Subject,
                Controller
            )
        )
    ).

superior(r6,r3).
superior(r6,r5).

superior(r7,r3).
superior(r7,r5).