%
% 
%


right(Subject, data_portability(Controller)):-
personal_data(Data,Subject) &
processing_basis(consent(Subject,Controller)) &
processing_method(automatic,Data) &
`$\sim$`processing_basis(public_interest(Subject,Controller)) &
`$\sim$`processing_basis(public_authority(Subject,Controller))

right(Subject, data_portability(Controller)):-
personal_data(Data,Subject) &
processing_basis(contract(Subject,Controller)) &
processing_method(automatic,Data) &
`$\sim$`processing_basis(public_interest(Subject,Controller)) &
`$\sim$`processing_basis(public_authority(Subject,Controller))