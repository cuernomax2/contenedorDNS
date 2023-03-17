## Readme.md con la descripción de las opciones del docker-compose.yml

```  
version: "3.3"
services: #Nombre e imagen utilizadas en el contenedor
  bind9:
    container_name: asir_bind9
    image: internetsystemsconsortium/bind9:9.18
    networks: #Network creada para el DNS bind9
      bind9_subnet:
        ipv4_address: 10.0.4.254
    volumes:
    	- /home/asir2a/Documentos/SRI/DNS/config:/etc/bind
    	- /home/asir2a/Documentos/SRI/DNS/zonas:/var/lib/bind
  cliente_asir: #Cliente Alpine para comprobar que funciona todo
    container_name: cliente_asir
    image: alpine
    networks:
      - bind9_subnet
    stdin_open: true
    tty: true
    dns:
      - 10.1.0.254 # IP del DNS utilizado
networks:
  bind9_subnet:
    external: true
```
