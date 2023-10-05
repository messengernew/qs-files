# qs-files

[![PyPI version](https://badge.fury.io/py/qs-files.svg)](https://badge.fury.io/py/qs-files)
[![Python version](https://img.shields.io/pypi/pyversions/qs-files.svg)](https://pypi.org/project/qs-files/)
[![License](https://img.shields.io/pypi/l/qs-files.svg)](https://pypi.org/project/qs-files/)

## Описание

`qs-files` - это библиотека Python для управления файлами в формате .qs и создания конфигурационных файлов. Вы можете использовать `qs-files` для хранения различных типов данных и настроек в удобном формате .qs.

## Установка

Установите `qs-files` с помощью `pip`:

```bash
pip install qs-files
```

## Использование

```python
from qs_files import QS_files

# Создание экземпляра библиотеки
qs = QS_files('storage')

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

## Лицензия

This project is licensed under the MIT License - see the [LICENSE](https://mit-license.org) file for details.