ALTER TABLE crossfit_box
    ADD owner_id BIGINT;

ALTER TABLE crossfit_box
    ADD CONSTRAINT uc_crossfit_box_owner UNIQUE (owner_id);

ALTER TABLE crossfit_box
    ADD CONSTRAINT FK_CROSSFIT_BOX_ON_OWNER FOREIGN KEY (owner_id) REFERENCES member (id);