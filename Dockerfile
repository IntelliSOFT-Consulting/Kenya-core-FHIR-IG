# Use Ruby as a base
FROM ruby:latest AS build

# Install necessary packages
RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    default-jdk \
    default-jre \
    curl \
    openssl \
    jq \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Sushi tool
RUN npm install -g fsh-sushi http-server

# Install Jekyll
RUN gem install bundler jekyll


# Set the working directory
WORKDIR /home/src

# Copy the contents of the current directory to /home/src in the container
COPY . .

# Make sure all files have appropriate permissions
RUN chmod 777 -R .

RUN mkdir -p /home/src/input-cache/

# Make sure the scripts are executable
RUN chmod +x /home/src/_gencontinuous.sh /home/src/_genonce.sh /home/src/_updatePublisher.sh

RUN /home/src/_updatePublisher.sh -y
RUN java -Xmx8g -jar /home/src/input-cache/publisher.jar publisher -ig .


FROM nginx:alpine

# Copy the generated output from the build stage to the Nginx document root
COPY --from=build /home/src/output /usr/share/nginx/html

# Expose the port
EXPOSE 85

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]