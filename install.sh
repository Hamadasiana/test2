#!/bin/bash

clear
echo -e "🔧 جاري تثبيت سكربت HAMADA من نسخة مضغوطة..."

# تحديث النظام
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y

# تثبيت المتطلبات الأساسية
apt install -y curl wget git unzip screen ca-certificates socat net-tools cron

# تحميل الملف المضغوط
wget https://github.com/Hamadasiana/test2/raw/main/HAMADA_FINAL.zip -O hamada.zip

# فك الضغط
unzip hamada.zip

# الدخول إلى المجلد الصحيح
cd VVV-main || { echo "❌ لم يتم العثور على المجلد VVV-main"; exit 1; }

# إعطاء صلاحيات تنفيذ
chmod +x *.sh

# تنفيذ سكربت التثبيت
./install.sh
