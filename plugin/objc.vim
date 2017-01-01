" =============================================================================
" File:         objc.vim
" Description:  Functions for supporting Objective-C
" Author:       esc.chao@gmail.com
" License:      Apache 2.0
" =============================================================================

" default YCM configure for iOS
let g:vProjectObjcYCMConfForIOS = '~/.ios_ycmd_conf.py'
let g:vProjectObjcYCMConfForMac = '~/.mac_ycmd_conf.py'

"""
" Set global YCM configuration for iOS complier
"""
function! vProject#Objc#SetYCMConfForIOS()
    let g:ycm_global_ycm_extra_conf = g:vProjectObjcYCMConfForIOS
endfunction

"""
" Set global YCM configuration for MAC complier
"""
function! vProject#Objc#SetYCMConfForMac()
    let g:ycm_global_ycm_extra_conf = g:vProjectObjcYCMConfForMac
endfunction

"""
" Switch between ObjC header and implementation files
" Only work when header and its implementationf files are in the same folder
"""
function! vProject#Objc#SwitchHeaderImpl()
    let s:fileName = expand('%:p:r')
    let s:extension = expand('%:e')
endfunction
