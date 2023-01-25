# dotfiles

---

$HOME is where the :heart: is

---

## Notes

### Function keys

With some keyboards that support MacOS you need to press the `fn` key in order to send function keystrokes.

If you don't want this behavior you need to disable it:

```
echo options hid_apple fnmode=0 | sudo tee -a /etc/modprobe.d/hid_apple.conf
```

You then need to reload the initramfs boot file:

```
sudo update-initramfs -u -k all
```

After a reboot you can enjoy your function keys without needing to press `fn`.

