{ pkgs, ... }: {
    boot = {
        plymouth = {
            enable = true;
            theme = "rings";
            themePackages = with pkgs; [
                # By default we would install all themes
                (adi1090x-plymouth-themes.override {
                    selected_themes = [ "rings" ];
                })
            ];
        };
        # Enable "Silent boot"
        consoleLogLevel = 3;
        initrd.verbose = false;
        kernelParams = [
            "quiet"
            "splash"
            "boot.shell_on_fail"
            "udev.log_priority=3"
            "rd.systemd.show_status=auto"
        ];
        # Hide the OS choice for bootloaders.
        # It is still possible to open the bootload list by pressing any key.
        loader.timeout = 0;
    };
}
