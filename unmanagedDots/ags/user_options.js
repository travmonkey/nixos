// For every option, see ~/.config/ags/modules/.configuration/user_options.js
// (vscode users ctrl+click this: file://./modules/.configuration/user_options.js)
// (vim users: `:vsp` to split window, move cursor to this path, press `gf`. `Ctrl-w` twice to switch between)
//   options listed in this file will override the default ones in the above file

const userConfigOptions = {
  animations: {
    choreographyDelay: 35,
    durationSmall: 110,
    durationLarge: 180,
  },
  apps: {
    bluetooth: "blueberry",
    imageViewer: "loupe",
    network: 'XDG_CURRENT_DESKTOP="gnome" gnome-control-center wifi',
    settings: 'XDG_CURRENT_DESKTOP="gnome" gnome-control-center',
    taskManager: "gnome-usage",
    terminal: "kitty", // This is only for shell actions
  },
  cheatsheet: {
    keybinds: {
      configPath: "~/.config/hypr/hyprland.conf", // Path to hyprland keybind config file. Leave empty for default (~/.config/hypr/hyprland/keybinds.conf)
    },
  },
  overview: {
    scale: 0.1, // Relative to screen size
    numOfRows: 2,
    numOfCols: 5,
    wsNumScale: 0.09,
    wsNumMarginScale: 0.07,
  },
  sidebar: {
    ai: {
      extraGptModels: {
        oxygen3: {
          name: "Oxygen (GPT-3.5)",
          logo_name: "ai-oxygen-symbolic",
          description:
            "An API from Tornado Softwares\nPricing: Free: 100/day\nRequires you to join their Discord for a key",
          base_url: "https://app.oxyapi.uk/v1/chat/completions",
          key_get_url: "https://discord.com/invite/kM6MaCqGKA",
          key_file: "oxygen_key.txt",
          model: "gpt-3.5-turbo",
        },
      },
    },
    image: {
      columns: 2,
      batchCount: 20,
      allowNsfw: true,
      saveInFolderByTags: false,
    },
    pages: {
      order: ["apis", "tools"],
      apis: {
        order: ["gpt", "gemini", "waifu", "booru"],
      },
    },
  },
  search: {
    enableFeatures: {
      actions: true,
      commands: true,
      mathResults: true,
      directorySearch: true,
      aiSearch: false,
      webSearch: false,
    },
    engineBaseUrl: "https://www.google.com/search?q=",
    excludedSites: ["quora.com"],
  },
  time: {
    // See https://docs.gtk.org/glib/method.DateTime.format.html
    // Here's the 12h format: "%I:%M%P"
    // For seconds, add "%S" and set interval to 1000
    format: "%I:%M%P",
    interval: 5000,
    dateFormatLong: "%A, %m/%d", // On bar
    dateInterval: 5000,
    dateFormat: "%m/%d", // On notif time
  },
  weather: {
    city: "Boulder, CO",
    preferredUnit: "C", // Either C or F
  },
  bar: {
    // Array of bar modes for each monitor. Hit Ctrl+Alt+Slash to cycle.
    // Modes: "normal", "focus" (workspace indicator only), "nothing"
    // Example for four monitors: ["normal", "focus", "normal", "nothing"]
    modes: ["focus", "normal", "focus"],
  },
};

export default userConfigOptions;
