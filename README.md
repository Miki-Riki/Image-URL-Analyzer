# Image URL Analyzer

The Image URL Analyzer is a Ruby on Rails application that provides a REST API to determine if a given URL is an image URL.

## Overview

This application offers a simple API endpoint that analyzes a provided URL to determine if it points to an image. It supports MIME type checks and file extension verification to identify image URLs.

## API Endpoint

The main endpoint of the application is:

```
GET /answers/:image_url
```

- `:image_url` is a dynamic segment representing the URL of the suspected image.

### Response Logic

- If the URL is identified as an image, the response will be:
  ```json
  {"message": "This is an image"}
  ```

- If the URL is not identified as an image, the response will be:
  ```json
  {"message": "This is not an image"}
  ```

### Error Handling

- If the `image_url` parameter is missing or in an incorrect format, the API will return a `400 Bad Request` status with a descriptive error message.

## API Documentation

The API documentation is accessible via:

```
/api/docs
```

This documentation includes an overview of the API's functionality, example usage with `curl`, and information about possible responses and error codes.

## Implementation Details

- **Image Detection**: Image URLs are identified by checking their file extensions (e.g., `.jpg`, `.png`, `.gif`).

- **Routes**: Routes are defined in `config/routes.rb`.

- **Controller**: The logic is implemented in a new controller (e.g., `AnswersController`).

- **Views**: For the `/api/docs` endpoint, there is a simple HTML page describing the API usage. The design uses the background colors `#00565F` and `#FFFFFF`, with text color `#131313` for better readability.

## Getting Started

To run the application locally, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Install dependencies by running `bundle install`.
4. Start the Rails server with `rails server`.
5. Access the API at `http://localhost:3000`.

## DEMO
Basic example of **`GET REQUEST`** using **POSTMAN**.

https://github.com/Miki-Riki/ImageURLAnalyzer/assets/121170810/96cc43c4-2736-4a77-9403-ea083346bb19



