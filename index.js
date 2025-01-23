const { powerSaveBlocker, app } = require("electron");

app.whenReady().then(() => {
  const id = powerSaveBlocker.start("prevent-display-sleep");

  console.log("System sleep prevention active. Press Ctrl+C to stop.");

  process.on("SIGINT", () => {
    if (powerSaveBlocker.isStarted(id)) {
      powerSaveBlocker.stop(id);
      console.log("sleep prevention disabled. Exiting...");
    }
    process.exit();
  });
});
