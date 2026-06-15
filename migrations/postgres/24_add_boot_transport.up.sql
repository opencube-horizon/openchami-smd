ALTER TABLE components ADD COLUMN IF NOT EXISTS boot_transport TEXT DEFAULT NULL;

insert into system values(0, 22, '{}'::JSON)
    on conflict(id) do update set schema_version=22;
