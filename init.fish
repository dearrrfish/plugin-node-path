begin
    set -l load ''

    if set -q NVM_DIR; and test -e $NVM_DIR/.node_path.load
        cat $NVM_DIR/.node_path.load | read load

    # fisherman support
    else if set -q fisher_config; and test -e $fisher_config/.node_path.load
        cat $fisher_config | read load

    else if test -e $HOME/.node_path.load
        cat $HOME/.node_path.load | read load

    end

    if test -n "$load"
        set -gx PATH $load $PATH
    end
end
