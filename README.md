# Image URL Analyzer
The Image URL Analyzer is a Ruby on Rails application that provides a REST API to determine if a given URL is an image URL.

<h3>Overview</h3>
This application offers a simple API endpoint that analyzes a provided URL to determine if it points to an image. It supports MIME type checks and file extension verification to identify image URLs.

<h3>API Endpoint</h3>
The main endpoint of the application is:

**```
GET /answers/:image_url
```**
