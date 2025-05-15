create table patient (
    uuid UUID not null references person(uuid) on update cascade on delete cascade
);
