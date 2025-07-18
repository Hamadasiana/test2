#!/bin/bash

echo "📥 تحميل الملفات من GitHub..."
wget -O hamada.zip https://github.com/Hamadasiana/test2/raw/main/HAMADA_FINAL.zip

if [ ! -f "hamada.zip" ]; then
  echo "❌ فشل في تحميل الملف. تأكد من الرابط."
  exit 1
fi

echo "📦 فك الضغط عن الملف..."
unzip -o hamada.zip

if [ ! -d "VVV-main" ]; then
  echo "❌ مجلد VVV-main غير موجود بعد فك الضغط."
  exit 1
fi

cd VVV-main

echo "🔽 تحميل ملف install.sh من GitHub..."
wget -O install.sh https://raw.githubusercontent.com/Hamadasiana/test2/main/install.sh

if [ ! -f "install.sh" ]; then
  echo "❌ لم يتم العثور على install.sh"
  exit 1
fi

chmod +x install.sh

echo "🚀 بدء التثبيت..."
./install.sh
