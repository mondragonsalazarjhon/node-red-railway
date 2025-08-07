FROM nodered/node-red:latest

# Copiamos cualquier configuración inicial
COPY data /data

# Railway usa la variable de entorno PORT
ENV PORT=3000
EXPOSE 3000

# Arranca Node-RED usando /data como directorio de usuario
CMD ["npm", "start", "--", "--userDir", "/data"]

