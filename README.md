# Shanguo npm registry server
This package consists of.
- README.md
- package.json
- config files for sinopia and loadbalancer.js

## Install


## How to use


### Download and init the project:
``` bash
    $ git clone https://github.com/sonkwo/shanguo-npmregistryserver.git
    $ cd shanguo-npmregistryserver
    $ npm install
```

### Start the servers:
``` bash
    $ ./start-server.sh
```

### Check the servers:
Now you can check the porcess with `bin/forever list` or `bin/loadbalancer list`.
They both work because loadbalancer uses forever internally.

### Stop the servers:
``` bash
    $ ./stop-server.sh
```

**N.B.** use `sudo bin/forever <arguments>` or `sudo bin/loadbalancer <arguments>` to peek and control the loadbalancer process, because this process is using port 80, a root privilege is needed.

## Customization
- This is currently a pure command line tool kit. Study the document of [forever][forever], [sinopia][sinopia] and [loadbalancer][loadbalancer] is required.
- Check out *start-server.sh* and *stop-server.sh* file, you can find out what happened inside.
- Install related npm packages globally:
``` bash
    $ npm install -g forever sinopia loadbalancer
```
Then you are free to use these commands globally and freely.




[forever]: https://github.com/foreverjs/forever
[sinopia]: https://github.com/rlidwka/sinopia
[loadbalancer]: https://github.com/SocketCluster/loadbalancer "loadbalancer.js"
