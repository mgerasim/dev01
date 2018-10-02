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
