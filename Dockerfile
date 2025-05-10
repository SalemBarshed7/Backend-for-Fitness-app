FROM php:8.2-apache

# نسخ كل ملفات مشروعك إلى مجلد السيرفر داخل الحاوية
COPY . /var/www/html/

# تعيين صلاحيات للمجلد (اختياري ولكن يفضل)
RUN chown -R www-data:www-data /var/www/html

# فتح المنفذ 80 الذي يعمل عليه Apache
EXPOSE 80
