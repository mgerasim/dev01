perl ../sqlserver2pgsql/sqlserver2pgsql.pl 	-f SQLSERVER.dump \
						-b pgsql_out_sqlserver2pgsql_01.sql \
						-a pgsql_out_sqlserver2pgsql_02.sql \
						-u pgsql_out_sqlserver2pgsql_03.sql > pgsql_out_sqlserver2pgsql_04.log 2>&1
