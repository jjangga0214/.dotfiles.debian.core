# ubuntu.config

## automatic
```bash
sudo sh config.sh
```

## handed
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

##### 마운트 지점(path to mount) 예시
```bash
sudo mkdir /media/user/KALI
```
##### 디스크 -> 마운트 옵션 변경
**디스크** 프로그램을 실행한다.
```bash
gnome-disk
```
**추가 파티션 옵션** -> **마운트 옵션 편집** -> [**시작할 때 시스템에 마운트** 체크, **마운트 지점** 설정 (예: /media/user/KALI)] 