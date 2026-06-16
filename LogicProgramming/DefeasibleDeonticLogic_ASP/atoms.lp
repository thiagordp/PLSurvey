atom(right(Subject, data_portability(Controller))) :-
    subject(Subject),
    controller(Controller).

atom(right(Subject,
           data_transmission(
               Controller,
               NewController))) :-
    subject(Subject),
    controller(Controller),
    new_controller(NewController).

atom(provide_data(Controller, X)) :-
    target(X),
    controller(Controller).