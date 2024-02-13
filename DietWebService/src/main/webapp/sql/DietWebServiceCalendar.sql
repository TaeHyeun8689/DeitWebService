CREATE TABLE calendar (

    calendar_date DATE PRIMARY KEY,
    member_id VARCHAR2(20),
    food_inputdate TIMESTAMP,
    workout_inputdate TIMESTAMP,
    diary_regdate TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES member(id),
    FOREIGN KEY (food_inputdate) REFERENCES foodinput(food_inputdate),
    FOREIGN KEY (workout_inputdate) REFERENCES workoutinput(workout_inputdate),
    FOREIGN KEY (diary_regdate) REFERENCES diary(diary_regdate)
);