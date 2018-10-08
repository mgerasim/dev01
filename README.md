Подготовка сервера
=============================================
```
apt-get install libpostgresql-jdbc-java
```

Добавление SSH ключа для авторизации под пользователем git
=============================================
1. Сформировать открытый ключ ssh-keygen -t rsa -b 4096 -C "mgerasim@inbox.ru"
2. Скопировать в директорию cp  ~/.ssh/id_rsa.pub /tmp/
3. Выполнить вход под пользователем git
4. Добавить ключ в список авторизованных cat /tmp/id_rsa.gerasimov.pub >> ~/.ssh/authorized_keys


Структура каталогов
=============================================
```
/home/dev/projects
```
* ```dev01``` Миграция SQL Server на Postgres
* ```sqlserver2pgsql``` [Инструмент миграции](https://github.com/dalibo/sqlserver2pgsql)
* ```Migrate2Postgres``` [Инструмент миграции](https://github.com/isapir/Migrate2Postgres)

Описание проекта по миграции SQL Server на Postgres (dev01)
=============================================
* ```SQLSERVER.dump``` Дамп базы данных на SQL Server
* ```sqlserver2pgsql.sh``` Скрипт конвертации с помощью инструмента sqlserver2pgsql

Скрипт ```sqlserver2pgsql.sh```
=============================================
* Запуск ```sh sqlserver2pgsql.sh```
* Конфигурация
``` -keep_identifier_case ``` - не преобразовывайте дамп во все строчные буквы. Не рекомендуется, так как вам придется заключать каждый идентификатор (столбец, таблицу...) в двойные кавычки…

Импорт базы данных в Postgres
=============================================
1. Выполнить под пользователем ```postgres``` команду ```psql```

2. Создать базу данных 
```
CREATE DATABASE "LERS"
  WITH OWNER "lers"
  ENCODING 'UTF8'
  LC_COLLATE = 'en_US.UTF-8'
  LC_CTYPE = 'en_US.UTF-8';
```

3. Импортировать скрипты 
* ```psql -f /home/dev/projects/dev01/pgsql_out_sqlserver2pgsql_01.sql```
* ```psql -f /home/dev/projects/dev01/pgsql_out_sqlserver2pgsql_02.sql```
* ```psql -f /home/dev/projects/dev01/pgsql_out_sqlserver2pgsql_03.sql```

Миграция с использованием инструмента Migrate2Postgres 
=============================================
1. Установить ```Java Runtime Environment (JRE)``` и ```Java Development Kit (JDK)```
* ```sudo apt-get install default-jre```
* ```sudo apt-get install default-jdk```

2. Установить ```sqljdbc```

3. Выполнить вход пользователя ```dev```
* ``` su - dev```

4. Склонировать проект Migrate2Postgres 
* ```git clone https://github.com/isapir/Migrate2Postgres.git```

5. Выполнить переход в каталог ```Migrate2Postgres```
* ```cd projects/Migrate2Postgres/```

6. Установить Apache Maven
* ```sudo apt-get install maven```

7. Выполнить компиляцию проекта Migrate2Postgres
* ```mvn package```
* ```java -cp target/Migrate2Postgres-1.0.7.jar net.twentyonesolutions.m2pg.PgMigrator```

8. Подготовить скрипт ```migrate.sh```

9. Подготовить конфигурационный файл ```MsSqlAWT2Postgres.conf```

10. Выполнить запуск миграции 
``` sh migrate.sh DDL```

Postgres
=============================================
* ```sudo service postgresql restart``` Перезагрузка СУБД
* ```CREATE USER youruser WITH ENCRYPTED PASSWORD 'yourpass';``` Создание пользователя
* ```GRANT ALL PRIVILEGES ON DATABASE yourdbname TO youruser;``` Назначение прав к БД
* ```GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO lers; ```
* ```vi /etc/postgresql/10/main/pg_hba.conf``` Редактирование конфигурационного файла подключений

Пересоздать базу данных с использованием инструмента Migrate2Postgres 
=============================================
1. Выполнить переход под пользователем ```dev``` в рабочий каталог:
```cd ~/projects/dev01```

2. Выполнить изменение конфигурации 
```vi MsSqlAWT2Postgres.conf```

3. Выполнить создание схемы базы данных 
```sh migrate.sh DDL```

* Запомнить результирующий файл:
```Created DDL file at /home/dev/projects/dev01/Lers-ddl-20181009013818.sql```

4. Выполнить под пользователем ```postgres``` удаление и создание пустой базы данных ```lers```
```DROP DATABASE lers;```
``` CREATE DATABASE lers WITH OWNER lers ENCODING 'UTF8';```

5. Выполнить скрипт создания схемы из шага 3
```psql -U lers -d lers -f /home/dev/projects/dev01/Lers-ddl-20181009021946.sql```

6. Выполнтиь миграцию данных
```sh migrate.sh DML```
