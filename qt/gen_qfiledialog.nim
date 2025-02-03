import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qfiledialog.cpp", cflags).}


type QFileDialogViewMode* = cint
const
  QFileDialogDetail* = 0
  QFileDialogList* = 1



type QFileDialogFileMode* = cint
const
  QFileDialogAnyFile* = 0
  QFileDialogExistingFile* = 1
  QFileDialogDirectory* = 2
  QFileDialogExistingFiles* = 3
  QFileDialogDirectoryOnly* = 4



type QFileDialogAcceptMode* = cint
const
  QFileDialogAcceptOpen* = 0
  QFileDialogAcceptSave* = 1



type QFileDialogDialogLabel* = cint
const
  QFileDialogLookIn* = 0
  QFileDialogFileName* = 1
  QFileDialogFileType* = 2
  QFileDialogAccept* = 3
  QFileDialogReject* = 4



type QFileDialogOption* = cint
const
  QFileDialogShowDirsOnly* = 1
  QFileDialogDontResolveSymlinks* = 2
  QFileDialogDontConfirmOverwrite* = 4
  QFileDialogDontUseSheet* = 8
  QFileDialogDontUseNativeDialog* = 16
  QFileDialogReadOnly* = 32
  QFileDialogHideNameFilterDetails* = 64
  QFileDialogDontUseCustomDirectoryIcons* = 128



import gen_qfiledialog_types
export gen_qfiledialog_types

import
  gen_qabstractitemdelegate,
  gen_qabstractproxymodel,
  gen_qcoreevent,
  gen_qdialog,
  gen_qdir,
  gen_qevent,
  gen_qfileiconprovider,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qurl,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractproxymodel,
  gen_qcoreevent,
  gen_qdialog,
  gen_qdir,
  gen_qevent,
  gen_qfileiconprovider,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qurl,
  gen_qvariant,
  gen_qwidget

type cQFileDialog*{.exportc: "QFileDialog", incompleteStruct.} = object

