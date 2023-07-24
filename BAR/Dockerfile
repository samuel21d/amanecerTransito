FROM ibmcom/ace-server:latest

# Acepta los términos y condiciones de la licencia
ENV LICENSE=accept

USER root

COPY BAR /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser

USER 1000

RUN ace_compile_bars.sh

USER root

RUN  chmod -R ugo+rwx /home/aceuser

USER 1000