#!/bin/bash

# تحديث النظام وتثبيت المتطلبات
apt update && apt upgrade -y
apt install -y unzip curl wget git

# تحميل الحزمة المضغوطة من GitHub
wget -O hamada.zip https://github.com/Hamadasiana/test2/raw/main/HAMADA_FINAL.zip

# فك الضغط تلقائيًا بدون سؤال
unzip -o hamada.zip

# الدخول للمجلد
cd VVV-main

# إعطاء صلاحيات للتنفيذ
chmod +x install.sh

# تنفيذ السكربت الرئيسي
./install.sh
