
M2PG_CONF=MsSqlAWT2Postgres.conf

M2PG_PROP=
M2PG_PROP=$M2PG_PROP -Dconnections.mssql.user=$SQLSERVER_USERNAME
M2PG_PROP=$M2PG_PROP -Dconnections.mssql.password=$SQLSERVER_PASSWORD

M2PG_CLASSPATH="/usr/src/sqljdbc_2.0/enu/*:/home/dev/projects/Migrate2Postgres/target/lib/*:/home/dev/projects/Migrate2Postgres/target/Migrate2Postgres-1.0.7.jar:/usr/share/java/postgresql.jar"

## get the command from the first arg passed, must be either DDL or DML
M2PG_COMMAND=$1


java -Dconnections.mssql.user=sa -cp $M2PG_CLASSPATH net.twentyonesolutions.m2pg.PgMigrator $M2PG_COMMAND $M2PG_CONF
