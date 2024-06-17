CREATE USER [LocalSystem]
    FOR LOGIN [NT AUTHORITY\SYSTEM]
    WITH DEFAULT_SCHEMA = dbo

GO

GRANT CONNECT TO [LocalSystem]

GO

GRANT SELECT ON SCHEMA::[dbo] TO [LocalSystem]

GO

GRANT INSERT ON SCHEMA::[dbo] TO [LocalSystem]

GO

GRANT UPDATE ON SCHEMA::[dbo] TO [LocalSystem]

GO

GRANT EXECUTE ON SCHEMA::[dbo] TO [LocalSystem]

GO