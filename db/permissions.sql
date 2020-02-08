revoke all on table athletes from webuser;
revoke all on table competitions from webuser;

grant usage on schema public to webuser;

grant select on athletes to webuser;
grant select on competitions to webuser;