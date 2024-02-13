CREATE TABLE foodinput (
    food_inputdate TIMESTAMP DEFAULT SYSTIMESTAMP PRIMARY KEY,
    food_name varchar2(255) NOT NULL,
    food_gram NUMBER,
    food_kcal NUMBER,
    food_totalkcal NUMBER,
    food_day NUMBER,
    member_id varchar2(20),
    FOREIGN KEY (member_id) REFERENCES member(id)
);

select * from foodinput;

