FROM node:8-alpine
RUN npm config -g set strict-ssl false
RUN npm install -g --unsafe-perm https://10.181.168.56/packages/apiconnect
ENV HOST 0.0.0.0
ENV PORT 9090
ENV SKIP_LOGIN true
EXPOSE 9090
WORKDIR /apis
CMD ["apic", "edit", "--accept-license", "--disable-analytics"]
