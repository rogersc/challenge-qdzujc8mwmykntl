challenge-qdzujc8mwmykntl-php-fpm:
	cd php-fpm && \
	docker build -t challenge-qdzujc8mwmykntl-php-fpm:latest .

challenge-qdzujc8mwmykntl-nginx:
	cd nginx && \
	docker build -t challenge-qdzujc8mwmykntl-nginx:latest .

images: challenge-qdzujc8mwmykntl-php-fpm challenge-qdzujc8mwmykntl-nginx
