{lib, config, ...}: {
  options = {
    movOpts.sysEnv.issue.enable = lib.mkEnableOption "enables custom /etc/issue splash screen for the tty";
  };
  config = lib.mkIf config.movOpts.sysEnv.issue.enable {
    environment.etc."issue".text = ''

             \e[38;5;27m▓▓▓▓       \e[38;5;81m▒▒▒▒    ▒▒▒▒
              \e[38;5;27m▓▓▓▓       \e[38;5;81m▒▒▒▒  ▒▒▒▒            \e[38;5;27m                       ▓▓▓
               \e[38;5;27m▓▓▓▓       \e[38;5;81m▒▒▒▒▒▒▒▒             \e[38;5;27m  ▓▓▓          ▓▓     ▓▓▓▓▓                  \e[38;5;81m    ▒▒▒▒▒▒▒▒▒        ▒▒▒▒▒▒▒▒▒
          \e[38;5;27m▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓\e[38;5;81m▒▒▒▒▒▒    \e[38;5;27m▓▓        \e[38;5;27m ▓▓▓▓▓        ▓▓▓▓     ▓▓▓                   \e[38;5;81m   ▒▒▒▒▒▒▒▒▒▒▒      ▒▒▒▒▒▒▒▒▒▒▒
         \e[38;5;27m▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓\e[38;5;81m▒▒▒▒    \e[38;5;27m▓▓▓        \e[38;5;27m ▓▓▓▓▓▓       ▓▓▓▓                           \e[38;5;81m  ▒▒▒▒▒   ▒▒▒▒▒    ▒▒▒▒    ▒▒▒▒▒
                \e[38;5;81m▒▒▒▒         \e[38;5;81m▒▒▒▒  \e[38;5;27m▓▓▓▓        \e[38;5;27m ▓▓▓▓▓▓▓      ▓▓▓▓                           \e[38;5;81m  ▒▒▒▒     ▒▒▒▒   ▒▒▒▒
               \e[38;5;81m▒▒▒▒           \e[38;5;81m▒▒▒▒\e[38;5;27m▓▓▓▓         \e[38;5;27m ▓▓▓▓▓▓▓▓     ▓▓▓▓    ▓▓▓▓     ▓▓▓      ▓▓▓  \e[38;5;81m  ▒▒▒       ▒▒▒   ▒▒▒▒
       \e[38;5;81m▒▒▒▒▒▒▒▒▒▒▒             \e[38;5;81m▒▒\e[38;5;27m▓▓▓▓          \e[38;5;27m ▓▓▓▓ ▓▓▓▓    ▓▓▓▓    ▓▓▓▓     ▓▓▓▓    ▓▓▓▓  \e[38;5;81m  ▒▒▒       ▒▒▒   ▒▒▒▒▒
       \e[38;5;81m ▒▒▒▒▒▒▒▒▒\e[38;5;27m               \e[38;5;27m▓▓▓▓▓▓▓▓▓      \e[38;5;27m ▓▓▓▓  ▓▓▓▓   ▓▓▓▓     ▓▓▓      ▓▓▓▓  ▓▓▓▓   \e[38;5;81m  ▒▒▒       ▒▒▒    ▒▒▒▒▒▒▒▒▒
            \e[38;5;81m▒▒▒▒\e[38;5;27m▓▓             \e[38;5;27m▓▓▓▓▓▓▓▓▓▓▓     \e[38;5;27m ▓▓▓▓   ▓▓▓▓  ▓▓▓▓     ▓▓▓       ▓▓▓▓▓▓▓▓    \e[38;5;81m  ▒▒▒       ▒▒▒      ▒▒▒▒▒▒▒▒▒
           \e[38;5;81m▒▒▒▒\e[38;5;27m▓▓▓▓           \e[38;5;27m▓▓▓▓             \e[38;5;27m ▓▓▓▓    ▓▓▓▓ ▓▓▓▓     ▓▓▓        ▓▓▓▓▓▓     \e[38;5;81m  ▒▒▒       ▒▒▒            ▒▒▒▒▒
          \e[38;5;81m▒▒▒▒  \e[38;5;27m▓▓▓▓         \e[38;5;27m▓▓▓▓              \e[38;5;27m ▓▓▓▓     ▓▓▓▓▓▓▓▓     ▓▓▓        ▓▓▓▓▓▓     \e[38;5;81m  ▒▒▒       ▒▒▒             ▒▒▒▒
          \e[38;5;81m▒▒▒    \e[38;5;27m▓▓▓▓\e[38;5;81m▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒        \e[38;5;27m ▓▓▓▓      ▓▓▓▓▓▓▓     ▓▓▓       ▓▓▓▓▓▓▓▓    \e[38;5;81m  ▒▒▒▒     ▒▒▒▒             ▒▒▒▒
          \e[38;5;81m▒▒    \e[38;5;27m▓▓▓▓▓▓\e[38;5;81m▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒         \e[38;5;27m ▓▓▓▓       ▓▓▓▓▓▓    ▓▓▓▓▓     ▓▓▓▓  ▓▓▓▓   \e[38;5;81m  ▒▒▒▒▒   ▒▒▒▒▒   ▒▒▒▒▒    ▒▒▒▒▒
               \e[38;5;27m▓▓▓▓▓▓▓▓       \e[38;5;81m▒▒▒▒             \e[38;5;27m ▓▓▓▓        ▓▓▓▓▓    ▓▓▓▓▓    ▓▓▓▓    ▓▓▓▓  \e[38;5;81m   ▒▒▒▒▒▒▒▒▒▒▒     ▒▒▒▒▒▒▒▒▒▒▒▒
              \e[38;5;27m▓▓▓▓  ▓▓▓▓       \e[38;5;81m▒▒▒▒            \e[38;5;27m  ▓▓          ▓▓▓      ▓▓▓     ▓▓▓      ▓▓▓  \e[38;5;81m    ▒▒▒▒▒▒▒▒▒       ▒▒▒▒▒▒▒▒▒
             \e[38;5;27m▓▓▓▓    ▓▓▓▓       \e[38;5;81m▒▒▒▒

      \e[1;32mSystem Maintainer\e[0m: Kyler Clay
      \e[1;32mContact\e[0m: kylerclay@proton.me
           470-403-8522

      Run '\e[1;35mnixos-help\e[0m' for the NixOS manual.
      Run '\e[1;35mHyprland\e[0m' to enter the desktop environment.
    '';
  };
}
