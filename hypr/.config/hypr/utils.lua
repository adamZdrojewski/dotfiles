local utils = {}

function utils.get_hostname()
  local hostname_file = io.open("/etc/hostname", "r")
  if not hostname_file then return "unknown" end
  local hostname = hostname_file:read("*l")
  hostname_file:close()
  return hostname:gsub("%s+", "")
end

return utils
