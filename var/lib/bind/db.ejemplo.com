$TTL	604800
$ORIGIN ejemplo.com.
ejemplo.com.	IN	SOA	PC11	admin (
	2		; Serial
	604800		; Refresh
	86400		; Retry
	2419200		; Expire
	604800 )	; Negative Cache TTL
; Servidores de nombre
@	IN	NS	PC11.ejemplo.com.
	IN	NS	PC12.ejemplo.com.

; Estaciones de trabajo de la red 192.168.25.0/24
$INCLUDE /var/lib/bind/db.ejemplorrhh.com
$INCLUDE /var/lib/bind/db.ejemploadmin.com

; Estaciones de trabajo de la red 192.168.101.0/24
;PC1	IN	A	192.168.25.1
;PC2	IN	A	192.168.25.2
;PC3	IN	A	192.168.25.3
;PC4	IN	A	192.168.25.4
;PC5	IN	A	192.168.25.5
;PC6	IN	A	192.168.25.6
;PC7	IN	A	192.168.25.7
;PC8	IN	A	192.168.25.8
;PC9	IN	A	192.168.25.9

router	IN	CNAME	PC10

; Servidor DHCP + Router. Debian1-Pruebas
PC10	IN	A	192.168.25.10
	IN	A	192.168.26.10

; Servidores DNS
PC11	IN	A	192.168.25.11
;dns1	IN	CNAME	PC11
PC12	IN	A	192.168.25.12
;dns2	IN	CNAME	PC12

; Servidores de correo
	IN	MX	10	smtp.ejemplo.com.
	IN	MX	20	smtp2.ejemplo.com.

; Servidores de la red 192.168.26.0/24
PC14.ejemplo.com.	IN	A	192.168.26.1
PC15	IN	A	192.168.26.2

;www	IN	CNAME	PC14
; ftp	IN	CNAME	PC14

PC15	IN	A	192.168.26.2
smtp	IN	CNAME	PC15
;pop	IN	CNAME	PC15

PC16	IN	A	192.168.26.3
smtp2	IN	CNAME	PC16
