ALTER TABLE member
    ADD crossfit_box_id BIGINT;

ALTER TABLE member
DROP
CONSTRAINT uc_member_email;

ALTER TABLE member
    ADD CONSTRAINT FK_MEMBER_ON_CROSSFIT_BOX FOREIGN KEY (crossfit_box_id) REFERENCES crossfit_box (id);