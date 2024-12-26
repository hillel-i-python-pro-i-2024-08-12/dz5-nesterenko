FROM python:3.12-slim

RUN useradd -ms /bin/bash appuser

WORKDIR /app

COPY --chown=appuser:appuser app.py /app/
COPY --chown=appuser:appuser requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

USER appuser

CMD ["python", "app.py"]

