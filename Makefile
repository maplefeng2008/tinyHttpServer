all: fhttpd login.cgi
LIBS = -lpthread

fhttpd: HttpServer.c
	gcc $< $(LIBS) -o $@

login.cgi: HttpCGI.c
	gcc $< -o $@
