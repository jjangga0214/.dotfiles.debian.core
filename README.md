# ubuntu.config
ubuntu를 설치한 직후 환경을 구성한다. icons, cursors, themes, programs 들을 설치한다. 

## precaution
* icons, cursor, themes 등 이 프로젝트 내부에 static 한 압축파일로 존재하는 내용물이 최신 버전으로 갱신되었는지 확인한다

## automatic
### 참고 
* <https://www.opendesktop.org/>
* <https://www.gnome-look.org>
* <https://extensions.gnome.org/> : gnome extensions

### install
script 로 아래에 명시된 것들을 설치한다. `sh` 명령어 대신 `bash`를 사용한다.   
```bash
sudo bash install.sh
```

### icons
* [OSX_ONE](https://www.gnome-look.org/p/1218021/) -> ./icons/OSX_ONE9.2.tar.xz
* [MacOS sierra ct](https://www.gnome-look.org/p/1210856/) -> ./icons/Macos-sierra-CT-0.8.6.tar.gz
* [Flat-Remix](https://www.gnome-look.org/p/1012430/) -> repository(ppa:daniruiz/flat-remix) 에서 바로 받는다.
* [numix-icon-theme-circle](https://github.com/numixproject/numix-icon-theme-circle) -> repository(ppa:numix/ppa) 에서 바로 받는다.

### cursors
* [Oxygen Neon](https://www.gnome-look.org/p/999997/) -> ./icons/137109-oxy-neon-0.2.tar.gz
* [Capitaine](https://www.gnome-look.org/p/1148692/) -> ./icons/capitaine-cursors-r2.1.tar.gz
* ~~[Bibata](https://www.gnome-look.org/p/1197198/) -> ./others/Bibata_Cursor_master.zip 를 압축을 풀고 빌드한다.~~ 

### theme
* [Ant Themes](https://www.gnome-look.org/p/1099856/) -> ./themes/[Ant.tar, Ant-*.tar]
* [flat-remix-gtk](https://github.com/daniruiz/flat-remix-gtk) -> repository(ppa:daniruiz/flat-remix) 에서 바로 받는다.
* gtk-common-themes -> `snap install gtk-common-themes`

### gnome shell
* flat-remix-gnome: [gnome-look](https://www.gnome-look.org/p/1013030/), [github](https://github.com/daniruiz/Flat-Remix-GNOME-theme) -> repository(ppa:daniruiz/flat-remix) 에서 바로 받는다.

### programs
* gitkraken -> `snap install gitkraken --devmode`
* vscode -> `snap install vscode --classic`
* shutter
* boot-repair
* git, git-lfs, vim, gnome-tweak-tool, snapd
* ampareinvertcolor
* slack -> `snap install slack --classic`
* xclip -> 클립보드에 복사 기능을 `c` 라는 alias 로 등록한다. 
* nodejs
* ~~go -> `snap install go --classic`~~
* uim (입력기)
* zsh, oh-my-zsh

## manual

### gnome extension
**extensions.gnome.org** 은 말 그대로 여러 gnome 확장(gnome extension)을 설치할 수 있는 사이트이다. 
크롬 또는 파이어폭스에서 **그놈 쉘 확장 기능** 플러그인\( [파이어폭스](https://addons.mozilla.org/ko/firefox/addon/gnome-shell-integration/?src=search) | [크롬](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep?hl=ko) \)을 설치한다. 그리고 **extensions.gnome.org** 을 방문해 [User Themes](https://extensions.gnome.org/extension/19/user-themes/) 를 ON 으로 켜 준다.

#### 설치목록  
* [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)
* [Screenshot Tool](https://extensions.gnome.org/extension/1112/screenshot-tool/)

### 개발환경
* JetBrains Toolbox

### 마운트
내부 디스크를 여러 파티션으로 나누어 놓았다면 startup 시 자동으로 마운트 되도록 한다.

#### 마운트 지점(path to mount) 예시
```bash
# 마운트 지점 생성
sudo mkdir /media/user/KALI
# 일시적 마운트 
sudo mount /dev/sda2 /media/user/KALI
```
#### 디스크 -> 마운트 옵션 변경
**디스크** 프로그램을 실행한다.
```bash
gnome-disk
```
**추가 파티션 옵션** -> **마운트 옵션 편집** -> [**시작할 때 시스템에 마운트** 체크, **마운트 지점** 설정 (예: /media/user/KALI)] 

### zsh
zsh 만 적용하고 싶다면 다음을 실행한다. *others/zsh.install.sh* 는 *install.sh* 에서 실행하니, 
*install.sh* 를 실행했다면 따로 실행할 필요없이 다음 명령어인 `chsh` 를 실행하면 된다.
```bash
sudo bash others/zsh.install.sh
```
  
bash 에서 다음을 실행한다.
```bash
sudo -s
chsh -s $(which zsh)
chsh -s $(which zsh) user
```
이후 reboot 하면 default shell 이 zsh 로 적용된다. 
  
zsh 에서 다음을 실행한다. 명령어 스펠링 체크를 활성화한다.
```zsh
setopt correct
```

### nautilus
만약 /var/lib/samba/usershares/ 가 없다면, Nautilus 실행시 `net usershare info` 명령어가 실행되지 못하므로, 아래처럼 디렉토리를 추가해준다. [출처](https://askubuntu.com/questions/798928/nautilus-share-message-called-net-usershare-info-but-it-failed)
```bash
sudo mkdir -p /var/lib/samba/usershares/
```

### gpg 와 git
[여기](https://gist.github.com/ankurk91/c4f0e23d76ef868b139f3c28bde057fc) 를 참고한다.

## on development
**sync.sh**는 다음 두가지를 실행한다.
* wallpapers.ignore 디렉토리를 wallpapers 라는 디렉토리의 이름으로 wallpapers.tar.gz 로 압축
* ~/.zshrc 를 ./others/.zshrc 로 복사
```bash
sh sync.sh
```

