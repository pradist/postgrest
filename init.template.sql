create role staff nologin;

create table todos (
  id serial primary key,
  task text not null,
  done boolean default false
);

grant usage on schema public to staff;
grant all on todos to staff;
grant usage, select on sequence todos_id_seq to staff;

-- User with login and inherited role
create role web_user login password '${WEB_USER_PASS}';
grant staff to web_user;
