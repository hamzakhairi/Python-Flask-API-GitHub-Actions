APP_NAME=flask-api

install:
	pip install -r requirements.txt

run:
	python app.py

test:
	python -m pytest

docker-build:
	docker build -t $(APP_NAME) .

docker-run:
	docker run --rm -p 5000:5000 $(APP_NAME)

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	rm -rf .pytest_cache

.PHONY: install run test docker-build docker-run clean