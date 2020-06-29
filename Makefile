install:
	pip3 install -r requirements.txt
test:
	pytest --cov-report term-missing --cov=apps -p no:warnings
migrations:
	python manage.py makemigrations
migrate:
	python3 manage.py migrate
celery:
	celery -A erp_apiv2  worker -B -l info
superuser:
	python manage.py createsuperuser
collectstatic:
	python manage.py collectstatic
server:
	python3 manage.py runserver 0.0.0.0:8000
