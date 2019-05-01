FROM rocker/rstudio

RUN apt-get update -y\
&& apt-get install -y dpkg-dev zlib1g-dev libssl-dev libffi-dev\
&& apt-get install -y curl libcurl4-openssl-dev\
&& apt-get install -y git\
&& R -e "install.packages('biomaRt')"\
&& R -e "install.packages('ComplexHeatmap')"\
&& R -e "install.packages('CovariateAnalysis')"\
&& R -e "install.packages('cqn')"\
&& R -e "install.packages('data.table')"\
&& R -e "install.packages('devtools')"\
&& R -e "install.packages('doParallel')"\
&& R -e "install.packages('dplyr')"\
&& R -e "install.packages('edgeR')"\
&& R -e "install.packages('foreach')"\
&& R -e "install.packages('githubr')"\
&& R -e "install.packages('ggplot2')"\
&& R -e "install.packages('knitr')"\
&& R -e "install.packages('lme4')"\
&& R -e "install.packages('limma')"\
&& R -e "install.packages('plyr')"\
&& R -e "install.packages('psych')"\
&& R -e "install.packages('statmod')"\
&& R -e "install.packages('stringr')"\
&& R -e "install.packages('synapser', repos = c('http://ran.synapse.org', 'http://cran.fhcrc.org'))"\
&& R -e "install.packages('tidyr')"
