table.insert(default_access.rules, {
  matches = {
    {
      { "application.process.binary", "=", "electron" },
      { "application.process.binary", "=", "webcord" },
      { "application.process.binary", "=", "firefox" },
      { "application.process.binary", "=", "ferdium" },
    }
  },
  default_permissions = "rx",
})
