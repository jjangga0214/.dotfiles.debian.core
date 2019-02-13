# :warning: CAUTION

Every execution, installation, configuration is only tested on ubuntu 18.10, though it would be  theoretically easy to tweak for other linux distos.

## [install.sh](install.sh)

### [apt/install.sh](apt/install.sh)

This literally only works with apt.

#### [apt/docker.sh](apt/docker.sh)

1. This only works on x86_64 or AMD64 architecture.
2. This is automatically called by [apt/install.sh](apt/install.sh).
3. This only works for ubuntu. However, ubuntu version does not matter.

## manual execution

### [others/snap.sh](others/snap.sh)

This is intentionally NOT included in install.sh due to some issues below.  

Some installation refusal might occur due to missing command options. In this case, manually fix it or just visit GUI ubuntu software  center.  

While using snap apps, some issues might appear including, but not limited to, keyboard input method system bug (e.g. using Korean with iBus) or blocked access to some system resources  (e.g.using fonts). It might be a bug of a specific snap app, or general sanpcraft issue. In this case, just  remove and reinstall the app fromother sources like apt, or a .deb file instead of snap store.  

When doing so, keep in mind that lots of apps on ubuntu software center are snap applications. You can easily check if it is.
