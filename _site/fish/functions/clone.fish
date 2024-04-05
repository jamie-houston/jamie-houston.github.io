function clone --description 'Clone repo, create user/team folder if not in it'
    # Example git@github.com:foo/bar.git
    # If done in /foo, will just clone into bar
    # If done elsewhere, will create /foo and clone into /foo/bar

    set repo_parts (string split "/" $argv)
    set repo_name $repo_parts[-1]
    set parent_folder_name $repo_parts[-2]

    set repo_url $argv

    # if cloning from git@... split the folder out of the path
    if string match -q "git*" $parent_folder_name
        set parent_folder_name (string split ":" $parent_folder_name)[-1]
        set repo_name (string split . $repo_parts[-1])[1]
    else
        set repo_url (string join '' git@ $repo_parts[-3] : $repo_parts[-2] / $repo_parts[-1] .git)
    end

    if not test $parent_folder_name = (basename $PWD)
        printf "Creating $parent_folder_name\n"
        mkcd $parent_folder_name
    end

    command git clone $repo_url
    cd $repo_name
end
