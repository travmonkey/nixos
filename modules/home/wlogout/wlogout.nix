{ pkgs, lib, inputs, ... }:

{
  home.packages = with pkgs; [
    wlogout
  ];

  programs.wlogout = {
    enable = true;

    layout = [
      {
        label = "lock";
        action = "hyprlock";
        text = "Lock";
        keybind = "l";
      }
      {
        label = "reboot";
        action = "systemctl reboot";
        text = "Reboot";
        keybind = "r";
      }
      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = "Shutdown";
        keybind = "s";
      }
      {
        label = "Logout";
        action = "loginctl kill-session $XDG_SESSION_ID";
        text = "Logout";
        keybind = "e";
      }
      {
        label = "suspend";
        action = "hyprlock -f && systemctl suspend";
        text = "Suspend";
        keybind = "u";
      }
      {
        label = "hibernate";
        action = "hyprlock -f && systemctl hibernate";
        text = "Hibernate";
        keybind = "h";
      }
    ];

    style = ''
      window {
        font-family: MononokiNerdFont;
      }

      button {
        background-repeat: no-repeat;
        background-position: center;
        background-size: 20%;
        background-color: rgba(200, 220, 255, 0);
        animation: gradient_f 20s ease-in infinite;
        border-radius: 80px; /* Increased border radius for a more rounded look */
      }

      button:focus {
        background-size: 25%;
        border: 0px;
      }

      button:hover {
        background-color: #f5bde6; 
        color: #1e1e2e;
        background-size: 50%;
        margin: 30px;
        border-radius: 80px; 
        transition: all 0.3s cubic-bezier(.55, 0.0, .28, 1.682), box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
        box-shadow: 0 0 20px @color7; 
      }

      /* Adjust the size of the icon or content inside the button */
      button span {
        font-size: 1.2em; /* Increase the font size */
      }

      #lock {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/lock.png"));
      }
      #lock:hover {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/lock-hover.png"));
      }
      #logout {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/logout.png"));
      }
      #logout:hover {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/logout-hover.png"));
      }

      #suspend {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/sleep.png"));
      }
      #suspend:hover {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/sleep-hover.png"));
      }
      #shutdown {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/power.png"));
      }
      #shutdown:hover {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/power-hover.png"));
      }
      #reboot {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/restart.png"));
      }
      #reboot:hover {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/restart-hover.png"));
      }
      #hibernate {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/hibernate.png"));
      }
      #hibernate:hover {
        background-image: image(url("/home/travis/nixos/modules/home/wlogout/icons/hibernate-hover.png"));
      }
    '';
  };
}
