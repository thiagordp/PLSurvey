% CR1
right(Subject, data_portability(Data, Controller)) :-
    personal_data(Subject, Data),
    automated_processing(Data, Controller),
    processing_basis(consent, Data),
    not processing_basis(public_interest, Data),
    not processing_basis(exercise_public_authority, Data).

% CR2
right(Subject, direct_transmission(Controller, NewController)) :-
    right(Subject, data_portability(Data, Controller)),
    isTechnicallyFeasible(
        direct_transmission(
            Controller,
            NewController
        )
    ).