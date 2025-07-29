# Use the official Plumber image
FROM rstudio/plumber:v1.0.0

# Set the working directory inside the container
WORKDIR /app

# Copy your API files into the container
COPY . /app

# Install any required R packages
RUN R -e "install.packages(c('data.table', 'lubridate', 'readxl'))"

# Expose the port used by Plumber
EXPOSE 8000

# Run the Plumber API
CMD ["Rscript", "plumber.R"]
