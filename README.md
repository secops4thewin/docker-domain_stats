# docker-domain_stats
This github repo holds a Dockerfile to automatically build Mark Baggets Domain Stats python server.  https://github.com/MarkBaggett/domain_stats/tree/master/domain_stats


## Steps to Install
1. git clone https://github.com/secops4thewin/docker-domain_stats.git
2. cd docker-domain_stats
3. docker build -t domain_stats .
4. docker run --rm -it -v $PWD/domain_stats:/opt/domain_stats -p 9000:8000 domain_stats 
