# Schema
## users
| column name   | data type | details                   |
| ------------- | --------- | ------------------------- |
| id            | integer   | not null, primary key     |
| email         | string    | not null, indexed, unique |
| password      | string    | not null                  |
| username      | string    | not null, indexed, unique |
| name          | string    | not null                  |
| age           | integer   | not null                  |
| photo         | string    | not null                  |



## boards
| column name | data type | details               |
| ----------- | --------- | --------------------- |
| id          | integer   | not null, primary key |
| user        | integer   | not null, foreign key |
| name        | string    | not null              |
| description | string    |                       |
| pins        | integer   | foreign key           |


## pins
| column name | data type | details               |
| ----------- | --------- | --------------------- |
| id          | integer   | not null, primary key |
| user        | integer   | not null, foreign key |
| board       | integer   | not null, foreign key |
| pic_url     | string    | not null              |
| link_url    | string    | not null              |
| title       | string    |                       |
| body        | string    |                       |
