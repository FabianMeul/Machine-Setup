#
# Install Atom packages ---------------------------------------------------------
#
atomPackages=(
    # UI
    atom-material-syntax
    atom-material-ui

    file-icons
    flex-tool-bar
    highlight-line
    minimap
    pigments
    tool-bar


    # Editor
    color-picker
    editorconfig
    emmet
    project-manager
    remote-edit
    sync-settings

    # Git
    git-blame
    git-plus

    # Text tools
    atom-alignment
    atom-beautify
    change-case
    less-than-slash
    sort-lines
    tabs-to-spaces
    text-pastry
    trailing-spaces


    # Linting
    linter
    linter-eslint
    linter-scss-lint
)

echo "Install Atom Packages..."
apm install ${atomPackages[@]}
