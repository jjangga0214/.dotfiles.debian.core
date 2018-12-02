# Legacy to UEFI

## 파티션 만들기
* boot flag
* /boot/efi 를 /dev/sda6 에 mount(예시로 든 /dev/sda6 는 efi bootloader 거주용으로 만든 파티션)

## MBR to GPT
Legacy 에서 UEFI 로 제대로 변경하려면 MBR을 GPT 로 변경한다. 
그래야 새로 OS를 UEFI로 설치 하는 것 등이  가능하다.  
일반적으로는 데이터가 유실되지 않지만 그래도 destructive 할 수 있으므로 백업이 필요하다.
```bash
gdisk /dev/sda
# 이후 등장하는 "Command (? for help):"를 묻는 질문에서 
w
#를 입력한다. 다시 이후 등장하는 재확인 경고(데이터 유실 위험)(Do you want to proceed? (Y/N):) (y/n) 질문 에서 y 를 답한다.
y 
```
[출처](http://slavisa-jovanovic.com/linux/2015/02/19/mbr-to-gpt.html)
[참고](https://www.funtoo.org/Partitioning_using_gdisk)

## grub-repair 
### 설치
설치
[출처](https://help.ubuntu.com/community/Boot-Repair)
```bash
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo apt update
sudo apt install -y boot-repair && boot-repair
```

### 작업
**고급 설정(Advanced Option)**에서 기본적으로 테크된 것은 그대로 두고 아래의 것을 다시 확인한다. 
* "주 설정" -> 'GRUB을 재설치합니다' 선택
* "grub의 위치" -> '별도의 /boot/efi 파티션'을 선택하고 값으로 '/dev/sda6' (예시)를 선택
* "grub 설정" -> "Secure Boot"은 해제, "GRUB을 최신 버전으로 업그레이드 하십시오"는 선택
