-- Create anon role
create role anon nologin;

-- Create sample table
create table todos (
  id serial primary key,
  task text not null,
  done boolean default false
);

-- Grant access to anon
grant usage on schema public to anon;
grant select, insert, update, delete on todos to anon;
