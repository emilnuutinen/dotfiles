from qutebrowser.config.config import ConfigContainer  # noqa: F401
from qutebrowser.config.configfiles import ConfigAPI  # noqa: F401

config: ConfigAPI = config  # noqa: F821 pylint: disable=E0602,C0103
c: ConfigContainer = c  # noqa: F821 pylint: disable=E0602,C0103

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = ["#ebdbb2", "#89b482", "#d8a657"]

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = "#101010"

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = "#101010"

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = "#83a598"

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = "#101010"

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = "#101010"

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = "#101010"

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = "#fbf1c7"

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = "#282828"

# Top border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.top = "#504945"

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = "#504945"

# Foreground color of the matched text in the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.match.fg = "#fe8019"

# Foreground color of the matched text in the completion.
# Type: QtColor
c.colors.completion.match.fg = "#fe8019"

# Color of the scrollbar handle in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = "#171717"

# Color of the scrollbar in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.bg = "#101010"

# Background color of the context menu. If set to null, the Qt default
# is used.
# Type: QssColor
c.colors.contextmenu.menu.bg = "#101010"

# Foreground color of the context menu. If set to null, the Qt default
# is used.
# Type: QssColor
c.colors.contextmenu.menu.fg = "#d5c4a1"

# Background color of the context menu's selected item. If set to null,
# the Qt default is used.
# Type: QssColor
c.colors.contextmenu.selected.bg = "#504945"

# Foreground color of the context menu's selected item. If set to null,
# the Qt default is used.
# Type: QssColor
c.colors.contextmenu.selected.fg = "#d5c4a1"

# Background color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.bg = "#665c54"

# Foreground color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.fg = "#d4be98"

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = "#101010"

# Color gradient start for download text.
# Type: QtColor
c.colors.downloads.start.fg = "#101010"

# Color gradient start for download backgrounds.
# Type: QtColor
c.colors.downloads.start.bg = "#83a598"

# Color gradient end for download text.
# Type: QtColor
c.colors.downloads.stop.fg = "#101010"

# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = "#89b482"

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = "#fb4934"

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = "#d4be98"

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = "#101010"

# Font color for the matched part of hints.
# Type: QtColor
c.colors.hints.match.fg = "#7c6f64"

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = "#a89984"

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = "#fbf1c7"

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = "#101010"

# Foreground color of an error message.
# Type: QssColor
c.colors.messages.error.fg = "#101010"

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = "#fb4934"

# Border color of an error message.
# Type: QssColor
c.colors.messages.error.border = "#fb4934"

# Foreground color of a warning message.
# Type: QssColor
c.colors.messages.warning.fg = "#101010"

# Background color of a warning message.
# Type: QssColor
c.colors.messages.warning.bg = "#101010"

# Border color of a warning message.
# Type: QssColor
c.colors.messages.warning.border = "#282828"

# Foreground color of an info message.
# Type: QssColor
c.colors.messages.info.fg = "#d5c4a1"

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = "#101010"

# Border color of an info message.
# Type: QssColor
c.colors.messages.info.border = "#101010"

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = "#d5c4a1"

# Border used around UI elements in prompts.
# Type: String
c.colors.prompts.border = "1px solid #101010"

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = "#282828"

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = "#504945"

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = "#d4be98"

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = "#101010"

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = "#101010"

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = "#a9b665"

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = "#101010"

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = "#7daea3"

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = "#7daea3"

# Background color of the statusbar in private browsing mode.
# Type: QssColor
# c.colors.statusbar.private.bg = "#444444"
c.colors.statusbar.private.bg = "darkslategray"
c.colors.statusbar.command.private.bg = "darkslategray"

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = "#d4be98"

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = "#101010"

# Foreground color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.fg = "#7daea3"

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = "#444444"

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = "#101010"

# Background color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.bg = "#b16286"

# Foreground color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.fg = "#101010"

# Background color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.bg = "#282828"

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = "#83a598"

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = "#d4be98"

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = "#ea6962"

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = "#fe8019"

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = "#d4be98"

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = "#d4be98"

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = "#282828"

# Background color of the tab bar.
# Type: QssColor
c.colors.tabs.bar.bg = "#101010"

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = "#101010"

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = "#101010"

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = "#fb4934"

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = "#44443a"

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = "#101010"

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = "#44443a"

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = "#101010"

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = "#d4be98"

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = "#101010"

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = "#d4be98"

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = "#101010"

# Foreground color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.fg = "#504945"

# Background color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.bg = "#b8bb26"

# Foreground color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.fg = "#504945"

# Background color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.bg = "#b8bb26"

# Foreground color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.fg = "#d5c4a1"

# Background color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.bg = "#101010"

# Foreground color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.fg = "#d5c4a1"

# Background color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.bg = "#101010"
