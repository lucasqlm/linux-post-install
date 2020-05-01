config:
  environment.DISPLAY: :1
  environment.PULSE_SERVER: unix:/tmp/.pulse-native
  raw.idmap: both 1000 1000
description: ""
devices:
  PASocket:
    path: /tmp/.pulse-native
    source: /run/user/1000/pulse/native
    type: disk
  X:
    path: /tmp/.X11-unix/
    source: /tmp/.X11-unix/
    type: disk
  mygpu:
    gid: "1000"
    type: gpu
    uid: "1000"
