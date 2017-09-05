createdb todolist
psql todolist

CREATE TABLE todos(
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  details VARCHAR(100000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
 );

INSERT INTO todos (title, details, priority, created_at) VALUES ('Walk the dog', 'Take Duke for a long walk', 3, 'now';
INSERT INTO todos (title, details, priority, created_at) VALUES ('Make breakfast', 'Crack 3 eggs', 5, 'now');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Get haircut', 'Drive to barber shop', 4, 'now', 'now');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Vacuum the house', 'Do not forget to move the couch', 1, 'now');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Bake cheesecake', 'Decide between chocolate or traditional', 2, 'now');

SELECT title FROM todos WHERE completed_at = NULL;
SELECT title FROM todos WHERE priority > 1;

UPDATE todos SET details = 'bake at 320 degrees' WHERE id = 5;

DELETE FROM todos WHERE completed_at != NULL;