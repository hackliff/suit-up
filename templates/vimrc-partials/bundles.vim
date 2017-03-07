"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Bundles:
"   load plugins with vim-plug
"
" Provisioning:
"   {{ ansible_managed }}
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

  " Essential plugins
{% for plugin in vim_plugins %}
  Plug {{ plugin }}
{% endfor %}

  " development focused plugins
{% for plugin in vim_plugins_dev %}
  Plug {{ plugin }}
{% endfor %}

" Add plugins to &runtimepath
call plug#end()
