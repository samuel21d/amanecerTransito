FROM ibmcom/ace-server:latest

USER root

COPY BAR /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser

RUN mkdir -p /ruta/en/contenedor

USER 1000

RUN ace_compile_bars.sh

USER root

RUN  chmod -R ugo+rwx /home/aceuser

USER 1000