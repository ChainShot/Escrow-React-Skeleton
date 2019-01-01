# Hey There!

Great job making it through the Escrow module. We hope you're excited to get building!

## Starting the React Application

At the top level of this project exists the client-side app. To start the application,
open up a terminal and find your way into the app folder. Once you're there run:

`npm install` to install dependencies then `npm start` to run the application.

Or for short `npm i && npm start` :)

Once you've done that, installing metamask will allow you to create escrow contracts on 
your own local node or a public testnet like Rinkeby or Kovan. 

### Modifying The React Application 

The React Application is a customized version of the [Create React App](https://github.com/facebook/create-react-app)
which is a basic React Application using webpack. Any changes to the applications files will
be loaded into the browser immediately, more details can be found in its [User Guide](https://github.com/facebook/create-react-app).

## Truffle and the Escrow Contract

You'll notice at the top level there's a Truffle folder, inside this folder will be 
contracts, migrations and tests. This is typical to a Truffle project, if you're 
unfamiliar with how Truffle sets up its projects check out [The Truffle Documentation](http://truffleframework.com/docs/).

To get started with Truffle make sure to install it using `npm install -g truffle`.

If you open up the `truffle-config.js` you'll see that we've updated the route where the 
contracts are being built. This will automatically write the necessary json file to where the React Application
expects it when you deploy your contracts by navigating to the truffle file path in your terminal
and running `truffle deploy`.

