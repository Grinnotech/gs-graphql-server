create table person
(
    uuid             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    organization     varchar(80)  not null references organization(code)
        on update cascade on delete no action,
    first_names      varchar(255) not null,
    surname          varchar(255) not null,
    national_id_type varchar(20)  not null references dic_national_id_type(name)
        on update cascade on delete no action,
    national_id      varchar(255) not null,
    anonimized       boolean      not null default false,
    deleted          boolean      not null default false
);

create index idx_person_names on person (surname, first_names);
create index idx_person_national_id on person (national_id);
create index idx_person_deleted on person (deleted);
create index idx_person_anonimized on person (anonimized);
