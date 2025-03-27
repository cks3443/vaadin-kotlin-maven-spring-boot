CREATE TABLE member
(
    id               BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    email            VARCHAR(255)                            NOT NULL,
    password         VARCHAR(255)                            NOT NULL,
    gender           VARCHAR(255)                            NOT NULL,
    telephone_number VARCHAR(255),
    birthday         date                                    NOT NULL,
    name             VARCHAR(255)                            NOT NULL,
    CONSTRAINT pk_member PRIMARY KEY (id)
);

ALTER TABLE member
    ADD CONSTRAINT uc_member_email UNIQUE (email);