proc fcQFileDialog_new(parent: pointer): ptr cQFileDialog {.importc: "QFileDialog_new".}
proc fcQFileDialog_new2(parent: pointer, f: cint): ptr cQFileDialog {.importc: "QFileDialog_new2".}
proc fcQFileDialog_new3(): ptr cQFileDialog {.importc: "QFileDialog_new3".}
proc fcQFileDialog_new4(parent: pointer, caption: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new4".}
proc fcQFileDialog_new5(parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new5".}
proc fcQFileDialog_new6(parent: pointer, caption: struct_miqt_string, directory: struct_miqt_string, filter: struct_miqt_string): ptr cQFileDialog {.importc: "QFileDialog_new6".}
proc fcQFileDialog_metaObject(self: pointer, ): pointer {.importc: "QFileDialog_metaObject".}
proc fcQFileDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileDialog_metacast".}
proc fcQFileDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileDialog_metacall".}
proc fcQFileDialog_tr(s: cstring): struct_miqt_string {.importc: "QFileDialog_tr".}
proc fcQFileDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QFileDialog_trUtf8".}
proc fcQFileDialog_setDirectory(self: pointer, directory: struct_miqt_string): void {.importc: "QFileDialog_setDirectory".}
proc fcQFileDialog_setDirectoryWithDirectory(self: pointer, directory: pointer): void {.importc: "QFileDialog_setDirectoryWithDirectory".}
proc fcQFileDialog_directory(self: pointer, ): pointer {.importc: "QFileDialog_directory".}
proc fcQFileDialog_setDirectoryUrl(self: pointer, directory: pointer): void {.importc: "QFileDialog_setDirectoryUrl".}
proc fcQFileDialog_directoryUrl(self: pointer, ): pointer {.importc: "QFileDialog_directoryUrl".}
proc fcQFileDialog_selectFile(self: pointer, filename: struct_miqt_string): void {.importc: "QFileDialog_selectFile".}
proc fcQFileDialog_selectedFiles(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_selectedFiles".}
proc fcQFileDialog_selectUrl(self: pointer, url: pointer): void {.importc: "QFileDialog_selectUrl".}
proc fcQFileDialog_selectedUrls(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_selectedUrls".}
proc fcQFileDialog_setNameFilterDetailsVisible(self: pointer, enabled: bool): void {.importc: "QFileDialog_setNameFilterDetailsVisible".}
proc fcQFileDialog_isNameFilterDetailsVisible(self: pointer, ): bool {.importc: "QFileDialog_isNameFilterDetailsVisible".}
proc fcQFileDialog_setNameFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_setNameFilter".}
proc fcQFileDialog_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileDialog_setNameFilters".}
proc fcQFileDialog_nameFilters(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_nameFilters".}
proc fcQFileDialog_selectNameFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_selectNameFilter".}
proc fcQFileDialog_selectedMimeTypeFilter(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_selectedMimeTypeFilter".}
proc fcQFileDialog_selectedNameFilter(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_selectedNameFilter".}
proc fcQFileDialog_setMimeTypeFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileDialog_setMimeTypeFilters".}
proc fcQFileDialog_mimeTypeFilters(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_mimeTypeFilters".}
proc fcQFileDialog_selectMimeTypeFilter(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_selectMimeTypeFilter".}
proc fcQFileDialog_filter(self: pointer, ): cint {.importc: "QFileDialog_filter".}
proc fcQFileDialog_setFilter(self: pointer, filters: cint): void {.importc: "QFileDialog_setFilter".}
proc fcQFileDialog_setViewMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setViewMode".}
proc fcQFileDialog_viewMode(self: pointer, ): cint {.importc: "QFileDialog_viewMode".}
proc fcQFileDialog_setFileMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setFileMode".}
proc fcQFileDialog_fileMode(self: pointer, ): cint {.importc: "QFileDialog_fileMode".}
proc fcQFileDialog_setAcceptMode(self: pointer, mode: cint): void {.importc: "QFileDialog_setAcceptMode".}
proc fcQFileDialog_acceptMode(self: pointer, ): cint {.importc: "QFileDialog_acceptMode".}
proc fcQFileDialog_setReadOnly(self: pointer, enabled: bool): void {.importc: "QFileDialog_setReadOnly".}
proc fcQFileDialog_isReadOnly(self: pointer, ): bool {.importc: "QFileDialog_isReadOnly".}
proc fcQFileDialog_setResolveSymlinks(self: pointer, enabled: bool): void {.importc: "QFileDialog_setResolveSymlinks".}
proc fcQFileDialog_resolveSymlinks(self: pointer, ): bool {.importc: "QFileDialog_resolveSymlinks".}
proc fcQFileDialog_setSidebarUrls(self: pointer, urls: struct_miqt_array): void {.importc: "QFileDialog_setSidebarUrls".}
proc fcQFileDialog_sidebarUrls(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_sidebarUrls".}
proc fcQFileDialog_saveState(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_saveState".}
proc fcQFileDialog_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QFileDialog_restoreState".}
proc fcQFileDialog_setConfirmOverwrite(self: pointer, enabled: bool): void {.importc: "QFileDialog_setConfirmOverwrite".}
proc fcQFileDialog_confirmOverwrite(self: pointer, ): bool {.importc: "QFileDialog_confirmOverwrite".}
proc fcQFileDialog_setDefaultSuffix(self: pointer, suffix: struct_miqt_string): void {.importc: "QFileDialog_setDefaultSuffix".}
proc fcQFileDialog_defaultSuffix(self: pointer, ): struct_miqt_string {.importc: "QFileDialog_defaultSuffix".}
proc fcQFileDialog_setHistory(self: pointer, paths: struct_miqt_array): void {.importc: "QFileDialog_setHistory".}
proc fcQFileDialog_history(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_history".}
proc fcQFileDialog_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QFileDialog_setItemDelegate".}
proc fcQFileDialog_itemDelegate(self: pointer, ): pointer {.importc: "QFileDialog_itemDelegate".}
proc fcQFileDialog_setIconProvider(self: pointer, provider: pointer): void {.importc: "QFileDialog_setIconProvider".}
proc fcQFileDialog_iconProvider(self: pointer, ): pointer {.importc: "QFileDialog_iconProvider".}
proc fcQFileDialog_setLabelText(self: pointer, label: cint, text: struct_miqt_string): void {.importc: "QFileDialog_setLabelText".}
proc fcQFileDialog_labelText(self: pointer, label: cint): struct_miqt_string {.importc: "QFileDialog_labelText".}
proc fcQFileDialog_setSupportedSchemes(self: pointer, schemes: struct_miqt_array): void {.importc: "QFileDialog_setSupportedSchemes".}
proc fcQFileDialog_supportedSchemes(self: pointer, ): struct_miqt_array {.importc: "QFileDialog_supportedSchemes".}
proc fcQFileDialog_setProxyModel(self: pointer, model: pointer): void {.importc: "QFileDialog_setProxyModel".}
proc fcQFileDialog_proxyModel(self: pointer, ): pointer {.importc: "QFileDialog_proxyModel".}
proc fcQFileDialog_setOption(self: pointer, option: cint): void {.importc: "QFileDialog_setOption".}
proc fcQFileDialog_testOption(self: pointer, option: cint): bool {.importc: "QFileDialog_testOption".}
proc fcQFileDialog_setOptions(self: pointer, options: cint): void {.importc: "QFileDialog_setOptions".}
proc fcQFileDialog_options(self: pointer, ): cint {.importc: "QFileDialog_options".}
proc fcQFileDialog_setVisible(self: pointer, visible: bool): void {.importc: "QFileDialog_setVisible".}
proc fcQFileDialog_fileSelected(self: pointer, file: struct_miqt_string): void {.importc: "QFileDialog_fileSelected".}
proc fQFileDialog_connect_fileSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_fileSelected".}
proc fcQFileDialog_filesSelected(self: pointer, files: struct_miqt_array): void {.importc: "QFileDialog_filesSelected".}
proc fQFileDialog_connect_filesSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_filesSelected".}
proc fcQFileDialog_currentChanged(self: pointer, path: struct_miqt_string): void {.importc: "QFileDialog_currentChanged".}
proc fQFileDialog_connect_currentChanged(self: pointer, slot: int) {.importc: "QFileDialog_connect_currentChanged".}
proc fcQFileDialog_directoryEntered(self: pointer, directory: struct_miqt_string): void {.importc: "QFileDialog_directoryEntered".}
proc fQFileDialog_connect_directoryEntered(self: pointer, slot: int) {.importc: "QFileDialog_connect_directoryEntered".}
proc fcQFileDialog_urlSelected(self: pointer, url: pointer): void {.importc: "QFileDialog_urlSelected".}
proc fQFileDialog_connect_urlSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_urlSelected".}
proc fcQFileDialog_urlsSelected(self: pointer, urls: struct_miqt_array): void {.importc: "QFileDialog_urlsSelected".}
proc fQFileDialog_connect_urlsSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_urlsSelected".}
proc fcQFileDialog_currentUrlChanged(self: pointer, url: pointer): void {.importc: "QFileDialog_currentUrlChanged".}
proc fQFileDialog_connect_currentUrlChanged(self: pointer, slot: int) {.importc: "QFileDialog_connect_currentUrlChanged".}
proc fcQFileDialog_directoryUrlEntered(self: pointer, directory: pointer): void {.importc: "QFileDialog_directoryUrlEntered".}
proc fQFileDialog_connect_directoryUrlEntered(self: pointer, slot: int) {.importc: "QFileDialog_connect_directoryUrlEntered".}
proc fcQFileDialog_filterSelected(self: pointer, filter: struct_miqt_string): void {.importc: "QFileDialog_filterSelected".}
proc fQFileDialog_connect_filterSelected(self: pointer, slot: int) {.importc: "QFileDialog_connect_filterSelected".}
proc fcQFileDialog_getOpenFileName(): struct_miqt_string {.importc: "QFileDialog_getOpenFileName".}
proc fcQFileDialog_getOpenFileUrl(): pointer {.importc: "QFileDialog_getOpenFileUrl".}
proc fcQFileDialog_getSaveFileName(): struct_miqt_string {.importc: "QFileDialog_getSaveFileName".}
proc fcQFileDialog_getSaveFileUrl(): pointer {.importc: "QFileDialog_getSaveFileUrl".}
proc fcQFileDialog_getExistingDirectory(): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory".}
proc fcQFileDialog_getExistingDirectoryUrl(): pointer {.importc: "QFileDialog_getExistingDirectoryUrl".}
proc fcQFileDialog_getOpenFileNames(): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames".}
proc fcQFileDialog_getOpenFileUrls(): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls".}
proc fcQFileDialog_saveFileContent(fileContent: struct_miqt_string, fileNameHint: struct_miqt_string): void {.importc: "QFileDialog_saveFileContent".}
proc fcQFileDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileDialog_tr2".}
proc fcQFileDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileDialog_tr3".}
proc fcQFileDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileDialog_trUtf82".}
proc fcQFileDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileDialog_trUtf83".}
proc fcQFileDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QFileDialog_setOption2".}
proc fcQFileDialog_getOpenFileName1(parent: pointer): struct_miqt_string {.importc: "QFileDialog_getOpenFileName1".}
proc fcQFileDialog_getOpenFileName2(parent: pointer, caption: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getOpenFileName2".}
proc fcQFileDialog_getOpenFileName3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getOpenFileName3".}
proc fcQFileDialog_getOpenFileName4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, filter: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getOpenFileName4".}
proc fcQFileDialog_getOpenFileUrl1(parent: pointer): pointer {.importc: "QFileDialog_getOpenFileUrl1".}
proc fcQFileDialog_getOpenFileUrl2(parent: pointer, caption: struct_miqt_string): pointer {.importc: "QFileDialog_getOpenFileUrl2".}
proc fcQFileDialog_getOpenFileUrl3(parent: pointer, caption: struct_miqt_string, dir: pointer): pointer {.importc: "QFileDialog_getOpenFileUrl3".}
proc fcQFileDialog_getOpenFileUrl4(parent: pointer, caption: struct_miqt_string, dir: pointer, filter: struct_miqt_string): pointer {.importc: "QFileDialog_getOpenFileUrl4".}
proc fcQFileDialog_getSaveFileName1(parent: pointer): struct_miqt_string {.importc: "QFileDialog_getSaveFileName1".}
proc fcQFileDialog_getSaveFileName2(parent: pointer, caption: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getSaveFileName2".}
proc fcQFileDialog_getSaveFileName3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getSaveFileName3".}
proc fcQFileDialog_getSaveFileName4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, filter: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getSaveFileName4".}
proc fcQFileDialog_getSaveFileUrl1(parent: pointer): pointer {.importc: "QFileDialog_getSaveFileUrl1".}
proc fcQFileDialog_getSaveFileUrl2(parent: pointer, caption: struct_miqt_string): pointer {.importc: "QFileDialog_getSaveFileUrl2".}
proc fcQFileDialog_getSaveFileUrl3(parent: pointer, caption: struct_miqt_string, dir: pointer): pointer {.importc: "QFileDialog_getSaveFileUrl3".}
proc fcQFileDialog_getSaveFileUrl4(parent: pointer, caption: struct_miqt_string, dir: pointer, filter: struct_miqt_string): pointer {.importc: "QFileDialog_getSaveFileUrl4".}
proc fcQFileDialog_getExistingDirectory1(parent: pointer): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory1".}
proc fcQFileDialog_getExistingDirectory2(parent: pointer, caption: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory2".}
proc fcQFileDialog_getExistingDirectory3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory3".}
proc fcQFileDialog_getExistingDirectory4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, options: cint): struct_miqt_string {.importc: "QFileDialog_getExistingDirectory4".}
proc fcQFileDialog_getExistingDirectoryUrl1(parent: pointer): pointer {.importc: "QFileDialog_getExistingDirectoryUrl1".}
proc fcQFileDialog_getExistingDirectoryUrl2(parent: pointer, caption: struct_miqt_string): pointer {.importc: "QFileDialog_getExistingDirectoryUrl2".}
proc fcQFileDialog_getExistingDirectoryUrl3(parent: pointer, caption: struct_miqt_string, dir: pointer): pointer {.importc: "QFileDialog_getExistingDirectoryUrl3".}
proc fcQFileDialog_getExistingDirectoryUrl4(parent: pointer, caption: struct_miqt_string, dir: pointer, options: cint): pointer {.importc: "QFileDialog_getExistingDirectoryUrl4".}
proc fcQFileDialog_getExistingDirectoryUrl5(parent: pointer, caption: struct_miqt_string, dir: pointer, options: cint, supportedSchemes: struct_miqt_array): pointer {.importc: "QFileDialog_getExistingDirectoryUrl5".}
proc fcQFileDialog_getOpenFileNames1(parent: pointer): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames1".}
proc fcQFileDialog_getOpenFileNames2(parent: pointer, caption: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames2".}
proc fcQFileDialog_getOpenFileNames3(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames3".}
proc fcQFileDialog_getOpenFileNames4(parent: pointer, caption: struct_miqt_string, dir: struct_miqt_string, filter: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileNames4".}
proc fcQFileDialog_getOpenFileUrls1(parent: pointer): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls1".}
proc fcQFileDialog_getOpenFileUrls2(parent: pointer, caption: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls2".}
proc fcQFileDialog_getOpenFileUrls3(parent: pointer, caption: struct_miqt_string, dir: pointer): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls3".}
proc fcQFileDialog_getOpenFileUrls4(parent: pointer, caption: struct_miqt_string, dir: pointer, filter: struct_miqt_string): struct_miqt_array {.importc: "QFileDialog_getOpenFileUrls4".}
proc fQFileDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFileDialog_virtualbase_metacall".}
proc fcQFileDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_metacall".}
proc fQFileDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFileDialog_virtualbase_setVisible".}
proc fcQFileDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_setVisible".}
proc fQFileDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QFileDialog_virtualbase_done".}
proc fcQFileDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_done".}
proc fQFileDialog_virtualbase_accept(self: pointer, ): void{.importc: "QFileDialog_virtualbase_accept".}
proc fcQFileDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_accept".}
proc fQFileDialog_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QFileDialog_virtualbase_changeEvent".}
proc fcQFileDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_changeEvent".}
proc fQFileDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_sizeHint".}
proc fcQFileDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_sizeHint".}
proc fQFileDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_minimumSizeHint".}
proc fcQFileDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_minimumSizeHint".}
proc fQFileDialog_virtualbase_open(self: pointer, ): void{.importc: "QFileDialog_virtualbase_open".}
proc fcQFileDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_open".}
proc fQFileDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QFileDialog_virtualbase_exec".}
proc fcQFileDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_exec".}
proc fQFileDialog_virtualbase_reject(self: pointer, ): void{.importc: "QFileDialog_virtualbase_reject".}
proc fcQFileDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_reject".}
proc fQFileDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_keyPressEvent".}
proc fcQFileDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_keyPressEvent".}
proc fQFileDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_closeEvent".}
proc fcQFileDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_closeEvent".}
proc fQFileDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_showEvent".}
proc fcQFileDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_showEvent".}
proc fQFileDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_resizeEvent".}
proc fcQFileDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_resizeEvent".}
proc fQFileDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_contextMenuEvent".}
proc fcQFileDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_contextMenuEvent".}
proc fQFileDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QFileDialog_virtualbase_eventFilter".}
proc fcQFileDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_eventFilter".}
proc fQFileDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QFileDialog_virtualbase_devType".}
proc fcQFileDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_devType".}
proc fQFileDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFileDialog_virtualbase_heightForWidth".}
proc fcQFileDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_heightForWidth".}
proc fQFileDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFileDialog_virtualbase_hasHeightForWidth".}
proc fcQFileDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_hasHeightForWidth".}
proc fQFileDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_paintEngine".}
proc fcQFileDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_paintEngine".}
proc fQFileDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileDialog_virtualbase_event".}
proc fcQFileDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_event".}
proc fQFileDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mousePressEvent".}
proc fcQFileDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mousePressEvent".}
proc fQFileDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mouseReleaseEvent".}
proc fcQFileDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mouseReleaseEvent".}
proc fQFileDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQFileDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mouseDoubleClickEvent".}
proc fQFileDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_mouseMoveEvent".}
proc fcQFileDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_mouseMoveEvent".}
proc fQFileDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_wheelEvent".}
proc fcQFileDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_wheelEvent".}
proc fQFileDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_keyReleaseEvent".}
proc fcQFileDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_keyReleaseEvent".}
proc fQFileDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_focusInEvent".}
proc fcQFileDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_focusInEvent".}
proc fQFileDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_focusOutEvent".}
proc fcQFileDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_focusOutEvent".}
proc fQFileDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_enterEvent".}
proc fcQFileDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_enterEvent".}
proc fQFileDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_leaveEvent".}
proc fcQFileDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_leaveEvent".}
proc fQFileDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_paintEvent".}
proc fcQFileDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_paintEvent".}
proc fQFileDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_moveEvent".}
proc fcQFileDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_moveEvent".}
proc fQFileDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_tabletEvent".}
proc fcQFileDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_tabletEvent".}
proc fQFileDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_actionEvent".}
proc fcQFileDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_actionEvent".}
proc fQFileDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dragEnterEvent".}
proc fcQFileDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dragEnterEvent".}
proc fQFileDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dragMoveEvent".}
proc fcQFileDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dragMoveEvent".}
proc fQFileDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dragLeaveEvent".}
proc fcQFileDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dragLeaveEvent".}
proc fQFileDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_dropEvent".}
proc fcQFileDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_dropEvent".}
proc fQFileDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_hideEvent".}
proc fcQFileDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_hideEvent".}
proc fQFileDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QFileDialog_virtualbase_nativeEvent".}
proc fcQFileDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_nativeEvent".}
proc fQFileDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFileDialog_virtualbase_metric".}
proc fcQFileDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_metric".}
proc fQFileDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFileDialog_virtualbase_initPainter".}
proc fcQFileDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_initPainter".}
proc fQFileDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFileDialog_virtualbase_redirected".}
proc fcQFileDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_redirected".}
proc fQFileDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFileDialog_virtualbase_sharedPainter".}
proc fcQFileDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_sharedPainter".}
proc fQFileDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFileDialog_virtualbase_inputMethodEvent".}
proc fcQFileDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_inputMethodEvent".}
proc fQFileDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFileDialog_virtualbase_inputMethodQuery".}
proc fcQFileDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_inputMethodQuery".}
proc fQFileDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFileDialog_virtualbase_focusNextPrevChild".}
proc fcQFileDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_focusNextPrevChild".}
proc fQFileDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_timerEvent".}
proc fcQFileDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_timerEvent".}
proc fQFileDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_childEvent".}
proc fcQFileDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_childEvent".}
proc fQFileDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileDialog_virtualbase_customEvent".}
proc fcQFileDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_customEvent".}
proc fQFileDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileDialog_virtualbase_connectNotify".}
proc fcQFileDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_connectNotify".}
proc fQFileDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileDialog_virtualbase_disconnectNotify".}
proc fcQFileDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileDialog_override_virtual_disconnectNotify".}
proc fcQFileDialog_delete(self: pointer) {.importc: "QFileDialog_delete".}


func init*(T: type QFileDialog, h: ptr cQFileDialog): QFileDialog =
  T(h: h)
proc create*(T: type QFileDialog, parent: gen_qwidget.QWidget): QFileDialog =

  QFileDialog.init(fcQFileDialog_new(parent.h))
proc create*(T: type QFileDialog, parent: gen_qwidget.QWidget, f: gen_qnamespace.WindowType): QFileDialog =

  QFileDialog.init(fcQFileDialog_new2(parent.h, cint(f)))
proc create*(T: type QFileDialog, ): QFileDialog =

  QFileDialog.init(fcQFileDialog_new3())
proc create*(T: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): QFileDialog =

  QFileDialog.init(fcQFileDialog_new4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))
proc create*(T: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, directory: string): QFileDialog =

  QFileDialog.init(fcQFileDialog_new5(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: directory, len: csize_t(len(directory)))))
proc create*(T: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, directory: string, filter: string): QFileDialog =

  QFileDialog.init(fcQFileDialog_new6(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: filter, len: csize_t(len(filter)))))
proc metaObject*(self: QFileDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFileDialog_metaObject(self.h))

proc metacast*(self: QFileDialog, param1: cstring): pointer =

  fcQFileDialog_metacast(self.h, param1)

proc metacall*(self: QFileDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFileDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFileDialog, s: cstring): string =

  let v_ms = fcQFileDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFileDialog, s: cstring): string =

  let v_ms = fcQFileDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDirectory*(self: QFileDialog, directory: string): void =

  fcQFileDialog_setDirectory(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc setDirectoryWithDirectory*(self: QFileDialog, directory: gen_qdir.QDir): void =

  fcQFileDialog_setDirectoryWithDirectory(self.h, directory.h)

proc directory*(self: QFileDialog, ): gen_qdir.QDir =

  gen_qdir.QDir(h: fcQFileDialog_directory(self.h))

proc setDirectoryUrl*(self: QFileDialog, directory: gen_qurl.QUrl): void =

  fcQFileDialog_setDirectoryUrl(self.h, directory.h)

proc directoryUrl*(self: QFileDialog, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_directoryUrl(self.h))

proc selectFile*(self: QFileDialog, filename: string): void =

  fcQFileDialog_selectFile(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc selectedFiles*(self: QFileDialog, ): seq[string] =

  var v_ma = fcQFileDialog_selectedFiles(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc selectUrl*(self: QFileDialog, url: gen_qurl.QUrl): void =

  fcQFileDialog_selectUrl(self.h, url.h)

proc selectedUrls*(self: QFileDialog, ): seq[gen_qurl.QUrl] =

  var v_ma = fcQFileDialog_selectedUrls(self.h)
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc setNameFilterDetailsVisible*(self: QFileDialog, enabled: bool): void =

  fcQFileDialog_setNameFilterDetailsVisible(self.h, enabled)

proc isNameFilterDetailsVisible*(self: QFileDialog, ): bool =

  fcQFileDialog_isNameFilterDetailsVisible(self.h)

proc setNameFilter*(self: QFileDialog, filter: string): void =

  fcQFileDialog_setNameFilter(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

proc setNameFilters*(self: QFileDialog, filters: seq[string]): void =

  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQFileDialog_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: QFileDialog, ): seq[string] =

  var v_ma = fcQFileDialog_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc selectNameFilter*(self: QFileDialog, filter: string): void =

  fcQFileDialog_selectNameFilter(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

proc selectedMimeTypeFilter*(self: QFileDialog, ): string =

  let v_ms = fcQFileDialog_selectedMimeTypeFilter(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedNameFilter*(self: QFileDialog, ): string =

  let v_ms = fcQFileDialog_selectedNameFilter(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMimeTypeFilters*(self: QFileDialog, filters: seq[string]): void =

  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQFileDialog_setMimeTypeFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc mimeTypeFilters*(self: QFileDialog, ): seq[string] =

  var v_ma = fcQFileDialog_mimeTypeFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc selectMimeTypeFilter*(self: QFileDialog, filter: string): void =

  fcQFileDialog_selectMimeTypeFilter(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

proc filter*(self: QFileDialog, ): gen_qdir.QDirFilter =

  gen_qdir.QDirFilter(fcQFileDialog_filter(self.h))

proc setFilter*(self: QFileDialog, filters: gen_qdir.QDirFilter): void =

  fcQFileDialog_setFilter(self.h, cint(filters))

proc setViewMode*(self: QFileDialog, mode: QFileDialogViewMode): void =

  fcQFileDialog_setViewMode(self.h, cint(mode))

proc viewMode*(self: QFileDialog, ): QFileDialogViewMode =

  QFileDialogViewMode(fcQFileDialog_viewMode(self.h))

proc setFileMode*(self: QFileDialog, mode: QFileDialogFileMode): void =

  fcQFileDialog_setFileMode(self.h, cint(mode))

proc fileMode*(self: QFileDialog, ): QFileDialogFileMode =

  QFileDialogFileMode(fcQFileDialog_fileMode(self.h))

proc setAcceptMode*(self: QFileDialog, mode: QFileDialogAcceptMode): void =

  fcQFileDialog_setAcceptMode(self.h, cint(mode))

proc acceptMode*(self: QFileDialog, ): QFileDialogAcceptMode =

  QFileDialogAcceptMode(fcQFileDialog_acceptMode(self.h))

proc setReadOnly*(self: QFileDialog, enabled: bool): void =

  fcQFileDialog_setReadOnly(self.h, enabled)

proc isReadOnly*(self: QFileDialog, ): bool =

  fcQFileDialog_isReadOnly(self.h)

proc setResolveSymlinks*(self: QFileDialog, enabled: bool): void =

  fcQFileDialog_setResolveSymlinks(self.h, enabled)

proc resolveSymlinks*(self: QFileDialog, ): bool =

  fcQFileDialog_resolveSymlinks(self.h)

proc setSidebarUrls*(self: QFileDialog, urls: seq[gen_qurl.QUrl]): void =

  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQFileDialog_setSidebarUrls(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc sidebarUrls*(self: QFileDialog, ): seq[gen_qurl.QUrl] =

  var v_ma = fcQFileDialog_sidebarUrls(self.h)
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc saveState*(self: QFileDialog, ): seq[byte] =

  var v_bytearray = fcQFileDialog_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: QFileDialog, state: seq[byte]): bool =

  fcQFileDialog_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc setConfirmOverwrite*(self: QFileDialog, enabled: bool): void =

  fcQFileDialog_setConfirmOverwrite(self.h, enabled)

proc confirmOverwrite*(self: QFileDialog, ): bool =

  fcQFileDialog_confirmOverwrite(self.h)

proc setDefaultSuffix*(self: QFileDialog, suffix: string): void =

  fcQFileDialog_setDefaultSuffix(self.h, struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc defaultSuffix*(self: QFileDialog, ): string =

  let v_ms = fcQFileDialog_defaultSuffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHistory*(self: QFileDialog, paths: seq[string]): void =

  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQFileDialog_setHistory(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc history*(self: QFileDialog, ): seq[string] =

  var v_ma = fcQFileDialog_history(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setItemDelegate*(self: QFileDialog, delegate: gen_qabstractitemdelegate.QAbstractItemDelegate): void =

  fcQFileDialog_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: QFileDialog, ): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQFileDialog_itemDelegate(self.h))

proc setIconProvider*(self: QFileDialog, provider: gen_qfileiconprovider.QFileIconProvider): void =

  fcQFileDialog_setIconProvider(self.h, provider.h)

proc iconProvider*(self: QFileDialog, ): gen_qfileiconprovider.QFileIconProvider =

  gen_qfileiconprovider.QFileIconProvider(h: fcQFileDialog_iconProvider(self.h))

proc setLabelText*(self: QFileDialog, label: QFileDialogDialogLabel, text: string): void =

  fcQFileDialog_setLabelText(self.h, cint(label), struct_miqt_string(data: text, len: csize_t(len(text))))

proc labelText*(self: QFileDialog, label: QFileDialogDialogLabel): string =

  let v_ms = fcQFileDialog_labelText(self.h, cint(label))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSupportedSchemes*(self: QFileDialog, schemes: seq[string]): void =

  var schemes_CArray = newSeq[struct_miqt_string](len(schemes))
  for i in 0..<len(schemes):
    schemes_CArray[i] = struct_miqt_string(data: schemes[i], len: csize_t(len(schemes[i])))

  fcQFileDialog_setSupportedSchemes(self.h, struct_miqt_array(len: csize_t(len(schemes)), data: if len(schemes) == 0: nil else: addr(schemes_CArray[0])))

proc supportedSchemes*(self: QFileDialog, ): seq[string] =

  var v_ma = fcQFileDialog_supportedSchemes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setProxyModel*(self: QFileDialog, model: gen_qabstractproxymodel.QAbstractProxyModel): void =

  fcQFileDialog_setProxyModel(self.h, model.h)

proc proxyModel*(self: QFileDialog, ): gen_qabstractproxymodel.QAbstractProxyModel =

  gen_qabstractproxymodel.QAbstractProxyModel(h: fcQFileDialog_proxyModel(self.h))

proc setOption*(self: QFileDialog, option: QFileDialogOption): void =

  fcQFileDialog_setOption(self.h, cint(option))

proc testOption*(self: QFileDialog, option: QFileDialogOption): bool =

  fcQFileDialog_testOption(self.h, cint(option))

proc setOptions*(self: QFileDialog, options: QFileDialogOption): void =

  fcQFileDialog_setOptions(self.h, cint(options))

proc options*(self: QFileDialog, ): QFileDialogOption =

  QFileDialogOption(fcQFileDialog_options(self.h))

proc setVisible*(self: QFileDialog, visible: bool): void =

  fcQFileDialog_setVisible(self.h, visible)

proc fileSelected*(self: QFileDialog, file: string): void =

  fcQFileDialog_fileSelected(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc miqt_exec_callback_QFileDialog_fileSelected(slot: int, file: struct_miqt_string) {.exportc.} =
  type Cb = proc(file: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vfile_ms = file
  let vfilex_ret = string.fromBytes(toOpenArrayByte(vfile_ms.data, 0, int(vfile_ms.len)-1))
  c_free(vfile_ms.data)
  let slotval1 = vfilex_ret


  nimfunc[](slotval1)

proc onfileSelected*(self: QFileDialog, slot: proc(file: string)) =
  type Cb = proc(file: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_fileSelected(self.h, cast[int](addr tmp[]))
proc filesSelected*(self: QFileDialog, files: seq[string]): void =

  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: files[i], len: csize_t(len(files[i])))

  fcQFileDialog_filesSelected(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))

proc miqt_exec_callback_QFileDialog_filesSelected(slot: int, files: struct_miqt_array) {.exportc.} =
  type Cb = proc(files: seq[string])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vfiles_ma = files
  var vfilesx_ret = newSeq[string](int(vfiles_ma.len))
  let vfiles_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vfiles_ma.data)
  for i in 0 ..< vfiles_ma.len:
    let vfiles_lv_ms = vfiles_outCast[i]
    let vfiles_lvx_ret = string.fromBytes(toOpenArrayByte(vfiles_lv_ms.data, 0, int(vfiles_lv_ms.len)-1))
    c_free(vfiles_lv_ms.data)
    vfilesx_ret[i] = vfiles_lvx_ret
  let slotval1 = vfilesx_ret


  nimfunc[](slotval1)

proc onfilesSelected*(self: QFileDialog, slot: proc(files: seq[string])) =
  type Cb = proc(files: seq[string])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_filesSelected(self.h, cast[int](addr tmp[]))
proc currentChanged*(self: QFileDialog, path: string): void =

  fcQFileDialog_currentChanged(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc miqt_exec_callback_QFileDialog_currentChanged(slot: int, path: struct_miqt_string) {.exportc.} =
  type Cb = proc(path: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret


  nimfunc[](slotval1)

proc oncurrentChanged*(self: QFileDialog, slot: proc(path: string)) =
  type Cb = proc(path: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_currentChanged(self.h, cast[int](addr tmp[]))
proc directoryEntered*(self: QFileDialog, directory: string): void =

  fcQFileDialog_directoryEntered(self.h, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc miqt_exec_callback_QFileDialog_directoryEntered(slot: int, directory: struct_miqt_string) {.exportc.} =
  type Cb = proc(directory: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vdirectory_ms = directory
  let vdirectoryx_ret = string.fromBytes(toOpenArrayByte(vdirectory_ms.data, 0, int(vdirectory_ms.len)-1))
  c_free(vdirectory_ms.data)
  let slotval1 = vdirectoryx_ret


  nimfunc[](slotval1)

proc ondirectoryEntered*(self: QFileDialog, slot: proc(directory: string)) =
  type Cb = proc(directory: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_directoryEntered(self.h, cast[int](addr tmp[]))
proc urlSelected*(self: QFileDialog, url: gen_qurl.QUrl): void =

  fcQFileDialog_urlSelected(self.h, url.h)

proc miqt_exec_callback_QFileDialog_urlSelected(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc onurlSelected*(self: QFileDialog, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_urlSelected(self.h, cast[int](addr tmp[]))
proc urlsSelected*(self: QFileDialog, urls: seq[gen_qurl.QUrl]): void =

  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQFileDialog_urlsSelected(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc miqt_exec_callback_QFileDialog_urlsSelected(slot: int, urls: struct_miqt_array) {.exportc.} =
  type Cb = proc(urls: seq[gen_qurl.QUrl])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vurls_ma = urls
  var vurlsx_ret = newSeq[gen_qurl.QUrl](int(vurls_ma.len))
  let vurls_outCast = cast[ptr UncheckedArray[pointer]](vurls_ma.data)
  for i in 0 ..< vurls_ma.len:
    vurlsx_ret[i] = gen_qurl.QUrl(h: vurls_outCast[i])
  let slotval1 = vurlsx_ret


  nimfunc[](slotval1)

proc onurlsSelected*(self: QFileDialog, slot: proc(urls: seq[gen_qurl.QUrl])) =
  type Cb = proc(urls: seq[gen_qurl.QUrl])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_urlsSelected(self.h, cast[int](addr tmp[]))
proc currentUrlChanged*(self: QFileDialog, url: gen_qurl.QUrl): void =

  fcQFileDialog_currentUrlChanged(self.h, url.h)

proc miqt_exec_callback_QFileDialog_currentUrlChanged(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc oncurrentUrlChanged*(self: QFileDialog, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_currentUrlChanged(self.h, cast[int](addr tmp[]))
proc directoryUrlEntered*(self: QFileDialog, directory: gen_qurl.QUrl): void =

  fcQFileDialog_directoryUrlEntered(self.h, directory.h)

proc miqt_exec_callback_QFileDialog_directoryUrlEntered(slot: int, directory: pointer) {.exportc.} =
  type Cb = proc(directory: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: directory)


  nimfunc[](slotval1)

proc ondirectoryUrlEntered*(self: QFileDialog, slot: proc(directory: gen_qurl.QUrl)) =
  type Cb = proc(directory: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_directoryUrlEntered(self.h, cast[int](addr tmp[]))
proc filterSelected*(self: QFileDialog, filter: string): void =

  fcQFileDialog_filterSelected(self.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))

proc miqt_exec_callback_QFileDialog_filterSelected(slot: int, filter: struct_miqt_string) {.exportc.} =
  type Cb = proc(filter: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vfilter_ms = filter
  let vfilterx_ret = string.fromBytes(toOpenArrayByte(vfilter_ms.data, 0, int(vfilter_ms.len)-1))
  c_free(vfilter_ms.data)
  let slotval1 = vfilterx_ret


  nimfunc[](slotval1)

proc onfilterSelected*(self: QFileDialog, slot: proc(filter: string)) =
  type Cb = proc(filter: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileDialog_connect_filterSelected(self.h, cast[int](addr tmp[]))
proc getOpenFileName*(_: type QFileDialog, ): string =

  let v_ms = fcQFileDialog_getOpenFileName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileUrl*(_: type QFileDialog, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getOpenFileUrl())

proc getSaveFileName*(_: type QFileDialog, ): string =

  let v_ms = fcQFileDialog_getSaveFileName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileUrl*(_: type QFileDialog, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getSaveFileUrl())

proc getExistingDirectory*(_: type QFileDialog, ): string =

  let v_ms = fcQFileDialog_getExistingDirectory()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectoryUrl*(_: type QFileDialog, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getExistingDirectoryUrl())

proc getOpenFileNames*(_: type QFileDialog, ): seq[string] =

  var v_ma = fcQFileDialog_getOpenFileNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileUrls*(_: type QFileDialog, ): seq[gen_qurl.QUrl] =

  var v_ma = fcQFileDialog_getOpenFileUrls()
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc saveFileContent*(_: type QFileDialog, fileContent: seq[byte], fileNameHint: string): void =

  fcQFileDialog_saveFileContent(struct_miqt_string(data: cast[cstring](if len(fileContent) == 0: nil else: unsafeAddr fileContent[0]), len: csize_t(len(fileContent))), struct_miqt_string(data: fileNameHint, len: csize_t(len(fileNameHint))))

proc tr2*(_: type QFileDialog, s: cstring, c: cstring): string =

  let v_ms = fcQFileDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFileDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFileDialog, s: cstring, c: cstring): string =

  let v_ms = fcQFileDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFileDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption2*(self: QFileDialog, option: QFileDialogOption, on: bool): void =

  fcQFileDialog_setOption2(self.h, cint(option), on)

proc getOpenFileName1*(_: type QFileDialog, parent: gen_qwidget.QWidget): string =

  let v_ms = fcQFileDialog_getOpenFileName1(parent.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): string =

  let v_ms = fcQFileDialog_getOpenFileName2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string): string =

  let v_ms = fcQFileDialog_getOpenFileName3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileName4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string, filter: string): string =

  let v_ms = fcQFileDialog_getOpenFileName4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), struct_miqt_string(data: filter, len: csize_t(len(filter))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getOpenFileUrl1*(_: type QFileDialog, parent: gen_qwidget.QWidget): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getOpenFileUrl1(parent.h))

proc getOpenFileUrl2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getOpenFileUrl2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc getOpenFileUrl3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getOpenFileUrl3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h))

proc getOpenFileUrl4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl, filter: string): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getOpenFileUrl4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: filter, len: csize_t(len(filter)))))

proc getSaveFileName1*(_: type QFileDialog, parent: gen_qwidget.QWidget): string =

  let v_ms = fcQFileDialog_getSaveFileName1(parent.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): string =

  let v_ms = fcQFileDialog_getSaveFileName2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string): string =

  let v_ms = fcQFileDialog_getSaveFileName3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileName4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string, filter: string): string =

  let v_ms = fcQFileDialog_getSaveFileName4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), struct_miqt_string(data: filter, len: csize_t(len(filter))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getSaveFileUrl1*(_: type QFileDialog, parent: gen_qwidget.QWidget): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getSaveFileUrl1(parent.h))

proc getSaveFileUrl2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getSaveFileUrl2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc getSaveFileUrl3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getSaveFileUrl3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h))

proc getSaveFileUrl4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl, filter: string): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getSaveFileUrl4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: filter, len: csize_t(len(filter)))))

proc getExistingDirectory1*(_: type QFileDialog, parent: gen_qwidget.QWidget): string =

  let v_ms = fcQFileDialog_getExistingDirectory1(parent.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): string =

  let v_ms = fcQFileDialog_getExistingDirectory2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string): string =

  let v_ms = fcQFileDialog_getExistingDirectory3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectory4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string, options: QFileDialogOption): string =

  let v_ms = fcQFileDialog_getExistingDirectory4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getExistingDirectoryUrl1*(_: type QFileDialog, parent: gen_qwidget.QWidget): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getExistingDirectoryUrl1(parent.h))

proc getExistingDirectoryUrl2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getExistingDirectoryUrl2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption)))))

proc getExistingDirectoryUrl3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getExistingDirectoryUrl3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h))

proc getExistingDirectoryUrl4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl, options: QFileDialogOption): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileDialog_getExistingDirectoryUrl4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, cint(options)))

proc getExistingDirectoryUrl5*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl, options: QFileDialogOption, supportedSchemes: seq[string]): gen_qurl.QUrl =

  var supportedSchemes_CArray = newSeq[struct_miqt_string](len(supportedSchemes))
  for i in 0..<len(supportedSchemes):
    supportedSchemes_CArray[i] = struct_miqt_string(data: supportedSchemes[i], len: csize_t(len(supportedSchemes[i])))

  gen_qurl.QUrl(h: fcQFileDialog_getExistingDirectoryUrl5(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, cint(options), struct_miqt_array(len: csize_t(len(supportedSchemes)), data: if len(supportedSchemes) == 0: nil else: addr(supportedSchemes_CArray[0]))))

proc getOpenFileNames1*(_: type QFileDialog, parent: gen_qwidget.QWidget): seq[string] =

  var v_ma = fcQFileDialog_getOpenFileNames1(parent.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileNames2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): seq[string] =

  var v_ma = fcQFileDialog_getOpenFileNames2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileNames3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string): seq[string] =

  var v_ma = fcQFileDialog_getOpenFileNames3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileNames4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: string, filter: string): seq[string] =

  var v_ma = fcQFileDialog_getOpenFileNames4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), struct_miqt_string(data: dir, len: csize_t(len(dir))), struct_miqt_string(data: filter, len: csize_t(len(filter))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc getOpenFileUrls1*(_: type QFileDialog, parent: gen_qwidget.QWidget): seq[gen_qurl.QUrl] =

  var v_ma = fcQFileDialog_getOpenFileUrls1(parent.h)
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc getOpenFileUrls2*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string): seq[gen_qurl.QUrl] =

  var v_ma = fcQFileDialog_getOpenFileUrls2(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))))
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc getOpenFileUrls3*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl): seq[gen_qurl.QUrl] =

  var v_ma = fcQFileDialog_getOpenFileUrls3(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h)
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc getOpenFileUrls4*(_: type QFileDialog, parent: gen_qwidget.QWidget, caption: string, dir: gen_qurl.QUrl, filter: string): seq[gen_qurl.QUrl] =

  var v_ma = fcQFileDialog_getOpenFileUrls4(parent.h, struct_miqt_string(data: caption, len: csize_t(len(caption))), dir.h, struct_miqt_string(data: filter, len: csize_t(len(filter))))
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc callVirtualBase_metacall(self: QFileDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFileDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFileDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFileDialog, slot: proc(super: QFileDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_metacall(self: ptr cQFileDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFileDialog_metacall ".} =
  type Cb = proc(super: QFileDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFileDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setVisible(self: QFileDialog, visible: bool): void =


  fQFileDialog_virtualbase_setVisible(self.h, visible)

type QFileDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QFileDialog, slot: proc(super: QFileDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_setVisible(self: ptr cQFileDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFileDialog_setVisible ".} =
  type Cb = proc(super: QFileDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QFileDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_done(self: QFileDialog, resultVal: cint): void =


  fQFileDialog_virtualbase_done(self.h, resultVal)

type QFileDialogdoneBase* = proc(resultVal: cint): void
proc ondone*(self: QFileDialog, slot: proc(super: QFileDialogdoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogdoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_done(self: ptr cQFileDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QFileDialog_done ".} =
  type Cb = proc(super: QFileDialogdoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QFileDialog(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_accept(self: QFileDialog, ): void =


  fQFileDialog_virtualbase_accept(self.h)

type QFileDialogacceptBase* = proc(): void
proc onaccept*(self: QFileDialog, slot: proc(super: QFileDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_accept(self: ptr cQFileDialog, slot: int): void {.exportc: "miqt_exec_callback_QFileDialog_accept ".} =
  type Cb = proc(super: QFileDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QFileDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_changeEvent(self: QFileDialog, e: gen_qcoreevent.QEvent): void =


  fQFileDialog_virtualbase_changeEvent(self.h, e.h)

type QFileDialogchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QFileDialog, slot: proc(super: QFileDialogchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_changeEvent(self: ptr cQFileDialog, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_changeEvent ".} =
  type Cb = proc(super: QFileDialogchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QFileDialog(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QFileDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFileDialog_virtualbase_sizeHint(self.h))

type QFileDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QFileDialog, slot: proc(super: QFileDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_sizeHint(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_sizeHint ".} =
  type Cb = proc(super: QFileDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QFileDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QFileDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFileDialog_virtualbase_minimumSizeHint(self.h))

type QFileDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QFileDialog, slot: proc(super: QFileDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_minimumSizeHint(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_minimumSizeHint ".} =
  type Cb = proc(super: QFileDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QFileDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QFileDialog, ): void =


  fQFileDialog_virtualbase_open(self.h)

type QFileDialogopenBase* = proc(): void
proc onopen*(self: QFileDialog, slot: proc(super: QFileDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_open(self: ptr cQFileDialog, slot: int): void {.exportc: "miqt_exec_callback_QFileDialog_open ".} =
  type Cb = proc(super: QFileDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QFileDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QFileDialog, ): cint =


  fQFileDialog_virtualbase_exec(self.h)

type QFileDialogexecBase* = proc(): cint
proc onexec*(self: QFileDialog, slot: proc(super: QFileDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_exec(self: ptr cQFileDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFileDialog_exec ".} =
  type Cb = proc(super: QFileDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QFileDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reject(self: QFileDialog, ): void =


  fQFileDialog_virtualbase_reject(self.h)

type QFileDialogrejectBase* = proc(): void
proc onreject*(self: QFileDialog, slot: proc(super: QFileDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_reject(self: ptr cQFileDialog, slot: int): void {.exportc: "miqt_exec_callback_QFileDialog_reject ".} =
  type Cb = proc(super: QFileDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QFileDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QFileDialog, param1: gen_qevent.QKeyEvent): void =


  fQFileDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QFileDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QFileDialog, slot: proc(super: QFileDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_keyPressEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_keyPressEvent ".} =
  type Cb = proc(super: QFileDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QFileDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QFileDialog, param1: gen_qevent.QCloseEvent): void =


  fQFileDialog_virtualbase_closeEvent(self.h, param1.h)

type QFileDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QFileDialog, slot: proc(super: QFileDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_closeEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_closeEvent ".} =
  type Cb = proc(super: QFileDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QFileDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QFileDialog, param1: gen_qevent.QShowEvent): void =


  fQFileDialog_virtualbase_showEvent(self.h, param1.h)

type QFileDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QFileDialog, slot: proc(super: QFileDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_showEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_showEvent ".} =
  type Cb = proc(super: QFileDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QFileDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QFileDialog, param1: gen_qevent.QResizeEvent): void =


  fQFileDialog_virtualbase_resizeEvent(self.h, param1.h)

type QFileDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QFileDialog, slot: proc(super: QFileDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_resizeEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_resizeEvent ".} =
  type Cb = proc(super: QFileDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QFileDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QFileDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQFileDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QFileDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QFileDialog, slot: proc(super: QFileDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_contextMenuEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_contextMenuEvent ".} =
  type Cb = proc(super: QFileDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QFileDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QFileDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQFileDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QFileDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFileDialog, slot: proc(super: QFileDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_eventFilter(self: ptr cQFileDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QFileDialog_eventFilter ".} =
  type Cb = proc(super: QFileDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFileDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QFileDialog, ): cint =


  fQFileDialog_virtualbase_devType(self.h)

type QFileDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QFileDialog, slot: proc(super: QFileDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_devType(self: ptr cQFileDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFileDialog_devType ".} =
  type Cb = proc(super: QFileDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QFileDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QFileDialog, param1: cint): cint =


  fQFileDialog_virtualbase_heightForWidth(self.h, param1)

type QFileDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QFileDialog, slot: proc(super: QFileDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_heightForWidth(self: ptr cQFileDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFileDialog_heightForWidth ".} =
  type Cb = proc(super: QFileDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QFileDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QFileDialog, ): bool =


  fQFileDialog_virtualbase_hasHeightForWidth(self.h)

type QFileDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QFileDialog, slot: proc(super: QFileDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_hasHeightForWidth(self: ptr cQFileDialog, slot: int): bool {.exportc: "miqt_exec_callback_QFileDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QFileDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QFileDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QFileDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQFileDialog_virtualbase_paintEngine(self.h))

type QFileDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QFileDialog, slot: proc(super: QFileDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_paintEngine(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_paintEngine ".} =
  type Cb = proc(super: QFileDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QFileDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QFileDialog, event: gen_qcoreevent.QEvent): bool =


  fQFileDialog_virtualbase_event(self.h, event.h)

type QFileDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFileDialog, slot: proc(super: QFileDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_event(self: ptr cQFileDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileDialog_event ".} =
  type Cb = proc(super: QFileDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFileDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QFileDialog, event: gen_qevent.QMouseEvent): void =


  fQFileDialog_virtualbase_mousePressEvent(self.h, event.h)

type QFileDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QFileDialog, slot: proc(super: QFileDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mousePressEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mousePressEvent ".} =
  type Cb = proc(super: QFileDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QFileDialog, event: gen_qevent.QMouseEvent): void =


  fQFileDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFileDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QFileDialog, slot: proc(super: QFileDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mouseReleaseEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QFileDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QFileDialog, event: gen_qevent.QMouseEvent): void =


  fQFileDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFileDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QFileDialog, slot: proc(super: QFileDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mouseDoubleClickEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QFileDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QFileDialog, event: gen_qevent.QMouseEvent): void =


  fQFileDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QFileDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QFileDialog, slot: proc(super: QFileDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_mouseMoveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QFileDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QFileDialog, event: gen_qevent.QWheelEvent): void =


  fQFileDialog_virtualbase_wheelEvent(self.h, event.h)

type QFileDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QFileDialog, slot: proc(super: QFileDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_wheelEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_wheelEvent ".} =
  type Cb = proc(super: QFileDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QFileDialog, event: gen_qevent.QKeyEvent): void =


  fQFileDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QFileDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QFileDialog, slot: proc(super: QFileDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_keyReleaseEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QFileDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QFileDialog, event: gen_qevent.QFocusEvent): void =


  fQFileDialog_virtualbase_focusInEvent(self.h, event.h)

type QFileDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QFileDialog, slot: proc(super: QFileDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_focusInEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_focusInEvent ".} =
  type Cb = proc(super: QFileDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QFileDialog, event: gen_qevent.QFocusEvent): void =


  fQFileDialog_virtualbase_focusOutEvent(self.h, event.h)

type QFileDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QFileDialog, slot: proc(super: QFileDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_focusOutEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_focusOutEvent ".} =
  type Cb = proc(super: QFileDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QFileDialog, event: gen_qcoreevent.QEvent): void =


  fQFileDialog_virtualbase_enterEvent(self.h, event.h)

type QFileDialogenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QFileDialog, slot: proc(super: QFileDialogenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_enterEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_enterEvent ".} =
  type Cb = proc(super: QFileDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QFileDialog, event: gen_qcoreevent.QEvent): void =


  fQFileDialog_virtualbase_leaveEvent(self.h, event.h)

type QFileDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QFileDialog, slot: proc(super: QFileDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_leaveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_leaveEvent ".} =
  type Cb = proc(super: QFileDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QFileDialog, event: gen_qevent.QPaintEvent): void =


  fQFileDialog_virtualbase_paintEvent(self.h, event.h)

type QFileDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QFileDialog, slot: proc(super: QFileDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_paintEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_paintEvent ".} =
  type Cb = proc(super: QFileDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QFileDialog, event: gen_qevent.QMoveEvent): void =


  fQFileDialog_virtualbase_moveEvent(self.h, event.h)

type QFileDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QFileDialog, slot: proc(super: QFileDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_moveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_moveEvent ".} =
  type Cb = proc(super: QFileDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QFileDialog, event: gen_qevent.QTabletEvent): void =


  fQFileDialog_virtualbase_tabletEvent(self.h, event.h)

type QFileDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QFileDialog, slot: proc(super: QFileDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_tabletEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_tabletEvent ".} =
  type Cb = proc(super: QFileDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QFileDialog, event: gen_qevent.QActionEvent): void =


  fQFileDialog_virtualbase_actionEvent(self.h, event.h)

type QFileDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QFileDialog, slot: proc(super: QFileDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_actionEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_actionEvent ".} =
  type Cb = proc(super: QFileDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QFileDialog, event: gen_qevent.QDragEnterEvent): void =


  fQFileDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QFileDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QFileDialog, slot: proc(super: QFileDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dragEnterEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dragEnterEvent ".} =
  type Cb = proc(super: QFileDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QFileDialog, event: gen_qevent.QDragMoveEvent): void =


  fQFileDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QFileDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QFileDialog, slot: proc(super: QFileDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dragMoveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dragMoveEvent ".} =
  type Cb = proc(super: QFileDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QFileDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQFileDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QFileDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QFileDialog, slot: proc(super: QFileDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dragLeaveEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QFileDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QFileDialog, event: gen_qevent.QDropEvent): void =


  fQFileDialog_virtualbase_dropEvent(self.h, event.h)

type QFileDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QFileDialog, slot: proc(super: QFileDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_dropEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_dropEvent ".} =
  type Cb = proc(super: QFileDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QFileDialog, event: gen_qevent.QHideEvent): void =


  fQFileDialog_virtualbase_hideEvent(self.h, event.h)

type QFileDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QFileDialog, slot: proc(super: QFileDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_hideEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_hideEvent ".} =
  type Cb = proc(super: QFileDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QFileDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQFileDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFileDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QFileDialog, slot: proc(super: QFileDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_nativeEvent(self: ptr cQFileDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QFileDialog_nativeEvent ".} =
  type Cb = proc(super: QFileDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QFileDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QFileDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQFileDialog_virtualbase_metric(self.h, cint(param1))

type QFileDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QFileDialog, slot: proc(super: QFileDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_metric(self: ptr cQFileDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFileDialog_metric ".} =
  type Cb = proc(super: QFileDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QFileDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QFileDialog, painter: gen_qpainter.QPainter): void =


  fQFileDialog_virtualbase_initPainter(self.h, painter.h)

type QFileDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QFileDialog, slot: proc(super: QFileDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_initPainter(self: ptr cQFileDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_initPainter ".} =
  type Cb = proc(super: QFileDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QFileDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QFileDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQFileDialog_virtualbase_redirected(self.h, offset.h))

type QFileDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QFileDialog, slot: proc(super: QFileDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_redirected(self: ptr cQFileDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFileDialog_redirected ".} =
  type Cb = proc(super: QFileDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QFileDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QFileDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQFileDialog_virtualbase_sharedPainter(self.h))

type QFileDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QFileDialog, slot: proc(super: QFileDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_sharedPainter(self: ptr cQFileDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFileDialog_sharedPainter ".} =
  type Cb = proc(super: QFileDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QFileDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QFileDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQFileDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QFileDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QFileDialog, slot: proc(super: QFileDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_inputMethodEvent(self: ptr cQFileDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_inputMethodEvent ".} =
  type Cb = proc(super: QFileDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QFileDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QFileDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQFileDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFileDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QFileDialog, slot: proc(super: QFileDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QFileDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_inputMethodQuery(self: ptr cQFileDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFileDialog_inputMethodQuery ".} =
  type Cb = proc(super: QFileDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QFileDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QFileDialog, next: bool): bool =


  fQFileDialog_virtualbase_focusNextPrevChild(self.h, next)

type QFileDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QFileDialog, slot: proc(super: QFileDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_focusNextPrevChild(self: ptr cQFileDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFileDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QFileDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QFileDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFileDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQFileDialog_virtualbase_timerEvent(self.h, event.h)

type QFileDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFileDialog, slot: proc(super: QFileDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_timerEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_timerEvent ".} =
  type Cb = proc(super: QFileDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFileDialog, event: gen_qcoreevent.QChildEvent): void =


  fQFileDialog_virtualbase_childEvent(self.h, event.h)

type QFileDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFileDialog, slot: proc(super: QFileDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_childEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_childEvent ".} =
  type Cb = proc(super: QFileDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFileDialog, event: gen_qcoreevent.QEvent): void =


  fQFileDialog_virtualbase_customEvent(self.h, event.h)

type QFileDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFileDialog, slot: proc(super: QFileDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_customEvent(self: ptr cQFileDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_customEvent ".} =
  type Cb = proc(super: QFileDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFileDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFileDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileDialog_virtualbase_connectNotify(self.h, signal.h)

type QFileDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFileDialog, slot: proc(super: QFileDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_connectNotify(self: ptr cQFileDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_connectNotify ".} =
  type Cb = proc(super: QFileDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFileDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFileDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QFileDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFileDialog, slot: proc(super: QFileDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileDialog_disconnectNotify(self: ptr cQFileDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileDialog_disconnectNotify ".} =
  type Cb = proc(super: QFileDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFileDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QFileDialog) =
  fcQFileDialog_delete(self.h)
