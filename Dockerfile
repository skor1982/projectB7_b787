FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y wget


#FROM scratch

#let's copy shared libs for wget & sh and executables themselves
#COPY --from=base_image /lib/x86_64-linux-gnu/libpcre2-8.so.0 /lib/x86_64-linux-gnu/ 
#COPY --from=base_image /lib/x86_64-linux-gnu/libuuid.so.1 /lib/x86_64-linux-gnu/
#COPY --from=base_image /lib/x86_64-linux-gnu/libidn2.so.0 /lib/x86_64-linux-gnu/
#COPY --from=base_image /lib/x86_64-linux-gnu/libssl.so.1.1 /lib/x86_64-linux-gnu/
#COPY --from=base_image /lib/x86_64-linux-gnu/libcrypto.so.1.1 /lib/x86_64-linux-gnu/   
#COPY --from=base_image /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/
#COPY --from=base_image /lib/x86_64-linux-gnu/libpsl.so.5 /lib/x86_64-linux-gnu/
#COPY --from=base_image /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/
#COPY --from=base_image /lib/x86_64-linux-gnu/libpthread.so.0 /lib/x86_64-linux-gnu/    
#COPY --from=base_image /lib64/ld-linux-x86-64.so.2 /lib64/
#COPY --from=base_image /lib/x86_64-linux-gnu/libunistring.so.2 /lib/x86_64-linux-gnu/      
#COPY --from=base_image /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/
#COPY --from=base_image  /usr/bin/wget /usr/bin/sh /bin/

ENV site_name="www.google.com"
WORKDIR /tmp/test
#ADD get_favicon.sh /tmp/test/
#RUN chmod +x get_favicon.sh
VOLUME ["/tmp/test"]
CMD [ "sh", "-c", "wget $site_name/favicon.ico" ]
#CMD [ "sh", "-c", "./get_favicon.sh" ]
#CMD [ "/bin/wget", "${1}/favicon.ico" ]
