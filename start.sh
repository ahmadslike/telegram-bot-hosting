#!/bin/bash

echo "════════════════════════════════════════"
echo "🤖 Telegram Bot Hosting Platform"
echo "════════════════════════════════════════"
echo ""

# تثبيت المكتبات المطلوبة
echo "📦 Installing required packages..."
pip3 install -r requirements.txt --break-system-packages --quiet

if [ $? -eq 0 ]; then
    echo "✅ Packages installed successfully"
else
    echo "⚠️ Some packages failed to install, trying alternative method..."
    pip3 install -r requirements.txt --user --quiet
fi

echo ""

# إنشاء المجلدات الضرورية
echo "📁 Creating necessary directories..."
mkdir -p upload_bots
mkdir -p inf
echo "✅ Directories created"

echo ""
echo "════════════════════════════════════════"
echo "🚀 Starting the bot..."
echo "════════════════════════════════════════"
echo ""

# تشغيل البوت
python3 telegram_bot.py
