hook global WinSetOption filetype=lua %{
    hook window BufWritePre .* format
}

define-command factorio-log %{
    edit ~/dev/factorio/1/factorio-current.log
}
