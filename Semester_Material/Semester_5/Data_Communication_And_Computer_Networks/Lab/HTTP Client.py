from socket import *

# Get server host IP address and port number
serverIP = input("\n\nEnter the IP Address of the host : ")
serverPort = int(input("Enter the port to connect to : "))

# Create socket
clientSocket = socket(AF_INET, SOCK_STREAM)

try:
    # Try connecting to the provided host
    clientSocket.connect((serverIP, serverPort))
    print ("\nConnection Successful!")

    # Get the filename
    filename = input("\n\nEnter the relative path of the file to be retrieved : ")

    # Send the HTTP request message
    clientSocket.send(("GET /" + filename + " HTTP/1.1\r\n" +
                      "Host: " + gethostbyname(gethostname()) + ":" + str(clientSocket.getsockname()[1]) + "\r\n\r\n").encode())

    print ("\n\n---------------HTTP RESPONSE---------------\n")

    # Receive one HTTP response header line
    response = clientSocket.recv(1024)
    print (response.decode())

    # Receive the file
    fileData = clientSocket.recv(10000)
    print (fileData.decode())

    print ("---------------END OF HTTP RESPONSE---------------\n")

    # Close the connection
    clientSocket.close()

except error:
    print ("\n\nError while connecting!")
    clientSocket.close()