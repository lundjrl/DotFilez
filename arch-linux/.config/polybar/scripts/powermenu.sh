MENU="$(rofi -sep "|" -dmenu -i -p 'System' -location 5 -xoffset -20 -yoffset -910 -width 10 -hide-scrollbar -theme-str '@import "/usr/share/rofi/themes/gruvbox-dark.rasi"' -line-padding 4 -padding 20 -lines 4 <<< "> Logout|> Sleep|> Reboot|> Shutdown")"
            case "$MENU" in
                *Logout) exec i3-msg exit ;;
		*Sleep) systemctl suspend ;;
                *Reboot) systemctl reboot ;; 
                *Shutdown) systemctl -i poweroff
            esac
