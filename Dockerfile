FROM node:22-bookworm-slim AS frontend
WORKDIR /app
COPY package*.json ./
RUN npm ci --no-audit --no-fund
COPY frontend ./frontend
RUN npm run build

FROM python:3.12-slim-bookworm
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && useradd -m -u 10001 founder
COPY backend ./backend
COPY scripts ./scripts
COPY specification ./specification
COPY frontend/public/fonts ./frontend/public/fonts
COPY --from=frontend /app/dist ./dist
RUN mkdir /app/.data && chown -R founder:founder /app
USER founder
ENV HOST=0.0.0.0 PORT=8000 FOUNDER360_DATA_DIR=/app/.data
VOLUME ["/app/.data"]
EXPOSE 8000
HEALTHCHECK --interval=30s --timeout=5s CMD python -c "import urllib.request; urllib.request.urlopen('http://127.0.0.1:8000/healthz')" || exit 1
CMD ["python","scripts/serve.py"]
