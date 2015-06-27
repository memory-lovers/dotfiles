" vundle
let $VIMBUNDLE = '~/.vim/bundle'
let $VUNDLEPATH = $VIMBUNDLE . '/vundle'
let $MYVIMRC = '~/.vimrc'
if stridx(&runtimepath, $VUNDLEPATH) != -1
" If the NeoBundle doesn't exist.
command! BundleInstall try | call s:vundle_init()
            \| catch /^bundleinstall:/
                \|   echohl ErrorMsg
                \|   echomsg v:exception
                \|   echohl None
                \| endtry

function! s:vundle_init()
    redraw | echo "Installing Vundle..."
    if !isdirectory($VIMBUNDLE)
        call mkdir($VIMBUNDLE, 'p')
        echo printf("Creating '%s'.", $VIMBUNDLE)
    endif
    cd $VIMBUNDLE

    if executable('git')
        call system('git clone https://github.com/gmarik/Vundle.vim.git')
        if v:shell_error
            throw 'vundleinit: Git error.'
        endif
    endif

    set runtimepath& runtimepath+=$VUNDLEPATH
    call neobundle#rc($VIMBUNDLE)
    try
        echo printf("Reloading '%s'", $MYVIMRC)
        source $MYVIMRC
    catch
        echohl ErrorMsg
        echomsg 'vundleinit: $MYVIMRC: could not source.'
        echohl None
        return 0
    finally
        echomsg 'Installed Vundle.vim'
    endtry

    echomsg 'Finish!'
endfunction

autocmd! VimEnter * redraw
            \ | echohl WarningMsg
            \ | echo "You should do ':BundleInstall' at first!"
            \ | echohl None
endif

" Settings
set nocompatible
filetype off
set rtp+=${HOME}/.vim/vundle
call vundle#rc()

"
set rtp+=${HOME}/.vim
runtime! conf.d/*.vim
