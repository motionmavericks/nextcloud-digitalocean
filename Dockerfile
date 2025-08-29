FROM nextcloud:29-apache

# Set environment variables for production
ENV NEXTCLOUD_UPDATE=1
ENV PHP_MEMORY_LIMIT=1024M
ENV PHP_UPLOAD_LIMIT=10G

# Install additional PHP extensions if needed
RUN apt-get update && apt-get install -y \
    libmagickwand-dev \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Enable Apache modules
RUN a2enmod rewrite headers env dir mime ssl

# Set recommended PHP settings
RUN { \
    echo 'opcache.enable=1'; \
    echo 'opcache.interned_strings_buffer=16'; \
    echo 'opcache.max_accelerated_files=10000'; \
    echo 'opcache.memory_consumption=128'; \
    echo 'opcache.save_comments=1'; \
    echo 'opcache.revalidate_freq=60'; \
} > /usr/local/etc/php/conf.d/opcache-recommended.ini

# Expose port 80 for App Platform
EXPOSE 80