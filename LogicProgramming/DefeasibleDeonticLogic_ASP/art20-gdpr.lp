%%%% Example Facts

fact(processing_basis(consent(subject, controller))).
%fact(processing_basis(public_interest(subject, controller))).
fact(processing_method(automatic)).
fact(feasible(data_transmission(new_controller))).

fact(request(subject, data_portability(controller))).
fact(request(subject, data_transmission(controller, new_controller))).

subject(subject).
controller(controller).
new_controller(new_controller).

#show obligation/1.
%#show permission/1.


atom(right(Subject, data_portability(Controller))) :- subject(Subject), controller(Controller).
atom(right(Subject, data_transmission(Controller, NewController))) :- subject(Subject), controller(Controller), new_controller(NewController).
atom(provide_data(Controller, X)) :- target(X), controller(Controller).

constitutiveRule(r1, right(Subject, data_portability(Controller))) :- subject(Subject), controller(Controller).
applicable(r1, right(Subject, data_portability(Controller))) :-
    defeasible(processing_basis(consent(Subject, Controller))),
    defeasible(processing_method(automatic)).

constitutiveRule(r2, right(Subject, data_portability(Controller))) :- subject(Subject), controller(Controller).
applicable(r2, right(Subject, data_portability(Controller))) :-
    defeasible(processing_basis(contract(Subject, Controller))),
    defeasible(processing_method(automatic)).
    
constitutiveRule(r4, right(Subject, data_transmission(Controller, NewController))) :- subject(Subject), controller(Controller), new_controller(NewController).
applicable(r4, right(Subject, data_transmission(Controller, NewController))) :-
    defeasible(right(Subject, data_portability(Controller))),
    defeasible(feasible(data_transmission(NewController))).



prescriptiveRule(r3, provide_data(Controller, Subject)) :- subject(Subject), controller(Controller).
applicable(r3, provide_data(Controller, Subject)) :-
    defeasible(right(Subject, data_portability(Controller))),
    defeasible(request(Subject, data_portability(Controller))).


prescriptiveRule(r5, provide_data(Controller, NewController)) :- controller(Controller), new_controller(NewController).
applicable(r5, provide_data(Controller, NewController)) :-
    defeasible(right(Subject, data_transmission(Controller, NewController))),
    defeasible(request(Subject, data_transmission(Controller, NewController))).


target(X) :- subject(X).
target(X) :- new_controller(X).

permissiveRule(r6, non(provide_data(Controller, X))) :- target(X), controller(Controller).
applicable(r6, non(provide_data(Controller, X))) :-
    target(X),
defeasible(processing_basis(public_interest(Subject, Controller))).

permissiveRule(r7, non(provide_data(Controller, X))) :- target(X), controller(Controller).
applicable(r7, non(provide_data(Controller, X))) :-
    target(X),
defeasible(processing_basis(public_authority(Subject, Controller))).

superior(r6, r3).
superior(r6, r5).

superior(r7, r3).
superior(r7, r5).