def wsgi_application(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    resp = environ['QUERY_STRING'].split("&")
    resp = environ['QUERY_STRING'].split("&")
    resp = [item+"\r\n" for item in resp]
    return [resp]
