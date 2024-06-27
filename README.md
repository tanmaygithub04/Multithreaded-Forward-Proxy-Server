
##Description :

	This HTTP proxy server made in C++ language. It supports only HTTP protocol get method requests .
	In  simple words proxy server acts as middleware between you and the server u request. 
	It hides the client  from the server as server can only track details of proxy server. 
	We can also filter the browser requests by allowing only those requests  to secure websites. 

##College - proxy :

    Yes, this codes works also with any college - proxy (I tested it on my college proxy) 
    . Just u need to comment line no 240 and uncomment   lines  244 to 247.In this case,we are making a 
    proxy server which connects to another proxy server present in our college network and sends the 
    request to that proxy server and receives data back  from that server.basically it means there 
    are 2 proxy servers running in middle between client and server. 

##How to Run :

	clone this project and go to the folder and run "make" through terminal and provide a port 
	number too.

	$make
	$./proxy 6789

	BAAAM ..!! your proxy server starts running on ur local machine port 6789 . 
	(U can have a port of max number around 65k other than first 1000 system registered ports )

##How to test :

	In the browser , go to Preferences -> Advanced -> Network -> Settings -> 
	Manual Proxy Configuration.
	Now, Enter 127.0.0.1 in HTTP proxy field and 6789  in port number field. and press ok .

	(enter the same port number that used in the command line  )

	We can also run through telnet command.

	EX :
	$ telnet 127.0.0.1 6789
	$ GET http://www.google.com:80/index.html/ HTTP/1.0\r\nContent-Length:
  		 80\r\nIf-Modified-Since: Sat, 29 Oct 1994 19:43:31 GMT\r\n\r\n

##How I  Made :

	First i created a socket which listens to http requests and used fork for handling 
	multiple requests at a time . Then after recieving request from the client socket , 
	I used functions present in proxy_parse.h for parsing these requests . Then i created another
	socket to the host present in that request, and i send parsed  request to that host.
	Once i recieve data from the server socket , i am passing this data back to the client socket 
	then the browser shows us the page we want.

	We will not have more than 100 requests. Error-checking is done at every step . Errors
	will be displayed in terminal.


