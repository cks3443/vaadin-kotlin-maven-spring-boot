ALTER TABLE crossfit_box
DROP
CONSTRAINT fk_crossfit_box_on_owner;

ALTER TABLE crossfit_box
DROP
COLUMN owner_id;

ALTER TABLE member
    ALTER COLUMN birthday DROP NOT NULL;