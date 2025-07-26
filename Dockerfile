# Use a minimal Java 21 runtime base image
FROM bitnami/java:21.0.7-9-debian-12-r0
# Set environment variables (optional defaults; can override at runtime)
ENV DB_URL=jdbc:mysql://mysql:3306/companydb
ENV DB_USERNAME=root
ENV DB_PASSWORD=rootpwd

# Set working directory
WORKDIR /app

# Copy jar
COPY target/nagp-employee-be-*.jar app.jar

# Expose port
EXPOSE 8080

# Run app
ENTRYPOINT ["java","-jar","app.jar"]