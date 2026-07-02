right_data_portability(S,D,C) :-
personal_data(D,S),
processing_by_consent(D,C),
automated_processing(D),
not -right_data_portability(S,D,C).

-right_data_portability(_,D,C) :-
    processing_by_public(D,C).


personal_data(customer_profile,alice).
processing_by_consent(customer_profile,acme).
automated_processing(customer_profile).
processing_by_public(customer_profile,acme).

