FROM rocker/tidyverse

RUN apt-get update -y\
&& apt-get install -y dpkg-dev zlib1g-dev libssl-dev libffi-dev\
&& apt-get install -y curl libcurl4-openssl-dev\
&& apt-get install -y git\
&& R -e "install.packages('BiocManager')"\
&& R -e "BiocManager::install('biomaRt')"\
&& R -e "BiocManager::install('ComplexHeatmap')"\
&& R -e "BiocManager::install('cqn')"\
&& R -e "install.packages('data.table')"\
&& R -e "devtools::install_github('th1vairam/CovariateAnalysis@dev')"\
&& R -e "install.packages('doParallel')"\
&& R -e "install.packages('dplyr')"\
&& R -e "BiocManager::install('edgeR')"\
&& R -e "install.packages('foreach')"\
&& R -e "devtools::install_github('brian-bot/githubr')"\
&& R -e "install.packages('glmnet')"\
&& R -e "install.packages('ggplot2')"\
&& R -e "install.packages('knitr')"\
&& R -e "install.packages('lme4')"\
&& R -e "BiocManager::install('limma')"\
&& R -e "install.packages('plyr')"\
&& R -e "install.packages('psych')"\
&& R -e "install.packages('statmod')"\
&& R -e "install.packages('stringr')"\
&& R -e "install.packages('synapser', repos = c('http://ran.synapse.org', 'http://cran.fhcrc.org'))"\
&& R -e "install.packages('tidyr')"\
&& R -e "BiocManager::install('WGCNA')"
