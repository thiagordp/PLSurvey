%
% Art. 20 GDPR in Prolog
%
right_data_portability(Subject, Data, Controller) :-
    personal_data(Data, Subject),
    ( processing_by_consent(Data, Controller)
    ; processing_by_contract(Data, Controller)),
    automated_processing(Data),
    \+ processing_for_public_interest(Data, Controller),
    \+ processing_by_public_authority(Data, Controller).

obligation(provide_data(Controller,  Subject)):-
    right_data_portability(Subject, Data, Controller)
    request(Subject, provide_data(Controller,  Data)).

right_to_transmission(Subject, Data, Controller) :-
    right_data_portability(Subject, Data, Controller),
    feasibile(direct_transmission(Contrtoller, Data)).

obligation(direct_transmission(Controller,Data)) :-
    right_to_transmission(Subject, Data, Controller),
    request(Subject, direct_transmission(Contrtoller, Data)).