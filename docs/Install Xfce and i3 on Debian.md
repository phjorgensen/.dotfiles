### Xfce and i3 on Debian

1. Install Debian with Xfce as desktop environment.
2. Run `sudo apt install i3`.
3. In the Xfce "Session and startup" settings.
   1. Add i3 in the "Application Autostart" tab.
      - Name must be "i3", without the quotes.
      - Command must be "i3", without the quotes.
      - Trigger must be "on login".
      - Description can be anything you want.
   3. Set the "xfdesktop" and "xfwm4" to "never" in the "Current session" tab (Remember to click "Save session").
4. Sign out and in again.
5. Remove all the shortcuts from the "Application Shortcuts" tab in the Xfce "Keyboard" settings.

