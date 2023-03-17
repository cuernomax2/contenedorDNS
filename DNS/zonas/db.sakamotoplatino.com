$TTL    3600
@       IN      SOA     ns.sakamotoplatino.com. mgonzalezulla.danielcastelao.org. (
                   2007010401           ; Serial
                         3600           ; Refresh [1h]
                          600           ; Retry   [10m]
                        86400           ; Expire  [1d]
                          600 )         ; Negative Cache TTL [1h]
;
@       IN      NS      ns.sakamotoplatino.com.
@       IN      MX      10.0.4.2

sid     IN      A       10.0.4.254
etch    IN      A       10.0.4.2

pop     IN      CNAME   sid
www     IN      CNAME   sid
mail    IN      CNAME   sid
