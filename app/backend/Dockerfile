FROM python:3.12-slim

WORKDIR /app

RUN addgroup -S app && adduser -S app -G app


COPY --chown=app:app . .

RUN pip install --no-cache-dir -r requirements.txt

USER app

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

HEALTHCHECK --interval=30s --timeout=3s \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:8000/health')" || exit 1