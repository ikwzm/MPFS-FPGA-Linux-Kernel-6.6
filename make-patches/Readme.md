## Download Linux Kernel Sources

### linux-6.6.51

```console
shell$ git clone --depth 1 -branch v6.6.51 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-6.6.51
```

### linux-6.6.51-linux4microchip-fpga-2024.09

```console
shell$ git clone --depth 1 --branch linux4microchip+fpga-2024.09 https://github.com/linux4microchip/linux.git linux4microchip-fpga-2024.09
```

## Generate patches

### make-patches/diff-linux-6.6.51-linux4microchip-fpga-2024.09.txt


```console
shell$ ruby make-patches/source-tree-diff-list.rb -T linux-6.6.51-linux4microchip-fpga-2024.09 -o make-patches/diff-linux-6.6.51-linux4microchip-fpga-2024.09.txt -v linux-6.6.51/ linux4microchip-fpga-2024.09/
```

### make-patches/make-patches-linux-6.6.51-linux4microchip-fpga-2024.09.sh

```console
shell$ ruby ./make-patches/make-patch-shell.rb -d make-patches/diff-linux-6.6.51-linux4microchip-fpga-2024.09.txt -g make-patches/patch-group-linux-6.6.51-linux4microchip-fpga-2024.09.yml -s make-patches/make-patches-linux-6.6.51-linux4microchip-fpga-2024.09.sh
```

### patches/*

```console
shell$ sh make-patches/make-patches-linux-6.6.51-linux4microchip-fpga-2024.09.sh
```

