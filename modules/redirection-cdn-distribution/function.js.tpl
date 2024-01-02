function handler(event) {
  // Extracting the request and headers from the event object
  const request = event.request;

  // Removing 'www.' from the host header to get the new host name
  const new_host = "${new_host}";

  // Creating a 302 redirect response
  const response = {
    statusCode: 302,
    statusDescription: 'Found',
    headers: {
      "location": {
        value: "https://" + new_host + request.uri
      }
    }
  };

  // Returning the redirect response
  return response;
}
