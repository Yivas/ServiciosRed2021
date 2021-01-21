; Estaciones de trabajo del dpto Administracion
PC3.recepcion	3600	IN	A	192.168.25.3
PC4.recepcion.ejemplo.com.	3600	IN	A	192.168.25.4

$ORIGIN contabilidad.ejemplo.com.
PC5	3600	IN	A	192.168.25.5
PC6	1h	IN	A	192.168.25.6

$ORIGIN secretaria.ejemplo.com.
PC7	1h	IN	A	192.168.25.7
PC8	1h	IN	A	192.168.25.8
PC9	1h	IN	A	192.168.25.9
