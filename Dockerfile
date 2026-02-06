FROM rocker/rstudio:4.4.2

COPY clean_data.r /home/rstudio/clean_data.r
COPY renv.lock /home/rstudio/renv.lock

USER root

RUN R -e "install.packages('renv'); renv::restore()"

USER rstudio