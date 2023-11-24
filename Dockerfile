# FROM nginx:latest

# # cria a pasta e deixa você na pasta
# # \ permite pular linha
# WORKDIR /app 
# RUN apt-get update && \
#     apt-get install vim -y

# COPY html/ /usr/share/nginx

# FROM ubuntu:latest

# # Comando fixo
# ENTRYPOINT [ "echo", "Hello " ]

# # nesse caso o CMD entra como um parametro do ENTRYPOINT
# CMD [ "World" ]

# resultado - Hello World

FROM nginx:latest

COPY html /usr/share/nginx/html

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]