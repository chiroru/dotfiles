@echo off
echo [dotfiles] ----- START -----

IF NOT EXIST %USERPROFILE%\_vimrc (
mklink %USERPROFILE%\_vimrc %USERPROFILE%\dotfiles\vimrc
) ELSE (
echo skip make link _vimrc
)

IF NOT EXIST %USERPROFILE%\_gvimrc (
mklink %USERPROFILE%\_gvimrc %USERPROFILE%\dotfiles\vimrc
) ELSE (
echo skip make link _gvimrc
)

IF NOT EXIST %USERPROFILE%\.vim (
    mklink /D %USERPROFILE%\.vim %USERPROFILE%\dotfiles\vimfiles
) ELSE (
echo skip make link .vm
)

IF NOT EXIST %USERPROFILE%\dotfiles\vimfiles\vundle.git (
cd %USERPROFILE%\dotfiles
git submodule add http://github.com/gmarik/vundle.git ./vimfiles/vundle.git
) ELSE (
echo skip clone vundle
)
echo [dotfiles] ------ END ------
