right(
    Subject,
    data_portability(Controller)
) :-
    personal_data(Data,Subject),
    processing_by_consent(
        Data,
        Controller
    ),
    automated_processing(Data),
    not -right(
        Subject,
        data_portability(Controller)
    ).

right(
    Subject,
    data_portability(Controller)
) :-
    personal_data(Data,Subject),
    processing_by_contract(
        Data,
        Controller
    ),
    automated_processing(Data),
    not -right(
        Subject,
        data_portability(Controller)
    ).

right(
    Subject,
    data_transmission(
        Controller,
        NewController
    )
) :-
    right(
        Subject,
        data_portability(
            Controller
        )
    ),
    feasible(
        data_transmission(
            NewController
        )
    ).