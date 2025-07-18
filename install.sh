#!/bin/bash

clear
echo -e "🔧 جاري تثبيت سكربت HAMADA من نسخة مضغوطة..."

# تحديث النظام
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y

# تثبيت المتطلبات الأساسية
apt install -y curl wget git unzip screen ca-certificates socat net-tools cron

# تحميل الحزمة المضغوطة من GitHub (الرابط الصحيح)
wget https://github.com/Hamadasiana/test2/raw/main/HAMADA_FINAL.zip -O hamada.zip

# فك الضغط
unzip hamada.zip
cd HAMADA_FINAL || cd HAMADA || cd VVV-main || cd hamada || exit 1

# إعطاء صلاحيات تنفيذ لجميع الملفات
chmod +x *.sh

# تشغيل التثبيت الكامل
./install.sh
