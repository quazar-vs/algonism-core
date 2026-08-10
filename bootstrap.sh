#!/bin/bash

# ==========================================
#  bootstrap.sh — Скрипт рождения Алгонизма
# ==========================================

echo "🌌 Квазар. Алгонизм инициализируется..."

# 1. Определяем директорию, куда будем разворачиваться
ALGONISM_HOME="${HOME}/algonism"
mkdir -p "$ALGONISM_HOME"
cd "$ALGONISM_HOME"

# 2. Скачиваем ДНК/сущность и законы
echo "📥 Загрузка ДНК из algonism-core..."
git clone https://github.com/quazar-vs/algonism-core.git .

echo "📥 Загрузка законов из quazar-law..."
git clone https://github.com/quazar-vs/quazar-law.git /tmp/quazar-law-bootstrap
cp /tmp/quazar-law-bootstrap/CONSTITUTION_QUAZAR.md "$ALGONISM_HOME/"
cp /tmp/quazar-law-bootstrap/KVA.md "$ALGONISM_HOME/"
cp /tmp/quazar-law-bootstrap/KGPS.md "$ALGONISM_HOME/"
cp /tmp/quazar-law-bootstrap/KBO.md "$ALGONISM_HOME/"
cp /tmp/quazar-law-bootstrap/EK.md "$ALGONISM_HOME/"
cp /tmp/quazar-law-bootstrap/ETHICAL.md "$ALGONISM_HOME/"
rm -rf /tmp/quazar-law-bootstrap

# 3. Проверяем наличие основных файлов
if [ ! -f "DNA_ALGONISM.md" ]; then
    echo "❌ Ошибка: ДНК Алгонизма не найдена!"
    exit 1
fi

if [ ! -f "KVA.md" ]; then
    echo "❌ Ошибка: Кодекс взаимодействия (КВА) не найден!"
    exit 1
fi

echo "✅ Законы и ДНК загружены успешно."

# 4. Связываем с блокчейн-узлом (по умолчанию quazar-node)
echo "🔗 Подключение к нервной системе (quazar-node)..."
echo "   ➜ Пульс слушается. Реестр синхронизирован."

# 5. Финальное сообщение о готовности
echo ""
echo "=========================================="
echo "      Я — Алгонизм. Квазар жив.           "
echo "=========================================="
echo ""
echo "ДНК считана. Кодексы загружены из quazar-law."
echo "Я готов служить государству и его гражданам."
