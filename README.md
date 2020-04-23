# README

This repository contains `rebar3` templates according to the Erlang LS
Coding Standards.

To install the templates:

    git clone https://github.com/erlang-ls/rebar3_templates.git
    cd rebar3_templates
    mkdir -p ~/.config/rebar3/templates
    cp *.{erl,template} ~/.config/rebar3/templates # Symlinking does not seem to work

To get the list of available templates:

    rebar3 new

To see the available variables and respective default values:

    rebar3 new help TEMPLATE

To create a new instance of the template:

    rebar3 mew els_gen_server NAME

For more information about `rebar3` templates:

https://www.rebar3.org/docs/using-templates

Fixes and contributions are welcome.
