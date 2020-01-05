# vim-neovim配置说明

## 环境

Ubuntu18.04

## 版本要求

NVIM v0.3.8

## 快捷键

| 快捷键 |         作用         |
| :----: | :------------------: |
|  F1    |         帮助         |
|  F2    |         make         |
|  F3    |       make run       |
|  F4    |      make clean      |
|  F5    |     编译单个文件     |
|  F6    |     运行单个文件     |
|  F7    |  打开或关闭NERDTree  |
|  F8    |   打开或关闭tagbar   |
|  F9    | 代码格式化autoformat |

## 插件

|                    名称                     |               作用               |
| :-----------------------------------------: | :------------------------------: |
|                  vim-plug                   |             插件管理             |
|             DoxygenToolkit.vim              |           注释自动生成           |
|                   vim-go                    |            Go语言支持            |
|                YouCompleteMe                |           语句补全插件           |
|           ultisnips和vim-snippets           |             代码片段             |
<<<<<<< HEAD
|             vim-instant-markdown            |           markdown预览           |
=======
| markdown-preview.nvim和plasticboy/vim-markdown |           markdown预览和语法显示           |
>>>>>>> 90b6f94f5a1bf4dbba8227d5d1b0c5f1899a579e
|                 vim-endwise                 |           if/endif补全           |
|       vim-airline和vim-airline-themes       |              状态栏              |
|                 indentline                  |            对齐可视化            |
|          auto-pairs和vim-surround           |           括号自动补全           |
|                   rainbow                   |             彩虹括号             |
|                nerdcommenter                |             注释插件             |
|             tabular和indentline             |               对齐               |
|               vim-autoformat                |       代码自动 format 插件       |
|                  nerdtree                   |           文件浏览插件           |
|             nerdtree-git-plugin             | NERDTree插件，显示git status标志 |
|                     ale                     |           代码检查工具           |
|             vim-highlightedyank             |         高亮显示复制区域         |
|                  vim-mkdir                  |      在nerdtree中修改文件名      |
|                   tagbar                    |           变量函数查看           |
|                  vim-move                   |           代码上下移动           |
|                vim-startify                 |             欢迎界面             |
|                 vim-hybrid                  |        主题（不止这一个）        |
|                vim-devicons                 |    nerdtree和其他插件提供图标    |
|                   echodoc                   |  补全函数时在命令栏显示函数签名  |
|              vim-cmake-syntax               |           cmake语法高亮　　　　　|
|            vim-cmake-completion             |           cmake语法补全          |

## 特殊说明

1. vim-plug：需要手动安装，其他插件在vim（neovim）中执行PlugInsatll就可以

2. vim-devicons：为nerdtree和其他插件提供图标，终端字体必须设置为Droid Sans Mono Nerd Font
<<<<<<< HEAD
+ 在https://github.com/ryanoasis/nerd-fonts/releases下载字体并用Font Manager安装
+ Dconf Editor修改终端字体为Droid Sans Mono Nerd Font


3. YouCompleteMe：需要自己编译，可能需要安装一些库，请自己查看YouCompleteMe的README文件

4. auto-format：需要相应语言的格式化工具，对于Debian系在终端执行下面命令即可完成安装

```sh
sudo aptitude install astyle clang-format python-pep8 python3-pep8 python-autopep8 yapf
```
5. vim-cmake-completion：补全时需要ctrl+x、ctrl+o呼出补全菜单

6. vim-go：因为墙的问题可能无法下载包，解决方法，比如golint需要在github下载后放到$GOPATH/src/golang.org/x/lint目录下再执行GoInstallBinaries

7. vim-instant-markdown需要安装nodejs,命令如下：sudo apt-get install -y nodejs && sudo npm install npm -g && sudo npm -g install instant-markdown-d
=======
	+ 在https://github.com/ryanoasis/nerd-fonts/releases下载字体并用Font Manager安装
	+ Dconf Editor修改终端字体为Droid Sans Mono Nerd Font


3. YouCompleteMe：需要自己编译，可能需要安装一些库，请自己查看YouCompleteMe的README文件

4. auto-format：需要相应语言的格式化工具，对于Debian系在终端执行下面命令即可完成安装

```sh
sudo aptitude install astyle clang-format python-pep8 python3-pep8 python-autopep8 yapf
```
5. vim-cmake-completion：补全时需要ctrl+x、ctrl+o呼出补全菜单

6. vim-go：因为墙的问题可能无法下载包，解决方法，比如golint需要在github下载后放到$GOPATH/src/golang.org/x/lint目录下再执行GoInstallBinaries
>>>>>>> 90b6f94f5a1bf4dbba8227d5d1b0c5f1899a579e
