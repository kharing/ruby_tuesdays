# Introduction to Sinatra
Let's build a simple web application with [Sinatra](http://www.sinatrarb.com)!

## Install Sinatra
In your command line:

```bash
gem install sinatra --no-ri --no-doc
```

## Run the app!
```bash
ruby app.rb
```

Open your browser and navigate to [http://localhost:4567](http://localhost:4567).
You'll see a simple HTML page with a form you can submit. Clicking the submit button will trigger a `POST` request, and you'll see a message that includes whatever you typed into the textbox.

You can also play with the following routes:
- [http://localhost:4567/?name=RubyTuesdays](http://localhost:4567/?name=RubyTuesdays)
- [http://localhost:4567/groups/rubytuesdays](http://localhost:4567/groups/rubytuesdays)
- [http://localhost:4567/groups/avengers](http://localhost:4567/groups/avengers)
- [http://localhost:4567/groups/rubytuesdays/members/raphaela](http://localhost:4567/groups/rubytuesdays/members/raphaela)
- [http://localhost:4567/groups/avengers/ironman](http://localhost:4567/groups/avengers/ironman)

Try changing the group or member names in the route to learn how named parameters work!
