ALTER TABLE schedule
    ADD box_id BIGINT;

ALTER TABLE schedule
    ADD CONSTRAINT FK_SCHEDULE_ON_BOX FOREIGN KEY (box_id) REFERENCES crossfit_box (id);