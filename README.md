Mashpotat.io website and automation.

# Production Setup
Install Docker Mongo container and run
`docker pull mongo && docker run -d -p 27017:27017 -v data:/data/db mongo`

# Production Deploy
Run the app
`rake`

# RunBook
If you have any "production issues" try reading the logs.  They're in the usual place I think...
