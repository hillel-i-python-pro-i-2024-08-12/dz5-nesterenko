FROM python:3.12-slim

# Создание пользователя appuser
RUN useradd -ms /bin/bash appuser

# Переключение в рабочую директорию
WORKDIR /app

# Копируем файлы в контейнер
COPY --chown=appuser:appuser app.py /app/
COPY --chown=appuser:appuser requirements.txt /app/

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Указываем, что контейнер будет работать от имени пользователя appuser
USER appuser

# Запускаем приложение
CMD ["python", "app.py"]

