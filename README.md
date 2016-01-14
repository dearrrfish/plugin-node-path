# node-path

Simple [fisherman](http://fisherman.sh) plugin to add `node` path to `$PATH`.



## Install

``` 
$ fisher install dearrrfish/plugin-node-path
```



## Usage

``` 
# make sure current node version is what you want to load by default
$ which node
/Users/dearrrfish/.nvm/versions/node/v0.12.7/bin/node

# create .load file
$ node_path
Saved to `/Users/dearrrfish/.nvm/.node_path.load`

# reload shell and see
$ which node
```

- Preferred place to save:  `$NVM` > `$fisher_config` > `$HOME`



## License

MIT