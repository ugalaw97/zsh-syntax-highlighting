# -------------------------------------------------------------------------------------------------
# Copyright (c) 2015 zsh-syntax-highlighting contributors
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are permitted
# provided that the following conditions are met:
#
#  * Redistributions of source code must retain the above copyright notice, this list of conditions
#    and the following disclaimer.
#  * Redistributions in binary form must reproduce the above copyright notice, this list of
#    conditions and the following disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of the zsh-syntax-highlighting contributors nor the names of its contributors
#    may be used to endorse or promote products derived from this software without specific prior
#    written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
# FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
# OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# -------------------------------------------------------------------------------------------------
# -*- mode: zsh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
# vim: ft=zsh sw=2 ts=2 et
# -------------------------------------------------------------------------------------------------

ZSH_HIGHLIGHT_STYLES[alias]=$unused_highlight
BUFFER='while if echo Hello; then ls /; fi; do stat "x"; done'

expected_region_highlight+=(
  "1 5 $ZSH_HIGHLIGHT_STYLES[reserved-word]" # while
  "7 8 $ZSH_HIGHLIGHT_STYLES[reserved-word]" # if
  "10 13 $ZSH_HIGHLIGHT_STYLES[builtin]" # echo
  "15 19 $ZSH_HIGHLIGHT_STYLES[default]" # Hello
  "22 25 $ZSH_HIGHLIGHT_STYLES[reserved-word]" # then
  "27 28 $ZSH_HIGHLIGHT_STYLES[command]" # ls
  "30 30 $ZSH_HIGHLIGHT_STYLES[path]" # /
  "33 34 $ZSH_HIGHLIGHT_STYLES[reserved-word]" # fi
  "37 38 $ZSH_HIGHLIGHT_STYLES[reserved-word]" # do
  "40 43 $ZSH_HIGHLIGHT_STYLES[command]" # stat
  "45 47 $ZSH_HIGHLIGHT_STYLES[double-quoted-argument]" # "x"
  "50 53 $ZSH_HIGHLIGHT_STYLES[reserved-word]" # done
)
