import Qt5MultimediaWidgets_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qaudio.cpp", cflags).}


type QAudioError* = cint
const
  QAudioNoError* = 0
  QAudioOpenError* = 1
  QAudioIOError* = 2
  QAudioUnderrunError* = 3
  QAudioFatalError* = 4



type QAudioState* = cint
const
  QAudioActiveState* = 0
  QAudioSuspendedState* = 1
  QAudioStoppedState* = 2
  QAudioIdleState* = 3
  QAudioInterruptedState* = 4



type QAudioMode* = cint
const
  QAudioAudioInput* = 0
  QAudioAudioOutput* = 1



type QAudioRole* = cint
const
  QAudioUnknownRole* = 0
  QAudioMusicRole* = 1
  QAudioVideoRole* = 2
  QAudioVoiceCommunicationRole* = 3
  QAudioAlarmRole* = 4
  QAudioNotificationRole* = 5
  QAudioRingtoneRole* = 6
  QAudioAccessibilityRole* = 7
  QAudioSonificationRole* = 8
  QAudioGameRole* = 9
  QAudioCustomRole* = 10



type QAudioVolumeScale* = cint
const
  QAudioLinearVolumeScale* = 0
  QAudioCubicVolumeScale* = 1
  QAudioLogarithmicVolumeScale* = 2
  QAudioDecibelVolumeScale* = 3



import gen_qaudio_types
export gen_qaudio_types




