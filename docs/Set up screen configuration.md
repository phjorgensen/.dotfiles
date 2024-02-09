# Set up screen configuration

The `i3` configuration file expects a file at `.config/.screens/screen.conf` that handles the screen definition.

```conf
mode "Screen settings: [l]aptop, [o]ffice, [h]ome" {
  bindsym l exec --no-startup-id ~/.config/.screens/laptop.sh; mode "default"; exec nitrogen --restore;
  bindsym o exec --no-startup-id ~/.config/.screens/office.sh; mode "default"; exec nitrogen --restore;
  bindsym h exec --no-startup-id ~/.config/.screens/home.sh; mode "default"; exec nitrogen --restore;

  # back to normal: Enter or Escape
  bindsym Return mode "default"
  bindsym Escape mode "default"
}

bindsym $mod+shift+b mode "Screen settings: [l]aptop, [o]ffice, [h]ome"
```
