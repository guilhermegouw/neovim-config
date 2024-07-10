local M = {}

function M.start_browser_sync()
  local uv = vim.loop
  local handle
  local stdout = uv.new_pipe(false)
  local stderr = uv.new_pipe(false)

  handle = uv.spawn("browser-sync", {
    args = { "start", "--server", "--files", "*.html, css/*.css, js/*.js" },
    stdio = { nil, stdout, stderr },
  }, function(code, signal)
    stdout:close()
    stderr:close()
    handle:close()
    if code ~= 0 then
      print("BrowserSync exited with code " .. code .. " and signal " .. signal)
    else
      print("BrowserSync started successfully")
    end
  end)

  uv.read_start(stdout, function(err, data)
    assert(not err, err)
    if data then
      print("STDOUT: " .. data)
    end
  end)

  uv.read_start(stderr, function(err, data)
    assert(not err, err)
    if data then
      print("STDERR: " .. data)
    end
  end)
end

vim.cmd([[
  command! BrowserSync lua require('custom.browser_sync').start_browser_sync()
]])

return M
