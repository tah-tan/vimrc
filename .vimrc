
if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
end

call neobundle#rc(expand('~/.vim/bundle/'))

" runtimepathには追加しないけどneobundle.vimで更新を行えるようにする
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
			\ 'build' : {
			\	'windows' : 'make -f make_mingw32.mak',
			\	'mac' : 'make -f make_mac.mak',
			\	'unix' : 'make -f make_unix.mak',
			\	},
			\ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'

NeoBundle 'tpope/vim-markdown'		" for markdown syntax highlight

filetype plugin indent on

NeoBundleCheck

set number		" 行番号の表示
set nobackup		" バックアップを取らない
set noswapfile		" swapファイルを作らない
set guioptions=-T	" GUIのツールバーを消す
set guioptions=-m	" GUIのメニューバーを消す
set backspace=indent,eol,start		" BSでインデントや改行を削除できるようにする
set tabstop=4		" 4タブ
set shiftwidth=4	" vimが挿入するインデントやシフトオペレータで挿入・削除されるインデント幅
set noexpandtab		" tabをtabとして扱い、スペースに展開しない
set softtabstop=0	" tabを押し下げた時のスペースの量
set whichwrap=b,s,h,l,<,>,[,]	"カーソルを行頭、行末で止まらないようにする
set mouse=a			" ターミナルでマウスを使えるようにする
set showmatch		" カッコの対応付けを見えるようにする
set laststatus=2	" 常にステータスラインを表示
set ruler			" カーソルが何行目の何列に置かれているかを表示する
set cursorline

" vimfilerの設定
let g:vimfiler_safe_mode_by_default=0		" vimfilerからファイルの新規作成も出来るようにする

