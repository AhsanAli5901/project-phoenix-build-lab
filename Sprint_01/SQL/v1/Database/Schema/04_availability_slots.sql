CREATE TABLE availability_slot (

    slot_id BIGSERIAL PRIMARY KEY,

    trainer_id BIGINT NOT NULL,

    day_of_week TEXT NOT NULL,

    start_time TIME NOT NULL,

    end_time TIME NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    deleted_at TIMESTAMP,

    CONSTRAINT trainer_id_fk
        FOREIGN KEY (trainer_id)
        REFERENCES trainer_profile(trainer_id)

);