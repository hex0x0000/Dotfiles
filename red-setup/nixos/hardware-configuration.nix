# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/fd9e9043-7311-4ed6-a671-160563da0a5d";
      fsType = "btrfs";
      options = [ "subvol=nixos" ];
    };

  boot.initrd.luks.devices."root".device = "/dev/disk/by-uuid/7ddad8a5-e441-4021-a8fd-5a34b4916183";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/1242-9923";
      fsType = "vfat";
    };

  swapDevices = [ ];

}
