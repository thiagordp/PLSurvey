-right(
    Subject,
    data_portability(
        Controller
    )
) :-
    personal_data(Data,Subject),
    processing_by_public(
        Data,
        Controller
    ).

-right(
    Subject,
    data_portability(
        Controller
    )
) :-
    personal_data(Data,Subject),
    processing_by_authority(
        Data,
        Controller
    ).