# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/cp-button-website"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "cp-button-website"; then
	# Editor window
	new_window "Editor"
	run_cmd nvim

	# Web server window
	new_window "Server"
	tmux split-window -t "$session:$window.0" -h -p 50
	select_pane 0
	run_cmd "npm run pages:dev"
	select_pane 1
	run_cmd "cd ~/Projects/cp-button-website"

	# Lazygit window
	new_window "Git"
	run_cmd lazygit
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
