function node_path -d "Generate .load file of node path."
    which node | sed -e 's/\/node$//' | read -l __path
    if test -z "$__path"
        echo "You need to install node."
        return 1
    end

    set -l __dir
    if set -q NVM_DIR
        set __dir $NVM_DIR
    else if set -q fisher_config
        set __dir $fisher_config
    else
        set __dir $HOME
    end
    echo "$__path" > $__dir/.node_path.load
    echo "Saved to `$__dir/.node_path.load`."

end
