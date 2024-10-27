# FROM cloudflare/cloudflared as cloudflared
FROM ghcr.io/qtvhao/node-20.12.2:main
# China
# ftp.cn.debian.org	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirror.lzu.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirror.nju.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirror.nyist.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirrors.163.com	/debian/	amd64 i386
# mirrors.bfsu.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirrors.jlu.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirror.sjtu.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirrors.neusoft.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirrors.qvq.net.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirrors.tuna.tsinghua.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirrors.ustc.edu.cn	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirrors.zju.edu.cn	/debian/	amd64 arm64 armel armhf i386 riscv64
# Singapore
# mirror.coganng.com	/debian/	amd64 arm64 armel armhf i386 riscv64
# mirror.djvg.sg	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x
# mirror.sg.gs	/debian/	amd64 arm64 armel armhf i386 mips mips64el mipsel ppc64el riscv64 s390x

RUN echo "deb http://mirrors.163.com/debian/ buster-updates main" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/debian/ buster main" >> /etc/apt/sources.list
# Singapore
RUN echo "deb http://mirror.sg.gs/debian/ buster-updates main" >> /etc/apt/sources.list
RUN echo "deb http://mirror.sg.gs/debian/ buster main" >> /etc/apt/sources.list

WORKDIR /app
# get identify and convert in imagemagick

RUN which ffmpeg || apt-get update && apt-get install -y ffmpeg
RUN which ffprobe
