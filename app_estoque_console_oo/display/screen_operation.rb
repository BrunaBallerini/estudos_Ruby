def mensage(msg, use_clean_screen = true, use_timer = true, timer=1)
  clean_screen if use_clean_screen
  puts msg
  sleep(timer) if use_timer
  clean_screen if use_clean_screen
end

def clean_screen
  if Gem.win_platform?
    system("cls")
  else
    system("clear")
  end
end

def red_message(msg, use_clean_screen = true, use_timer = true, timer=1)
  msg = "\e[31m#{msg}\e[0m"
  mensage(msg, use_clean_screen, use_timer, timer)
end

def green_message(msg, use_clean_screen = true, use_timer = true, timer=1)
  msg = "\e[32m#{msg}\e[0m"
  mensage(msg, use_clean_screen, use_timer, timer)
end

def yellow_message(msg, use_clean_screen = true, use_timer = true, timer=1)
  msg = "\e[33m#{msg}\e[0m"
  mensage(msg, use_clean_screen, use_timer, timer)
end

def blue_message(msg, use_clean_screen = true, use_timer = true, timer=1)
  msg = "\e[34m#{msg}\e[0m"
  mensage(msg, use_clean_screen, use_timer, timer)
end
