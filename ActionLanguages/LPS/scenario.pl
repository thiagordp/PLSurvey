personal_data(marco, nome).

automated_processing(
    nome,
    facebook
).

processing_basis(
    consent,
    nome
).

isTechnicallyFeasible(
    direct_transmission(
        facebook,
        google
    )
).

observe
    request(
        marco,
        data_portability(
            nome,
            facebook
        )
    )
at 2.

observe
    provideData(
        facebook,
        marco
    )
at 5.

observe
    request(
        marco,
        direct_transmission(
            facebook,
            google
        )
    )
at 7.