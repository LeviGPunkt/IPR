# Verwende ein Node.js Basis-Image mit einer spezifischen Version
FROM node:14

# Setze das Arbeitsverzeichnis innerhalb des Containers
WORKDIR /usr/src/app

# Kopiere package.json und package-lock.json in das Arbeitsverzeichnis
COPY package*.json ./

# Installiere npm-Abhängigkeiten
RUN npm install

# Kopiere den Rest des Anwendungscodes in das Arbeitsverzeichnis
COPY . .

# Baue die Anwendung (falls erforderlich, je nach Art der Anwendung)
# Hier gehe ich davon aus, dass keine Build-Scripte oder ähnliches benötigt werden,
# da dies ein einfaches Express.js-Projekt ist
# Falls nötig, könnten hier Build-Schritte wie `npm run build` eingefügt werden

# Exponiere den Port, auf dem die Anwendung läuft (wenn in der Anwendung definiert)
EXPOSE 3000

# Starte die Anwendung
CMD ["node", "server.js"]
