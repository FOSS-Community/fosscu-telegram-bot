FROM alpine:latest

# Install required packages
RUN apk add --no-cache python3-dev jq pv openssl neofetch curl-dev axel glib-dev openssl-dev  python3 curl bash which zip git nano fortune file make g++ wget asciidoc coreutils 

# Set working directory
WORKDIR /app

# Copy all files to workdir
COPY . .

# Set permissions
RUN chmod 755 /app

# Set user
USER root

# Define default command
CMD ["bash", "bot.sh", "--user", "root"]
