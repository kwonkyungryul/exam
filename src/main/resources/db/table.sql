CREATE TABLE user_tb(
    id int AUTO_INCREMENT not null,
    username varchar unique not null,
    password varchar not null,
    email varchar not null,
    created_at timestamp
);

CREATE TABLE board_tb(
    id int AUTO_INCREMENT not null,
    title varchar not null,
    user_id int not null,
    created_at timestamp,
    constraint fk_user foreign key (user_id) references user_tb (id)
)