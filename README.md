# ubuntu.config
ubuntu를 설치한 직후 환경을 구성한다. icons, cursors, themes, programs 들을 설치한다. 

## precaution
* icons, themes 가 최신 버전으로 갱신되었는지 확인한다

## automatic
### 참고 
* <https://www.opendesktop.org/>
* <https://www.gnome-look.org>
* <https://extensions.gnome.org/> : gnome shell extensions

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
* xclip
* nodejs
* go -> `snap install go --classic`
* uim (입력기)

### install
script 로 설치할 수 있는 것들을 설치한다. `sh` 대신 `bash`를 사용한다.   
```bash
sudo bash config.sh
```

## manual
### gnome 관련
#### extensions.gnome.org
**extensions.gnome.org** 은 말 그대로 여러 gnome 확장을 설치할 수 있는 사이트이다. 
[크롬](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep?hl=ko) 또는 [파이어폭스](https://addons.mozilla.org/ko/firefox/addon/gnome-shell-integration/?src=search) 에서 **그놈 쉘 확장 기능** 플러그인을 설치한다. 그리고 **extensions.gnome.org** 을 방문해 [User Themes](https://extensions.gnome.org/extension/19/user-themes/) 를 ON 으로 켜 준다.
##### 설치목록  
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