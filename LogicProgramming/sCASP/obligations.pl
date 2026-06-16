obligation(
    provide_data(
        Controller,
        Subject
    )
) :-
    right(
        Subject,
        data_portability(
            Controller
        )
    ),
    request(
        Subject,
        data_portability(
            Controller
        )
    ).

obligation(
    provide_data(
        Controller,
        NewController
    )
) :-
    right(
        Subject,
        data_transmission(
            Controller,
            NewController
        )
    ),
    request(
        Subject,
        data_transmission(
            Controller,
            NewController
        )
    ).

