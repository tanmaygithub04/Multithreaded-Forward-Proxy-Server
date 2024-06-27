CC=g++
CFLAGS= -g -Wall 

all: proxy

proxy: proxy.cpp
	$(CC) $(CFLAGS) -o proxy_parse.o -c proxy_parse.c 
	$(CC) $(CFLAGS) -o proxy.o -c proxy.cpp
	$(CC) $(CFLAGS) -o proxy proxy_parse.o proxy.o 
	

clean:
	rm -f proxy *.o

tar:
	tar -cvzf ass1.tgz proxy README Makefile proxy_parse.c proxy_parse.h



# CC=g++
# CFLAGS= -g -Wall -Werror

# all: proxy

# proxy: proxy.cpp proxy_parse.o
# 	$(CC) $(CFLAGS) -o proxy proxy.o proxy_parse.o

# proxy_parse.o: proxy_parse.c proxy_parse.h
# 	$(CC) $(CFLAGS) -o proxy_parse.o -c proxy_parse.c 

# clean:
# 	rm -f proxy *.o

# tar:
# 	tar -cvzf ass1.tgz proxy README Makefile proxy_parse.c proxy_parse.h
