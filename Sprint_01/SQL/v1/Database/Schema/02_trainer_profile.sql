CREATE TABLE trainer_profile (

    trainer_id BIGINT PRIMARY KEY,

    trainer_experience INTEGER,

    trainer_bio TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    deleted_at TIMESTAMP,

    CONSTRAINT trainer_id_fk
        FOREIGN KEY (trainer_id)
        REFERENCES users(id)

);