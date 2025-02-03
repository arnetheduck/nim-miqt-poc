import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qscicommandset.cpp", cflags).}


import gen_qscicommandset_types
export gen_qscicommandset_types

import
  gen_qscicommand,
  gen_qsettings
export
  gen_qscicommand,
  gen_qsettings

type cQsciCommandSet*{.exportc: "QsciCommandSet", incompleteStruct.} = object

proc fcQsciCommandSet_readSettings(self: pointer, qs: pointer): bool {.importc: "QsciCommandSet_readSettings".}
proc fcQsciCommandSet_writeSettings(self: pointer, qs: pointer): bool {.importc: "QsciCommandSet_writeSettings".}
proc fcQsciCommandSet_commands(self: pointer, ): struct_miqt_array {.importc: "QsciCommandSet_commands".}
proc fcQsciCommandSet_clearKeys(self: pointer, ): void {.importc: "QsciCommandSet_clearKeys".}
proc fcQsciCommandSet_clearAlternateKeys(self: pointer, ): void {.importc: "QsciCommandSet_clearAlternateKeys".}
proc fcQsciCommandSet_boundTo(self: pointer, key: cint): pointer {.importc: "QsciCommandSet_boundTo".}
proc fcQsciCommandSet_find(self: pointer, command: cint): pointer {.importc: "QsciCommandSet_find".}
proc fcQsciCommandSet_readSettings2(self: pointer, qs: pointer, prefix: cstring): bool {.importc: "QsciCommandSet_readSettings2".}
proc fcQsciCommandSet_writeSettings2(self: pointer, qs: pointer, prefix: cstring): bool {.importc: "QsciCommandSet_writeSettings2".}


func init*(T: type QsciCommandSet, h: ptr cQsciCommandSet): QsciCommandSet =
  T(h: h)
proc readSettings*(self: QsciCommandSet, qs: gen_qsettings.QSettings): bool =

  fcQsciCommandSet_readSettings(self.h, qs.h)

proc writeSettings*(self: QsciCommandSet, qs: gen_qsettings.QSettings): bool =

  fcQsciCommandSet_writeSettings(self.h, qs.h)

proc commands*(self: QsciCommandSet, ): seq[gen_qscicommand.QsciCommand] =

  var v_ma = fcQsciCommandSet_commands(self.h)
  var vx_ret = newSeq[gen_qscicommand.QsciCommand](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qscicommand.QsciCommand(h: v_outCast[i])
  vx_ret

proc clearKeys*(self: QsciCommandSet, ): void =

  fcQsciCommandSet_clearKeys(self.h)

proc clearAlternateKeys*(self: QsciCommandSet, ): void =

  fcQsciCommandSet_clearAlternateKeys(self.h)

proc boundTo*(self: QsciCommandSet, key: cint): gen_qscicommand.QsciCommand =

  gen_qscicommand.QsciCommand(h: fcQsciCommandSet_boundTo(self.h, key))

proc find*(self: QsciCommandSet, command: gen_qscicommand.QsciCommandCommand): gen_qscicommand.QsciCommand =

  gen_qscicommand.QsciCommand(h: fcQsciCommandSet_find(self.h, cint(command)))

proc readSettings2*(self: QsciCommandSet, qs: gen_qsettings.QSettings, prefix: cstring): bool =

  fcQsciCommandSet_readSettings2(self.h, qs.h, prefix)

proc writeSettings2*(self: QsciCommandSet, qs: gen_qsettings.QSettings, prefix: cstring): bool =

  fcQsciCommandSet_writeSettings2(self.h, qs.h, prefix)

