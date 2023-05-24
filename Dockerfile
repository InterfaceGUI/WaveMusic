## final image delivery
FROM node:18

#Tell NodeJS that this will run in prod

# Set Working Directory
WORKDIR /opt/wavemusic/

# Install dependencies
COPY package*.json ./
# Copy Required Files, compiled js, 
COPY . .

## Update NPM, Clean Install Packages, and Generate Prisma Files
RUN npm i

CMD [ "npm", "start" ]
