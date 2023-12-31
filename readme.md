
# qs-files

![Python Version](https://img.shields.io/pypi/pyversions/qs-files)
![PyPI Version](https://img.shields.io/pypi/v/qs-files)
![License](https://img.shields.io/pypi/l/qs-files)
![Discord](https://discord.gg/KrZP5AaAxF)

**qs-files** - это Python библиотека, предназначенная для управления файлами и конфигурациями в формате .qs. С помощью этой библиотеки вы можете легко загружать, изменять и сохранять конфигурации в ваших Python проектах.

## Установка

Вы можете установить библиотеку с помощью pip:

```bash
pip install qs-files
```

## Описание

**qs-files** предоставляет удобные инструменты для работы с .qs файлами. Основные возможности включают:

- Загрузку и парсинг .qs файлов.
- Создание, изменение и сохранение конфигураций.
- Поиск .qs файлов в указанной директории.

Эта библиотека поддерживает Python 3.7 и более новые версии.

## Использование

Простой пример использования библиотеки:

```python
import os
import json
import logging
import requests
import random
from qs_files.configs import Configs

# Настроим логгирование для отслеживания событий
logging.basicConfig(filename='app.log', level=logging.INFO, format='%(asctime)s - %(levelname)s: %(message)s')

# Создаем объект конфигурации для работы с файлом .env/config.qs
config = Configs('.env/config.qs')

# Загружаем конфигурацию из файла
config.load()

# Получаем значение из конфигурации
value = config.get_value('section_name', 'key_name')

# Изменяем значение и сохраняем конфигурацию
config.set_value('section_name', 'key_name', 'new_value')
config.save()

# Создаем новую секцию и добавляем в нее значения
new_section_data = {'new_key_1': 'value_1', 'new_key_2': 'value_2'}
config.set_section('new_section', new_section_data)

# Добавляем новое значение в существующую секцию
config.add_value('existing_section', 'new_key', 'new_value')

# Устанавливаем значение для бэкапов
config.set_backup_time(24)

# Включаем бэкапы
config.backup(enable=True)

# Сохраняем обновленную конфигурацию
config.save()

# Получаем содержимое секции 'existing_section' после всех изменений
section_data = config.get_section('existing_section')
logging.info(f"Содержимое секции 'existing_section': {section_data}")

# Создаем и сохраняем JSON-файл с данными из секции
json_data = json.dumps(section_data)
with open('config_data.json', 'w') as json_file:
    json_file.write(json_data)

# Выводим список файлов в текущей директории
file_list = os.listdir('.')
logging.info(f"Список файлов в текущей директории: {file_list}")

# Выполняем HTTP-запрос к сайту
response = requests.get('https://jsonplaceholder.typicode.com/posts/1')
if response.status_code == 200:
    post_data = response.json()
    logging.info(f"Данные из HTTP-запроса: {post_data}")
else:
    logging.error(f"Ошибка при выполнении HTTP-запроса: {response.status_code}")

# Генерируем случайное число и сохраняем его в конфигурации
random_number = random.randint(1, 100)
config.set_value('random', 'random_number', str(random_number))
config.save()
```

## Документация

Подробная документация и примеры использования доступны на [GitHub](https://github.com/QuadratNew/qs-files).

## Сообщество

Присоединяйтесь к нашему сообществу на [Discord](https://discord.gg/KrZP5AaAxF), где вы можете задать вопросы, обсудить проект и получить поддержку от других пользователей.

## Веб-сайт

Посетите [веб-сайт](https://qs-files.pypi.qs-e.space) проекта **qs-files** для дополнительной информации и ресурсов.

## Лицензия

Этот проект распространяется под лицензией MIT. Подробности доступны в файле [LICENSE](https://github.com/QuadratNew/qs-files/blob/main/LICENSE).

## Автор

Проект разработан [Quadrat.Ik](https://github.com/QuadratNew).

## Связаться с нами

Если у вас есть вопросы или предложения, не стесняйтесь связаться с нами по адресу [quadrat.ik@yandex.com](mailto:quadrat.ik@yandex.com).
