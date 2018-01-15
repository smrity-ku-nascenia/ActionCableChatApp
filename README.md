# Action Cable

- It provides both a client-side JavaScript framework, and a server-side Ruby framework.
- Because it integrates so tightly with Rails, we have access to all of our models from within our WebSocket workers, effectively layering Action Cable on top of our existing Rails architecture, including Active Record (or any other ORM).
- Action Cable can be run on a stand-alone server, or we can configure it to run on its own processes within the main application server.
- Action Cable uses the Rack socket hijacking API to take over control of connections from the application server. Action Cable then manages connections internally.


# Tasks Done

- Users can create new accout, log in and log out
- Users can do one to one chat in real time
