function deepcopy(orig)
  local orig_type = type(orig)
  local copy
  if orig_type == 'table' then
      copy = {}
      for orig_key, orig_value in next, orig, nil do
          copy[deepcopy(orig_key)] = deepcopy(orig_value)
      end
      setmetatable(copy, deepcopy(getmetatable(orig)))
  else -- number, string, boolean, etc
      copy = orig
  end
  return copy
end

function delete_directory(dir)
  os_execute(string.format('rmdir /s /q "%s"', dir))
end

function getfield (f)
  local v = _G    -- start with the table of globals
  for w in string.gmatch(f, "[%w_]+") do
    v = v[w]
  end
  return v
end

function setfield (f, v)
  local t = _G    -- start with the table of globals
  for w, d in string.gmatch(f, "([%w_]+)(.?)") do
	if d == "." then      -- not last field?
	  t[w] = t[w] or {}   -- create table if absent
	  t = t[w]            -- get the table
	else                  -- last field
	  t[w] = v            -- do the assignment
	end
  end
end

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end