# shanguo npm registry server
This package consists of.
- package.json
- README.md
- config files for sinopia and loadbalancer.js

## install
``` bash
    $ git clone https://github.com/sonkwo/shanguo-npmregistryserver.git
    $ cd shanguo-npmregistryserver
    $ npm install -g
```

## how to use
This is currently a pure command line tool kit. Study the document of [forever][forever], [sinopia][sinopia] and [loadbalancer][loadbalancer]  before the next step.

Operations below suppose you are in the shanguo-npmregistryserver folder:

Start sinopia:
``` bash
    $ forever start sinopia -c ./config/sinopia_0.yaml
    $ forever start sinopia -c ./config/sinopia_1.yaml
    $ forever start sinopia -c ./config/sinopia_2.yaml
    $ forever start sinopia -c ./config/sinopia_3.yaml
```


Start loadbalancer:
``` bash
    $ loadbalancer start --config ./config/loadbalancer.json
```



[forever]: https://github.com/foreverjs/forever
[sinopia]: https://github.com/rlidwka/sinopia
[loadbalancer]: https://github.com/SocketCluster/loadbalancer "loadbalancer.js"
