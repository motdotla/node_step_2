express = require("express")
app = express.createServer()
app.configure ->
  app.set 'views', __dirname + "/views"
  app.use express.bodyParser()
  app.use express.static(__dirname + "/public")

app.get '/', (req, res) -> 
  res.render 'index.jade'

app.listen 3000, -> console.log "#server is starting on port: 3000"