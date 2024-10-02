
##Description :

	This HTTP proxy server made in C++ language. It supports only HTTP protocol get method requests .
	In  simple words proxy server acts as middleware between you and the server you request. 
	It hides the client from the server as server can only track details of proxy server. 
	We can also filter the browser requests by allowing only those requests  to secure websites. 

##How to Run :

	clone this project and go to the folder and run "make" through terminal and provide a port 
	number too.

	$make
	$./proxy 6789


##How I  Made :

	First i created a socket which listens to http requests and used fork for handling 
	multiple requests at a time . Then after recieving request from the client socket , 
	I used functions present in proxy_parse.h for parsing these requests . Then i created another
	socket to the host present in that request, and i send parsed  request to that host.
	Once i recieve data from the server socket , i am passing this data back to the client socket 
	then the browser shows us the page we want.

	We will not have more than 100 requests. Error-checking is done at every step . Errors
	will be displayed in terminal.


