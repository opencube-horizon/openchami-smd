ALTER TABLE components DROP COLUMN IF EXISTS boot_transport;

insert into system values(0, 21, '{}'::JSON)
    on conflict(id) do update set schema_version=21;
