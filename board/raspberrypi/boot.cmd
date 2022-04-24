setenv bootargs earlyprintk coherent_pool=1M 8250.nr_uarts=1 snd_bcm2835.enable_compat_alsa=0 snd_bcm2835.enable_hdmi=1 bcm2708_fb.fbwidth=1920 bcm2708_fb.fbheight=1080 bcm2708_fb.fbswap=1 vc_mem.mem_base=0x1ec00000 vc_mem.mem_size=0x20000000  root=/dev/mmcblk0p2 rootwait console=tty1 console=ttyAMA0,115200

fdt addr ${fdt_addr}
fdt move ${fdt_addr} ${fdt_addr_r}

fatload mmc 0 $kernel_addr_r zImage

bootz $kernel_addr_r - $fdt_addr_r
