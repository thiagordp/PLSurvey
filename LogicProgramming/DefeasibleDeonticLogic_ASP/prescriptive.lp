prescriptiveRule(
    r3,
    provide_data(
        Controller,
        Subject
    )
) :-
    subject(Subject),
    controller(Controller).

applicable(
    r3,
    provide_data(
        Controller,
        Subject
    )
) :-
    defeasible(
        right(
            Subject,
            data_portability(
                Controller
            )
        )
    ),
    defeasible(
        request(
            Subject,
            data_portability(
                Controller
            )
        )
    ).

prescriptiveRule(
    r5,
    provide_data(
        Controller,
        NewController
    )
) :-
    controller(Controller),
    new_controller(NewController).

applicable(
    r5,
    provide_data(
        Controller,
        NewController
    )
) :-
    defeasible(
        right(
            Subject,
            data_transmission(
                Controller,
                NewController
            )
        )
    ),
    defeasible(
        request(
            Subject,
            data_transmission(
                Controller,
                NewController
            )
        )
    ).