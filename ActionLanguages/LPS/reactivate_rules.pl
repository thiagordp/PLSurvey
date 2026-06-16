if
    request(
        Subject,
        data_portability(
            _,
            Controller
        )
    ) from T,
    obligation(
        provide_data(
            Controller,
            Subject
        )
    ) at T1,
    T1 is T + 30
then
    deadlineViolation(
        provide_data(
            Controller,
            Subject
        )
    ) from T1.


if
    request(
        Subject,
        direct_transmission(
            Controller,
            NewController
        )
    ) from T,
    obligation(
        transmit(
            Controller,
            NewController
        )
    ) at T1,
    T1 is T + 30
then
    deadlineViolation(
        transmit(
            Controller,
            NewController
        )
    ) from T1.