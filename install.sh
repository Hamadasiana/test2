#!/bin/bash

clear
echo -e "🔧 جاري تثبيت سكربت HAMADA من نسخة مضغوطة..."

# تحديث النظام وتثبيت المتطلبات
apt update -y && apt upgrade -y && apt install -y curl wget unzip git screen ca-certificates socat net-tools cron

# حذف أي نسخة قديمة
rm -rf /root/hamada-install
mkdir -p /root/hamada-install
cd /root/hamada-install

# تحميل النسخة المضغوطة من GitHub
wget https://github.com/Hamadasiana/HAMADA/raw/main/HAMADA_FINAL.zip -O hamada.zip

# فك الضغط
unzip hamada.zip
cd VVV-main  # ← اسم المجلد الناتج من فك الضغط، تأكد من مطابقته بعد الرفع

# تشغيل التثبيت
chmod +x *.sh
./install.sh
