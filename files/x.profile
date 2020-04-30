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
  X0:
    path: /tmp/.X11-unix/X0
    source: /tmp/.X11-unix/X0
    type: disk
  X1:
    path: /tmp/.X11-unix/X1
    source: /tmp/.X11-unix/X1
    type: disk
  mygpu:
    gid: "1000"
    type: gpu
    uid: "1000"
