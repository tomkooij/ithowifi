// MongooseWebServerAdapter.h
#pragma once

#include <mongoose.h>
#include "IWebServerHandler.h"

class MongooseWebServerAdapter : public IWebServerHandler
{
private:
    struct mg_connection *_connection;

public:
    MongooseWebServerAdapter(struct mg_connection *connection)
        : _connection(connection) {}

    void send(int code, const char *contentType, const String &content) override
    {
        // Construct HTTP response header
        mg_printf(_connection,
                  "HTTP/1.1 %d OK\r\n"
                  "Content-Type: %s\r\n"
                  "Content-Length: %d\r\n"
                  "\r\n",
                  code, contentType, content.length());

        // Send the content
        mg_send(_connection, content.c_str(), content.length());
    }
};

