create table dic_national_id_type
(
    name        varchar(20) not null primary key,
    country_iso char(2)     not null references dic_country (iso)
        on update cascade on delete no action
);

INSERT INTO dic_national_id_type(name, country_iso)
VALUES ('PESEL', 'PL'),
       ('УНЗР', 'UA');

create index idx_dic_national_id_type_country_iso on dic_national_id_type(country_iso);
