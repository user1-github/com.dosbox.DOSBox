## Information for users

- For security reasons, this Flatpak is sandboxed and only has access to the user's Desktop, Documents, Downloads, Music, Pictures and Videos folders.
  You should place any files you need within DOSBox in one of these folders (or in a subfolder).

- By default, DOSBox Flatpak creates its config file under `/.var/app/com.dosbox.DOSBox/.dosbox`.
  However, if you have an existing DOSBox 0.74 config file named `dosbox.conf` under `/.config/dosbox` directory and you grant the Flatpak filesystem access to it,
  DOSBox will first try to load that config file.
  The filesystem access can be granted using the following command: `flatpak override --user --filesystem=xdg-config/dosbox com.dosbox.DOSBox`
