# Kittens

This is the project from [The Odin Project](https://www.theodinproject.com/) curriculum — a simple kitten management application built with **Ruby on Rails**, focusing on building and consuming APIs, JSON responses, HTTP requests, and content negotiation.

## Features

- Manage kittens with RESTful CRUD actions
- Return kitten data as HTML or JSON
- Request JSON responses using the `Accept` header
- Consume API endpoints using HTTParty
- Handle HTTP response status codes

## Skills Learned

### Ruby on Rails

- RESTful API endpoints with `resources`
- `respond_to` for handling multiple response formats
- Rendering JSON with `render json:`
- Understanding the `Accept` HTTP header
- Content negotiation between client and server
- Using `before_action` for shared controller logic
- Strong Parameters
- CRUD operations and model associations

### API

- Making HTTP requests with **HTTParty**
- Sending requests with custom HTTP headers
- Requesting JSON with `Accept: application/json`
- Parsing JSON responses with `parsed_response`
- Understanding the difference between HTML and JSON responses

## API Example

A request to:

```http
GET /kittens/1
Accept: application/json
```

returns:

```json
{
  "id": 1,
  "name": "Mochi",
  "age": 2,
  "cuteness": "Very cute",
  "softness": "Very soft"
}
```

The same endpoint can return HTML when requested by a normal browser.

## Challenges

- Understanding how Rails determines which response format to return
- Handling JSON requests with `respond_to`
- Understanding why `Accept: application/json` can result in a `406 Not Acceptable`
- Using HTTParty to consume the application's own API endpoints
- Understanding the difference between `response.body` and `response.parsed_response`
- Understanding RESTful resource naming and endpoints
