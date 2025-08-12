# Use the official rocker/r2u image with R pre-installed
FROM rocker/r2u:24.04

RUN apt-get update && \
    apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev  && \
    apt-get autoremove -y && \
    apt-get clean

# Install blogdown and Hugo
RUN Rscript -e "install.packages('blogdown'); blogdown::install_hugo()"

# Set default workdir
WORKDIR /workspace

# Optionally, copy your site files here if you want to build in the image (not needed for CI)
# COPY . /workspace

# Default command (not used in CI)
CMD ["R"]
