
# qslib

[![PyPI version](https://badge.fury.io/py/qslib.svg)](https://badge.fury.io/py/qslib)
[![Python version](https://img.shields.io/pypi/pyversions/qslib.svg)](https://pypi.org/project/qslib/)
[![License](https://img.shields.io/pypi/l/qslib.svg)](https://pypi.org/project/qslib/)

## Описание

`qslib` - это библиотека Python для управления файлами в формате .qs и создания конфигурационных файлов. Вы можете использовать `qslib` для хранения различных типов данных и настроек в удобном формате .qs.

## Установка

Установите `qslib` с помощью `pip`:

```bash
pip install qslib
```

## Использование

```python
from qslib import QSLib

# Создание экземпляра библиотеки
qs = QSLib('storage')

# Создание конфигурационного файла с паролем
qs.create_config('test', 'pass', backups=True, delete_after=5)

# Добавление API ключей (с проверкой пароля)
qs.add_api_key('test', 'cloudflare', 'api-key-1')

# Получение списка API ключей
cloudflare_keys = qs.list_api_keys('test', 'cloudflare')
print("Cloudflare Keys:", cloudflare_keys)

# Импорт файла
qs.import_file('test', 'sample', 'This is a sample text file.')

# Получение содержимого файла
file_content = qs.get_file_content('test', 'sample')
print("File Content:")
print(file_content)

# Создание резервной копии файла
qs.backup_file('test', 'sample')
```
