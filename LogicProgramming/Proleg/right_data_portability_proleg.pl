right_to_portability(Subject, Data, Controller)<=
personal_data(Data, Subject),
processing_by_contract(Data, Controller),
automated_processing(Data).

right_to_portability(Subject, Data, Controller)<=
personal_data(Data, Subject),
processing_by_consent(Data, Controller),
automated_processing(Data).

right_to_transmission(Subject, Data, Controller)<=
right_to_portability(Subject, Data, Controller).

exception(right_to_portability(Subject, Data, Controller) <=
processing_by_public_interest(Subject, Data, Controller)).

obl_provide_data(Controller,  Subject)<=
    right_data_portability(Subject, Data, Controller)
    port_request(Subject, Data).

obl_direct_transmission(Controller,Data))<=
    right_to_transmission(Subject, Data, Controller),
    tasm_request(Subject, Data)).

processing_by_public_interest(Subject, Data, Controller)<=
processing_by_public_interest_fact(Subject, Data, Controller).