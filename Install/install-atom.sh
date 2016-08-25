#
# Install Atom packages ---------------------------------------------------------
#
atomPackages=(
    # UI
    atom-material-syntax
    firewatch-syntax
    atom-material-ui

    file-icons
    flex-tool-bar
    highlight-line
    minimap
    pigments
    tool-bar


    # Editor
    color-picker
    editorconfig       # EditorConfig support
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


    # Added language support
    angularjs           # AngularJs
    atom-typescript     # TypeScript
    language-html-swig  # Swig
    language-nunjucks   # Nunjucks
    tabular             # CSV, TSV
    emmet               # Emmet


    # Linting
    linter
    linter-eslint       # Javascript
    linter-php          # PHP
    linter-scss-lint    # Sass
    linter-tidy         # HTML
    linter-tslint       # Typescript
)

echo "Install Atom Packages..."
apm install ${atomPackages[@]}
