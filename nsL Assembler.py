import os, stat, sublime, sublime_plugin

# Configuration
pkg = 'nsL Assembler'
script = sublime.packages_path() + '/' + pkg + '/nsl-build.sh'

def plugin_loaded():
    from package_control import events

    # chmod +x <script>
    if (events.install(pkg) or events.post_upgrade(pkg)) and os.name is 'posix' or 'mac':
        st = os.stat(script)
        os.chmod(script, st.st_mode | stat.S_IEXEC)