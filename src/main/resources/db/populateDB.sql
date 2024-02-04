DELETE FROM user_role;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin'),
       ('Guest', 'guest@gmail.com', 'guest');

INSERT INTO user_role (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (date_time, description, calories, userid)
VALUES ('2024-02-03 00:00:00.000000', 'сніданок', 500, 1),
       ('2024-02-04 00:00:00.000000', 'обід', 500, 2),
       ('2024-02-02 00:00:00.000000', 'вечеря', 500, 1)