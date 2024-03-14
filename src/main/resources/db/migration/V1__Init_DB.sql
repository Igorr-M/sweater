create sequence if not exists message_seq start with 1 increment by 1;
create sequence if not exists usr_seq start with 1 increment by 1;

create table if not exists message (
    id bigint not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(2048) not null,
    user_id bigint,
    primary key (id)
);

create table if not exists user_role (
    user_id bigint not null,
    roles varchar(255)
);

create table if not exists usr (
    id bigint not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table if exists message
    add constraint message_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;