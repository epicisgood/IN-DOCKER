FROM node:20-alpine

RUN apk add --no-cache git

WORKDIR /education

# Clone the repo using --depth 1 to only get the latest commit for smaller size
RUN git clone --depth 1 https://github.com/epicisgood/education.git .

RUN npm install

# Add a script to pull latest changes and start your node application
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
