create table organization
(
    code        varchar(80) NOT NULL UNIQUE PRIMARY KEY,
    name        varchar(255) NOT NULL,
    country_iso char(2) not null references dic_country(iso) on update cascade on delete NO ACTION
);

create index idx_organization_name on organization(name);
