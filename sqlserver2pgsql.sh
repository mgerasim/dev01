perl ../sqlserver2pgsql/sqlserver2pgsql.pl 	-f SQLSERVER.dump \
						-b pgsql_out_sqlserver2pgsql_01.sql \
						-a pgsql_out_sqlserver2pgsql_02.sql \
						-u pgsql_out_sqlserver2pgsql_03.sql \
                                                -k out \
                                                -sd localhost \
                                                -sh localhost \
                                                -sp 1433 \
                                                -su su \
                                                -sw ex6ectDFMJLOwbEnAIR0 \
                                                -pd lers \
                                                -ph localhost \
                                                -pp 5432 \
                                                -pu lers \
                                                -pw ILyS3L5oEfOUubJX0a2k \
                                                -keep_identifier_case > pgsql_out_sqlserver2pgsql_04.log 2>&1
