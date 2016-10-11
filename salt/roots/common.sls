common_tools_installed:
  pkg.installed:
    - refresh: True
    - pkgs:
      - build-essential
      - man
      - git
      - apache2

install_heroku_toolbelt:
  cmd.run:
    - name: wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
