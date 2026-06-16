constitutiveRule(
    r1,
    right(Subject,
          data_portability(Controller))
) :-
    subject(Subject),
    controller(Controller).

applicable(
    r1,
    right(Subject,
          data_portability(Controller))
) :-
    defeasible(
        processing_basis(
            consent(
                Subject,
                Controller
            )
        )
    ),
    defeasible(
        processing_method(
            automatic
        )
    ).

constitutiveRule(
    r2,
    right(Subject,
          data_portability(Controller))
) :-
    subject(Subject),
    controller(Controller).

applicable(
    r2,
    right(Subject,
          data_portability(Controller))
) :-
    defeasible(
        processing_basis(
            contract(
                Subject,
                Controller
            )
        )
    ),
    defeasible(
        processing_method(
            automatic
        )
    ).

constitutiveRule(
    r4,
    right(
        Subject,
        data_transmission(
            Controller,
            NewController
        )
    )
) :-
    subject(Subject),
    controller(Controller),
    new_controller(NewController).

applicable(
    r4,
    right(
        Subject,
        data_transmission(
            Controller,
            NewController
        )
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
        feasible(
            data_transmission(
                NewController
            )
        )
    ).