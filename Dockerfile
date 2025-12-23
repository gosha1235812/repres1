# Базовий образ Node.js LTS
FROM node:lts

# Робоча директорія в контейнері
WORKDIR /usr/src/app

# Копіюємо package.json та package-lock.json для кешування залежностей
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо весь проект
COPY . .

# Відкриваємо порт 3000
EXPOSE 3000

# Команда для запуску застосунку
CMD ["node", "index.js"]
