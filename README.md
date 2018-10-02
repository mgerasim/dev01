###Добавление SSH ключа для авторизации под пользователем git
Сформировать открытый ключ ssh-keygen -t rsa -b 4096 -C "mgerasim@inbox.ru"
Скопировать в директорию cp  ~/.ssh/id_rsa.pub /tmp/
Выполнить вход под пользователем git
Добавить ключ в список авторизованных cat /tmp/id_rsa.gerasimov.pub >> ~/.ssh/authorized_keys
