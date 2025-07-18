#!/bin/bash

# تحديث النظام وتثبيت المتطلبات
apt update && apt upgrade -y
apt install -y unzip curl wget git

# تحميل الملف من GitHub
wget -O hamada.zip https://github.com/Hamadasiana/test2/raw/main/HAMADA_FINAL.zip

# فك الضغط وإجبار الاستبدال بدون سؤال
unzip -o hamada.zip

# دخول المجلد الصحيح
cd VVV-main

# إعطاء صلاحيات للملف الصحيح
chmod +x install.sh

# تنفيذ ملف التثبيت من داخل المجلد
./install.sh
