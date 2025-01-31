import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
{.compile("gen_qsciscintillabase.cpp", cflags).}


type QsciScintillaBaseEnumEnum* = distinct cint
template SCI_START*(_: type QsciScintillaBaseEnumEnum): untyped = 2000
template SCI_OPTIONAL_START*(_: type QsciScintillaBaseEnumEnum): untyped = 3000
template SCI_LEXER_START*(_: type QsciScintillaBaseEnumEnum): untyped = 4000
template SCI_ADDTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2001
template SCI_ADDSTYLEDTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2002
template SCI_INSERTTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2003
template SCI_CLEARALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2004
template SCI_CLEARDOCUMENTSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2005
template SCI_GETLENGTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2006
template SCI_GETCHARAT*(_: type QsciScintillaBaseEnumEnum): untyped = 2007
template SCI_GETCURRENTPOS*(_: type QsciScintillaBaseEnumEnum): untyped = 2008
template SCI_GETANCHOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2009
template SCI_GETSTYLEAT*(_: type QsciScintillaBaseEnumEnum): untyped = 2010
template SCI_REDO*(_: type QsciScintillaBaseEnumEnum): untyped = 2011
template SCI_SETUNDOCOLLECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2012
template SCI_SELECTALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2013
template SCI_SETSAVEPOINT*(_: type QsciScintillaBaseEnumEnum): untyped = 2014
template SCI_GETSTYLEDTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2015
template SCI_CANREDO*(_: type QsciScintillaBaseEnumEnum): untyped = 2016
template SCI_MARKERLINEFROMHANDLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2017
template SCI_MARKERDELETEHANDLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2018
template SCI_GETUNDOCOLLECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2019
template SCI_GETVIEWWS*(_: type QsciScintillaBaseEnumEnum): untyped = 2020
template SCI_SETVIEWWS*(_: type QsciScintillaBaseEnumEnum): untyped = 2021
template SCI_POSITIONFROMPOINT*(_: type QsciScintillaBaseEnumEnum): untyped = 2022
template SCI_POSITIONFROMPOINTCLOSE*(_: type QsciScintillaBaseEnumEnum): untyped = 2023
template SCI_GOTOLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2024
template SCI_GOTOPOS*(_: type QsciScintillaBaseEnumEnum): untyped = 2025
template SCI_SETANCHOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2026
template SCI_GETCURLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2027
template SCI_GETENDSTYLED*(_: type QsciScintillaBaseEnumEnum): untyped = 2028
template SCI_CONVERTEOLS*(_: type QsciScintillaBaseEnumEnum): untyped = 2029
template SCI_GETEOLMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2030
template SCI_SETEOLMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2031
template SCI_STARTSTYLING*(_: type QsciScintillaBaseEnumEnum): untyped = 2032
template SCI_SETSTYLING*(_: type QsciScintillaBaseEnumEnum): untyped = 2033
template SCI_GETBUFFEREDDRAW*(_: type QsciScintillaBaseEnumEnum): untyped = 2034
template SCI_SETBUFFEREDDRAW*(_: type QsciScintillaBaseEnumEnum): untyped = 2035
template SCI_SETTABWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2036
template SCI_GETTABWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2121
template SCI_SETCODEPAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2037
template SCI_MARKERDEFINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2040
template SCI_MARKERSETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2041
template SCI_MARKERSETBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2042
template SCI_MARKERADD*(_: type QsciScintillaBaseEnumEnum): untyped = 2043
template SCI_MARKERDELETE*(_: type QsciScintillaBaseEnumEnum): untyped = 2044
template SCI_MARKERDELETEALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2045
template SCI_MARKERGET*(_: type QsciScintillaBaseEnumEnum): untyped = 2046
template SCI_MARKERNEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2047
template SCI_MARKERPREVIOUS*(_: type QsciScintillaBaseEnumEnum): untyped = 2048
template SCI_MARKERDEFINEPIXMAP*(_: type QsciScintillaBaseEnumEnum): untyped = 2049
template SCI_SETMARGINTYPEN*(_: type QsciScintillaBaseEnumEnum): untyped = 2240
template SCI_GETMARGINTYPEN*(_: type QsciScintillaBaseEnumEnum): untyped = 2241
template SCI_SETMARGINWIDTHN*(_: type QsciScintillaBaseEnumEnum): untyped = 2242
template SCI_GETMARGINWIDTHN*(_: type QsciScintillaBaseEnumEnum): untyped = 2243
template SCI_SETMARGINMASKN*(_: type QsciScintillaBaseEnumEnum): untyped = 2244
template SCI_GETMARGINMASKN*(_: type QsciScintillaBaseEnumEnum): untyped = 2245
template SCI_SETMARGINSENSITIVEN*(_: type QsciScintillaBaseEnumEnum): untyped = 2246
template SCI_GETMARGINSENSITIVEN*(_: type QsciScintillaBaseEnumEnum): untyped = 2247
template SCI_SETMARGINCURSORN*(_: type QsciScintillaBaseEnumEnum): untyped = 2248
template SCI_GETMARGINCURSORN*(_: type QsciScintillaBaseEnumEnum): untyped = 2249
template SCI_STYLECLEARALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2050
template SCI_STYLESETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2051
template SCI_STYLESETBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2052
template SCI_STYLESETBOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 2053
template SCI_STYLESETITALIC*(_: type QsciScintillaBaseEnumEnum): untyped = 2054
template SCI_STYLESETSIZE*(_: type QsciScintillaBaseEnumEnum): untyped = 2055
template SCI_STYLESETFONT*(_: type QsciScintillaBaseEnumEnum): untyped = 2056
template SCI_STYLESETEOLFILLED*(_: type QsciScintillaBaseEnumEnum): untyped = 2057
template SCI_STYLERESETDEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 2058
template SCI_STYLESETUNDERLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2059
template SCI_STYLESETCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 2060
template SCI_STYLESETSIZEFRACTIONAL*(_: type QsciScintillaBaseEnumEnum): untyped = 2061
template SCI_STYLEGETSIZEFRACTIONAL*(_: type QsciScintillaBaseEnumEnum): untyped = 2062
template SCI_STYLESETWEIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2063
template SCI_STYLEGETWEIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2064
template SCI_STYLESETCHARACTERSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2066
template SCI_SETSELFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2067
template SCI_SETSELBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2068
template SCI_SETCARETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2069
template SCI_ASSIGNCMDKEY*(_: type QsciScintillaBaseEnumEnum): untyped = 2070
template SCI_CLEARCMDKEY*(_: type QsciScintillaBaseEnumEnum): untyped = 2071
template SCI_CLEARALLCMDKEYS*(_: type QsciScintillaBaseEnumEnum): untyped = 2072
template SCI_SETSTYLINGEX*(_: type QsciScintillaBaseEnumEnum): untyped = 2073
template SCI_STYLESETVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2074
template SCI_GETCARETPERIOD*(_: type QsciScintillaBaseEnumEnum): untyped = 2075
template SCI_SETCARETPERIOD*(_: type QsciScintillaBaseEnumEnum): untyped = 2076
template SCI_SETWORDCHARS*(_: type QsciScintillaBaseEnumEnum): untyped = 2077
template SCI_BEGINUNDOACTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2078
template SCI_ENDUNDOACTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2079
template SCI_INDICSETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2080
template SCI_INDICGETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2081
template SCI_INDICSETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2082
template SCI_INDICGETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2083
template SCI_SETWHITESPACEFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2084
template SCI_SETWHITESPACEBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2085
template SCI_SETWHITESPACESIZE*(_: type QsciScintillaBaseEnumEnum): untyped = 2086
template SCI_GETWHITESPACESIZE*(_: type QsciScintillaBaseEnumEnum): untyped = 2087
template SCI_SETSTYLEBITS*(_: type QsciScintillaBaseEnumEnum): untyped = 2090
template SCI_GETSTYLEBITS*(_: type QsciScintillaBaseEnumEnum): untyped = 2091
template SCI_SETLINESTATE*(_: type QsciScintillaBaseEnumEnum): untyped = 2092
template SCI_GETLINESTATE*(_: type QsciScintillaBaseEnumEnum): untyped = 2093
template SCI_GETMAXLINESTATE*(_: type QsciScintillaBaseEnumEnum): untyped = 2094
template SCI_GETCARETLINEVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2095
template SCI_SETCARETLINEVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2096
template SCI_GETCARETLINEBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2097
template SCI_SETCARETLINEBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2098
template SCI_STYLESETCHANGEABLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2099
template SCI_AUTOCSHOW*(_: type QsciScintillaBaseEnumEnum): untyped = 2100
template SCI_AUTOCCANCEL*(_: type QsciScintillaBaseEnumEnum): untyped = 2101
template SCI_AUTOCACTIVE*(_: type QsciScintillaBaseEnumEnum): untyped = 2102
template SCI_AUTOCPOSSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2103
template SCI_AUTOCCOMPLETE*(_: type QsciScintillaBaseEnumEnum): untyped = 2104
template SCI_AUTOCSTOPS*(_: type QsciScintillaBaseEnumEnum): untyped = 2105
template SCI_AUTOCSETSEPARATOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2106
template SCI_AUTOCGETSEPARATOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2107
template SCI_AUTOCSELECT*(_: type QsciScintillaBaseEnumEnum): untyped = 2108
template SCI_AUTOCSETCANCELATSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2110
template SCI_AUTOCGETCANCELATSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2111
template SCI_AUTOCSETFILLUPS*(_: type QsciScintillaBaseEnumEnum): untyped = 2112
template SCI_AUTOCSETCHOOSESINGLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2113
template SCI_AUTOCGETCHOOSESINGLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2114
template SCI_AUTOCSETIGNORECASE*(_: type QsciScintillaBaseEnumEnum): untyped = 2115
template SCI_AUTOCGETIGNORECASE*(_: type QsciScintillaBaseEnumEnum): untyped = 2116
template SCI_USERLISTSHOW*(_: type QsciScintillaBaseEnumEnum): untyped = 2117
template SCI_AUTOCSETAUTOHIDE*(_: type QsciScintillaBaseEnumEnum): untyped = 2118
template SCI_AUTOCGETAUTOHIDE*(_: type QsciScintillaBaseEnumEnum): untyped = 2119
template SCI_AUTOCSETDROPRESTOFWORD*(_: type QsciScintillaBaseEnumEnum): untyped = 2270
template SCI_AUTOCGETDROPRESTOFWORD*(_: type QsciScintillaBaseEnumEnum): untyped = 2271
template SCI_SETINDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2122
template SCI_GETINDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2123
template SCI_SETUSETABS*(_: type QsciScintillaBaseEnumEnum): untyped = 2124
template SCI_GETUSETABS*(_: type QsciScintillaBaseEnumEnum): untyped = 2125
template SCI_SETLINEINDENTATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2126
template SCI_GETLINEINDENTATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2127
template SCI_GETLINEINDENTPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2128
template SCI_GETCOLUMN*(_: type QsciScintillaBaseEnumEnum): untyped = 2129
template SCI_SETHSCROLLBAR*(_: type QsciScintillaBaseEnumEnum): untyped = 2130
template SCI_GETHSCROLLBAR*(_: type QsciScintillaBaseEnumEnum): untyped = 2131
template SCI_SETINDENTATIONGUIDES*(_: type QsciScintillaBaseEnumEnum): untyped = 2132
template SCI_GETINDENTATIONGUIDES*(_: type QsciScintillaBaseEnumEnum): untyped = 2133
template SCI_SETHIGHLIGHTGUIDE*(_: type QsciScintillaBaseEnumEnum): untyped = 2134
template SCI_GETHIGHLIGHTGUIDE*(_: type QsciScintillaBaseEnumEnum): untyped = 2135
template SCI_GETLINEENDPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2136
template SCI_GETCODEPAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2137
template SCI_GETCARETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2138
template SCI_GETREADONLY*(_: type QsciScintillaBaseEnumEnum): untyped = 2140
template SCI_SETCURRENTPOS*(_: type QsciScintillaBaseEnumEnum): untyped = 2141
template SCI_SETSELECTIONSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2142
template SCI_GETSELECTIONSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2143
template SCI_SETSELECTIONEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2144
template SCI_GETSELECTIONEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2145
template SCI_SETPRINTMAGNIFICATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2146
template SCI_GETPRINTMAGNIFICATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2147
template SCI_SETPRINTCOLOURMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2148
template SCI_GETPRINTCOLOURMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2149
template SCI_FINDTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2150
template SCI_FORMATRANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2151
template SCI_GETFIRSTVISIBLELINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2152
template SCI_GETLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2153
template SCI_GETLINECOUNT*(_: type QsciScintillaBaseEnumEnum): untyped = 2154
template SCI_SETMARGINLEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 2155
template SCI_GETMARGINLEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 2156
template SCI_SETMARGINRIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2157
template SCI_GETMARGINRIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2158
template SCI_GETMODIFY*(_: type QsciScintillaBaseEnumEnum): untyped = 2159
template SCI_SETSEL*(_: type QsciScintillaBaseEnumEnum): untyped = 2160
template SCI_GETSELTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2161
template SCI_GETTEXTRANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2162
template SCI_HIDESELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2163
template SCI_POINTXFROMPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2164
template SCI_POINTYFROMPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2165
template SCI_LINEFROMPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2166
template SCI_POSITIONFROMLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2167
template SCI_LINESCROLL*(_: type QsciScintillaBaseEnumEnum): untyped = 2168
template SCI_SCROLLCARET*(_: type QsciScintillaBaseEnumEnum): untyped = 2169
template SCI_REPLACESEL*(_: type QsciScintillaBaseEnumEnum): untyped = 2170
template SCI_SETREADONLY*(_: type QsciScintillaBaseEnumEnum): untyped = 2171
template SCI_NULL*(_: type QsciScintillaBaseEnumEnum): untyped = 2172
template SCI_CANPASTE*(_: type QsciScintillaBaseEnumEnum): untyped = 2173
template SCI_CANUNDO*(_: type QsciScintillaBaseEnumEnum): untyped = 2174
template SCI_EMPTYUNDOBUFFER*(_: type QsciScintillaBaseEnumEnum): untyped = 2175
template SCI_UNDO*(_: type QsciScintillaBaseEnumEnum): untyped = 2176
template SCI_CUT*(_: type QsciScintillaBaseEnumEnum): untyped = 2177
template SCI_COPY*(_: type QsciScintillaBaseEnumEnum): untyped = 2178
template SCI_PASTE*(_: type QsciScintillaBaseEnumEnum): untyped = 2179
template SCI_CLEAR*(_: type QsciScintillaBaseEnumEnum): untyped = 2180
template SCI_SETTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2181
template SCI_GETTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2182
template SCI_GETTEXTLENGTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2183
template SCI_GETDIRECTFUNCTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2184
template SCI_GETDIRECTPOINTER*(_: type QsciScintillaBaseEnumEnum): untyped = 2185
template SCI_SETOVERTYPE*(_: type QsciScintillaBaseEnumEnum): untyped = 2186
template SCI_GETOVERTYPE*(_: type QsciScintillaBaseEnumEnum): untyped = 2187
template SCI_SETCARETWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2188
template SCI_GETCARETWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2189
template SCI_SETTARGETSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2190
template SCI_GETTARGETSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2191
template SCI_SETTARGETEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2192
template SCI_GETTARGETEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2193
template SCI_REPLACETARGET*(_: type QsciScintillaBaseEnumEnum): untyped = 2194
template SCI_REPLACETARGETRE*(_: type QsciScintillaBaseEnumEnum): untyped = 2195
template SCI_SEARCHINTARGET*(_: type QsciScintillaBaseEnumEnum): untyped = 2197
template SCI_SETSEARCHFLAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2198
template SCI_GETSEARCHFLAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2199
template SCI_CALLTIPSHOW*(_: type QsciScintillaBaseEnumEnum): untyped = 2200
template SCI_CALLTIPCANCEL*(_: type QsciScintillaBaseEnumEnum): untyped = 2201
template SCI_CALLTIPACTIVE*(_: type QsciScintillaBaseEnumEnum): untyped = 2202
template SCI_CALLTIPPOSSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2203
template SCI_CALLTIPSETHLT*(_: type QsciScintillaBaseEnumEnum): untyped = 2204
template SCI_CALLTIPSETBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2205
template SCI_CALLTIPSETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2206
template SCI_CALLTIPSETFOREHLT*(_: type QsciScintillaBaseEnumEnum): untyped = 2207
template SCI_AUTOCSETMAXWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2208
template SCI_AUTOCGETMAXWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2209
template SCI_AUTOCSETMAXHEIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2210
template SCI_AUTOCGETMAXHEIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2211
template SCI_CALLTIPUSESTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2212
template SCI_CALLTIPSETPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2213
template SCI_CALLTIPSETPOSSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2214
template SCI_VISIBLEFROMDOCLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2220
template SCI_DOCLINEFROMVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2221
template SCI_SETFOLDLEVEL*(_: type QsciScintillaBaseEnumEnum): untyped = 2222
template SCI_GETFOLDLEVEL*(_: type QsciScintillaBaseEnumEnum): untyped = 2223
template SCI_GETLASTCHILD*(_: type QsciScintillaBaseEnumEnum): untyped = 2224
template SCI_GETFOLDPARENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2225
template SCI_SHOWLINES*(_: type QsciScintillaBaseEnumEnum): untyped = 2226
template SCI_HIDELINES*(_: type QsciScintillaBaseEnumEnum): untyped = 2227
template SCI_GETLINEVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2228
template SCI_SETFOLDEXPANDED*(_: type QsciScintillaBaseEnumEnum): untyped = 2229
template SCI_GETFOLDEXPANDED*(_: type QsciScintillaBaseEnumEnum): untyped = 2230
template SCI_TOGGLEFOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 2231
template SCI_ENSUREVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2232
template SCI_SETFOLDFLAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2233
template SCI_ENSUREVISIBLEENFORCEPOLICY*(_: type QsciScintillaBaseEnumEnum): untyped = 2234
template SCI_WRAPCOUNT*(_: type QsciScintillaBaseEnumEnum): untyped = 2235
template SCI_GETALLLINESVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2236
template SCI_FOLDLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2237
template SCI_FOLDCHILDREN*(_: type QsciScintillaBaseEnumEnum): untyped = 2238
template SCI_EXPANDCHILDREN*(_: type QsciScintillaBaseEnumEnum): untyped = 2239
template SCI_SETMARGINBACKN*(_: type QsciScintillaBaseEnumEnum): untyped = 2250
template SCI_GETMARGINBACKN*(_: type QsciScintillaBaseEnumEnum): untyped = 2251
template SCI_SETMARGINS*(_: type QsciScintillaBaseEnumEnum): untyped = 2252
template SCI_GETMARGINS*(_: type QsciScintillaBaseEnumEnum): untyped = 2253
template SCI_SETTABINDENTS*(_: type QsciScintillaBaseEnumEnum): untyped = 2260
template SCI_GETTABINDENTS*(_: type QsciScintillaBaseEnumEnum): untyped = 2261
template SCI_SETBACKSPACEUNINDENTS*(_: type QsciScintillaBaseEnumEnum): untyped = 2262
template SCI_GETBACKSPACEUNINDENTS*(_: type QsciScintillaBaseEnumEnum): untyped = 2263
template SCI_SETMOUSEDWELLTIME*(_: type QsciScintillaBaseEnumEnum): untyped = 2264
template SCI_GETMOUSEDWELLTIME*(_: type QsciScintillaBaseEnumEnum): untyped = 2265
template SCI_WORDSTARTPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2266
template SCI_WORDENDPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2267
template SCI_SETWRAPMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2268
template SCI_GETWRAPMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2269
template SCI_SETLAYOUTCACHE*(_: type QsciScintillaBaseEnumEnum): untyped = 2272
template SCI_GETLAYOUTCACHE*(_: type QsciScintillaBaseEnumEnum): untyped = 2273
template SCI_SETSCROLLWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2274
template SCI_GETSCROLLWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2275
template SCI_TEXTWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2276
template SCI_SETENDATLASTLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2277
template SCI_GETENDATLASTLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2278
template SCI_TEXTHEIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2279
template SCI_SETVSCROLLBAR*(_: type QsciScintillaBaseEnumEnum): untyped = 2280
template SCI_GETVSCROLLBAR*(_: type QsciScintillaBaseEnumEnum): untyped = 2281
template SCI_APPENDTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2282
template SCI_GETTWOPHASEDRAW*(_: type QsciScintillaBaseEnumEnum): untyped = 2283
template SCI_SETTWOPHASEDRAW*(_: type QsciScintillaBaseEnumEnum): untyped = 2284
template SCI_AUTOCGETTYPESEPARATOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2285
template SCI_AUTOCSETTYPESEPARATOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2286
template SCI_TARGETFROMSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2287
template SCI_LINESJOIN*(_: type QsciScintillaBaseEnumEnum): untyped = 2288
template SCI_LINESSPLIT*(_: type QsciScintillaBaseEnumEnum): untyped = 2289
template SCI_SETFOLDMARGINCOLOUR*(_: type QsciScintillaBaseEnumEnum): untyped = 2290
template SCI_SETFOLDMARGINHICOLOUR*(_: type QsciScintillaBaseEnumEnum): untyped = 2291
template SCI_MARKERSETBACKSELECTED*(_: type QsciScintillaBaseEnumEnum): untyped = 2292
template SCI_MARKERENABLEHIGHLIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2293
template SCI_LINEDOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 2300
template SCI_LINEDOWNEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2301
template SCI_LINEUP*(_: type QsciScintillaBaseEnumEnum): untyped = 2302
template SCI_LINEUPEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2303
template SCI_CHARLEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 2304
template SCI_CHARLEFTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2305
template SCI_CHARRIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2306
template SCI_CHARRIGHTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2307
template SCI_WORDLEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 2308
template SCI_WORDLEFTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2309
template SCI_WORDRIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2310
template SCI_WORDRIGHTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2311
template SCI_HOME*(_: type QsciScintillaBaseEnumEnum): untyped = 2312
template SCI_HOMEEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2313
template SCI_LINEEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2314
template SCI_LINEENDEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2315
template SCI_DOCUMENTSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2316
template SCI_DOCUMENTSTARTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2317
template SCI_DOCUMENTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2318
template SCI_DOCUMENTENDEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2319
template SCI_PAGEUP*(_: type QsciScintillaBaseEnumEnum): untyped = 2320
template SCI_PAGEUPEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2321
template SCI_PAGEDOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 2322
template SCI_PAGEDOWNEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2323
template SCI_EDITTOGGLEOVERTYPE*(_: type QsciScintillaBaseEnumEnum): untyped = 2324
template SCI_CANCEL*(_: type QsciScintillaBaseEnumEnum): untyped = 2325
template SCI_DELETEBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2326
template SCI_TAB*(_: type QsciScintillaBaseEnumEnum): untyped = 2327
template SCI_BACKTAB*(_: type QsciScintillaBaseEnumEnum): untyped = 2328
template SCI_NEWLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2329
template SCI_FORMFEED*(_: type QsciScintillaBaseEnumEnum): untyped = 2330
template SCI_VCHOME*(_: type QsciScintillaBaseEnumEnum): untyped = 2331
template SCI_VCHOMEEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2332
template SCI_ZOOMIN*(_: type QsciScintillaBaseEnumEnum): untyped = 2333
template SCI_ZOOMOUT*(_: type QsciScintillaBaseEnumEnum): untyped = 2334
template SCI_DELWORDLEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 2335
template SCI_DELWORDRIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2336
template SCI_LINECUT*(_: type QsciScintillaBaseEnumEnum): untyped = 2337
template SCI_LINEDELETE*(_: type QsciScintillaBaseEnumEnum): untyped = 2338
template SCI_LINETRANSPOSE*(_: type QsciScintillaBaseEnumEnum): untyped = 2339
template SCI_LOWERCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 2340
template SCI_UPPERCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 2341
template SCI_LINESCROLLDOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 2342
template SCI_LINESCROLLUP*(_: type QsciScintillaBaseEnumEnum): untyped = 2343
template SCI_DELETEBACKNOTLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2344
template SCI_HOMEDISPLAY*(_: type QsciScintillaBaseEnumEnum): untyped = 2345
template SCI_HOMEDISPLAYEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2346
template SCI_LINEENDDISPLAY*(_: type QsciScintillaBaseEnumEnum): untyped = 2347
template SCI_LINEENDDISPLAYEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2348
template SCI_MOVECARETINSIDEVIEW*(_: type QsciScintillaBaseEnumEnum): untyped = 2401
template SCI_LINELENGTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2350
template SCI_BRACEHIGHLIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2351
template SCI_BRACEBADLIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2352
template SCI_BRACEMATCH*(_: type QsciScintillaBaseEnumEnum): untyped = 2353
template SCI_LINEREVERSE*(_: type QsciScintillaBaseEnumEnum): untyped = 2354
template SCI_GETVIEWEOL*(_: type QsciScintillaBaseEnumEnum): untyped = 2355
template SCI_SETVIEWEOL*(_: type QsciScintillaBaseEnumEnum): untyped = 2356
template SCI_GETDOCPOINTER*(_: type QsciScintillaBaseEnumEnum): untyped = 2357
template SCI_SETDOCPOINTER*(_: type QsciScintillaBaseEnumEnum): untyped = 2358
template SCI_SETMODEVENTMASK*(_: type QsciScintillaBaseEnumEnum): untyped = 2359
template SCI_GETEDGECOLUMN*(_: type QsciScintillaBaseEnumEnum): untyped = 2360
template SCI_SETEDGECOLUMN*(_: type QsciScintillaBaseEnumEnum): untyped = 2361
template SCI_GETEDGEMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2362
template SCI_SETEDGEMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2363
template SCI_GETEDGECOLOUR*(_: type QsciScintillaBaseEnumEnum): untyped = 2364
template SCI_SETEDGECOLOUR*(_: type QsciScintillaBaseEnumEnum): untyped = 2365
template SCI_SEARCHANCHOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2366
template SCI_SEARCHNEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2367
template SCI_SEARCHPREV*(_: type QsciScintillaBaseEnumEnum): untyped = 2368
template SCI_LINESONSCREEN*(_: type QsciScintillaBaseEnumEnum): untyped = 2370
template SCI_USEPOPUP*(_: type QsciScintillaBaseEnumEnum): untyped = 2371
template SCI_SELECTIONISRECTANGLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2372
template SCI_SETZOOM*(_: type QsciScintillaBaseEnumEnum): untyped = 2373
template SCI_GETZOOM*(_: type QsciScintillaBaseEnumEnum): untyped = 2374
template SCI_CREATEDOCUMENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2375
template SCI_ADDREFDOCUMENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2376
template SCI_RELEASEDOCUMENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2377
template SCI_GETMODEVENTMASK*(_: type QsciScintillaBaseEnumEnum): untyped = 2378
template SCI_SETFOCUS*(_: type QsciScintillaBaseEnumEnum): untyped = 2380
template SCI_GETFOCUS*(_: type QsciScintillaBaseEnumEnum): untyped = 2381
template SCI_SETSTATUS*(_: type QsciScintillaBaseEnumEnum): untyped = 2382
template SCI_GETSTATUS*(_: type QsciScintillaBaseEnumEnum): untyped = 2383
template SCI_SETMOUSEDOWNCAPTURES*(_: type QsciScintillaBaseEnumEnum): untyped = 2384
template SCI_GETMOUSEDOWNCAPTURES*(_: type QsciScintillaBaseEnumEnum): untyped = 2385
template SCI_SETCURSOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2386
template SCI_GETCURSOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2387
template SCI_SETCONTROLCHARSYMBOL*(_: type QsciScintillaBaseEnumEnum): untyped = 2388
template SCI_GETCONTROLCHARSYMBOL*(_: type QsciScintillaBaseEnumEnum): untyped = 2389
template SCI_WORDPARTLEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 2390
template SCI_WORDPARTLEFTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2391
template SCI_WORDPARTRIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2392
template SCI_WORDPARTRIGHTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2393
template SCI_SETVISIBLEPOLICY*(_: type QsciScintillaBaseEnumEnum): untyped = 2394
template SCI_DELLINELEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 2395
template SCI_DELLINERIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2396
template SCI_SETXOFFSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2397
template SCI_GETXOFFSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2398
template SCI_CHOOSECARETX*(_: type QsciScintillaBaseEnumEnum): untyped = 2399
template SCI_GRABFOCUS*(_: type QsciScintillaBaseEnumEnum): untyped = 2400
template SCI_SETXCARETPOLICY*(_: type QsciScintillaBaseEnumEnum): untyped = 2402
template SCI_SETYCARETPOLICY*(_: type QsciScintillaBaseEnumEnum): untyped = 2403
template SCI_LINEDUPLICATE*(_: type QsciScintillaBaseEnumEnum): untyped = 2404
template SCI_REGISTERIMAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2405
template SCI_SETPRINTWRAPMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2406
template SCI_GETPRINTWRAPMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2407
template SCI_CLEARREGISTEREDIMAGES*(_: type QsciScintillaBaseEnumEnum): untyped = 2408
template SCI_STYLESETHOTSPOT*(_: type QsciScintillaBaseEnumEnum): untyped = 2409
template SCI_SETHOTSPOTACTIVEFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2410
template SCI_SETHOTSPOTACTIVEBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2411
template SCI_SETHOTSPOTACTIVEUNDERLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2412
template SCI_PARADOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 2413
template SCI_PARADOWNEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2414
template SCI_PARAUP*(_: type QsciScintillaBaseEnumEnum): untyped = 2415
template SCI_PARAUPEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2416
template SCI_POSITIONBEFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2417
template SCI_POSITIONAFTER*(_: type QsciScintillaBaseEnumEnum): untyped = 2418
template SCI_COPYRANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2419
template SCI_COPYTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2420
template SCI_SETHOTSPOTSINGLELINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2421
template SCI_SETSELECTIONMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2422
template SCI_GETSELECTIONMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2423
template SCI_GETLINESELSTARTPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2424
template SCI_GETLINESELENDPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2425
template SCI_LINEDOWNRECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2426
template SCI_LINEUPRECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2427
template SCI_CHARLEFTRECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2428
template SCI_CHARRIGHTRECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2429
template SCI_HOMERECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2430
template SCI_VCHOMERECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2431
template SCI_LINEENDRECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2432
template SCI_PAGEUPRECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2433
template SCI_PAGEDOWNRECTEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2434
template SCI_STUTTEREDPAGEUP*(_: type QsciScintillaBaseEnumEnum): untyped = 2435
template SCI_STUTTEREDPAGEUPEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2436
template SCI_STUTTEREDPAGEDOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 2437
template SCI_STUTTEREDPAGEDOWNEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2438
template SCI_WORDLEFTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2439
template SCI_WORDLEFTENDEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2440
template SCI_WORDRIGHTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2441
template SCI_WORDRIGHTENDEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2442
template SCI_SETWHITESPACECHARS*(_: type QsciScintillaBaseEnumEnum): untyped = 2443
template SCI_SETCHARSDEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 2444
template SCI_AUTOCGETCURRENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2445
template SCI_ALLOCATE*(_: type QsciScintillaBaseEnumEnum): untyped = 2446
template SCI_HOMEWRAP*(_: type QsciScintillaBaseEnumEnum): untyped = 2349
template SCI_HOMEWRAPEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2450
template SCI_LINEENDWRAP*(_: type QsciScintillaBaseEnumEnum): untyped = 2451
template SCI_LINEENDWRAPEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2452
template SCI_VCHOMEWRAP*(_: type QsciScintillaBaseEnumEnum): untyped = 2453
template SCI_VCHOMEWRAPEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2454
template SCI_LINECOPY*(_: type QsciScintillaBaseEnumEnum): untyped = 2455
template SCI_FINDCOLUMN*(_: type QsciScintillaBaseEnumEnum): untyped = 2456
template SCI_GETCARETSTICKY*(_: type QsciScintillaBaseEnumEnum): untyped = 2457
template SCI_SETCARETSTICKY*(_: type QsciScintillaBaseEnumEnum): untyped = 2458
template SCI_TOGGLECARETSTICKY*(_: type QsciScintillaBaseEnumEnum): untyped = 2459
template SCI_SETWRAPVISUALFLAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2460
template SCI_GETWRAPVISUALFLAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2461
template SCI_SETWRAPVISUALFLAGSLOCATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2462
template SCI_GETWRAPVISUALFLAGSLOCATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2463
template SCI_SETWRAPSTARTINDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2464
template SCI_GETWRAPSTARTINDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2465
template SCI_MARKERADDSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2466
template SCI_SETPASTECONVERTENDINGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2467
template SCI_GETPASTECONVERTENDINGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2468
template SCI_SELECTIONDUPLICATE*(_: type QsciScintillaBaseEnumEnum): untyped = 2469
template SCI_SETCARETLINEBACKALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2470
template SCI_GETCARETLINEBACKALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2471
template SCI_SETWRAPINDENTMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2472
template SCI_GETWRAPINDENTMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2473
template SCI_MARKERSETALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2476
template SCI_GETSELALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2477
template SCI_SETSELALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2478
template SCI_GETSELEOLFILLED*(_: type QsciScintillaBaseEnumEnum): untyped = 2479
template SCI_SETSELEOLFILLED*(_: type QsciScintillaBaseEnumEnum): untyped = 2480
template SCI_STYLEGETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2481
template SCI_STYLEGETBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2482
template SCI_STYLEGETBOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 2483
template SCI_STYLEGETITALIC*(_: type QsciScintillaBaseEnumEnum): untyped = 2484
template SCI_STYLEGETSIZE*(_: type QsciScintillaBaseEnumEnum): untyped = 2485
template SCI_STYLEGETFONT*(_: type QsciScintillaBaseEnumEnum): untyped = 2486
template SCI_STYLEGETEOLFILLED*(_: type QsciScintillaBaseEnumEnum): untyped = 2487
template SCI_STYLEGETUNDERLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2488
template SCI_STYLEGETCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 2489
template SCI_STYLEGETCHARACTERSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2490
template SCI_STYLEGETVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2491
template SCI_STYLEGETCHANGEABLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2492
template SCI_STYLEGETHOTSPOT*(_: type QsciScintillaBaseEnumEnum): untyped = 2493
template SCI_GETHOTSPOTACTIVEFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2494
template SCI_GETHOTSPOTACTIVEBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2495
template SCI_GETHOTSPOTACTIVEUNDERLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2496
template SCI_GETHOTSPOTSINGLELINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2497
template SCI_BRACEHIGHLIGHTINDICATOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2498
template SCI_BRACEBADLIGHTINDICATOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2499
template SCI_SETINDICATORCURRENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2500
template SCI_GETINDICATORCURRENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2501
template SCI_SETINDICATORVALUE*(_: type QsciScintillaBaseEnumEnum): untyped = 2502
template SCI_GETINDICATORVALUE*(_: type QsciScintillaBaseEnumEnum): untyped = 2503
template SCI_INDICATORFILLRANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2504
template SCI_INDICATORCLEARRANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2505
template SCI_INDICATORALLONFOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2506
template SCI_INDICATORVALUEAT*(_: type QsciScintillaBaseEnumEnum): untyped = 2507
template SCI_INDICATORSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2508
template SCI_INDICATOREND*(_: type QsciScintillaBaseEnumEnum): untyped = 2509
template SCI_INDICSETUNDER*(_: type QsciScintillaBaseEnumEnum): untyped = 2510
template SCI_INDICGETUNDER*(_: type QsciScintillaBaseEnumEnum): untyped = 2511
template SCI_SETCARETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2512
template SCI_GETCARETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2513
template SCI_SETPOSITIONCACHE*(_: type QsciScintillaBaseEnumEnum): untyped = 2514
template SCI_GETPOSITIONCACHE*(_: type QsciScintillaBaseEnumEnum): untyped = 2515
template SCI_SETSCROLLWIDTHTRACKING*(_: type QsciScintillaBaseEnumEnum): untyped = 2516
template SCI_GETSCROLLWIDTHTRACKING*(_: type QsciScintillaBaseEnumEnum): untyped = 2517
template SCI_DELWORDRIGHTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2518
template SCI_COPYALLOWLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2519
template SCI_GETCHARACTERPOINTER*(_: type QsciScintillaBaseEnumEnum): untyped = 2520
template SCI_INDICSETALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2523
template SCI_INDICGETALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2524
template SCI_SETEXTRAASCENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2525
template SCI_GETEXTRAASCENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2526
template SCI_SETEXTRADESCENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2527
template SCI_GETEXTRADESCENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2528
template SCI_MARKERSYMBOLDEFINED*(_: type QsciScintillaBaseEnumEnum): untyped = 2529
template SCI_MARGINSETTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2530
template SCI_MARGINGETTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2531
template SCI_MARGINSETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2532
template SCI_MARGINGETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2533
template SCI_MARGINSETSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 2534
template SCI_MARGINGETSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 2535
template SCI_MARGINTEXTCLEARALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2536
template SCI_MARGINSETSTYLEOFFSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2537
template SCI_MARGINGETSTYLEOFFSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2538
template SCI_SETMARGINOPTIONS*(_: type QsciScintillaBaseEnumEnum): untyped = 2539
template SCI_ANNOTATIONSETTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2540
template SCI_ANNOTATIONGETTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2541
template SCI_ANNOTATIONSETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2542
template SCI_ANNOTATIONGETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2543
template SCI_ANNOTATIONSETSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 2544
template SCI_ANNOTATIONGETSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 2545
template SCI_ANNOTATIONGETLINES*(_: type QsciScintillaBaseEnumEnum): untyped = 2546
template SCI_ANNOTATIONCLEARALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2547
template SCI_ANNOTATIONSETVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2548
template SCI_ANNOTATIONGETVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2549
template SCI_ANNOTATIONSETSTYLEOFFSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2550
template SCI_ANNOTATIONGETSTYLEOFFSET*(_: type QsciScintillaBaseEnumEnum): untyped = 2551
template SCI_RELEASEALLEXTENDEDSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 2552
template SCI_ALLOCATEEXTENDEDSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 2553
template SCI_SETEMPTYSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2556
template SCI_GETMARGINOPTIONS*(_: type QsciScintillaBaseEnumEnum): untyped = 2557
template SCI_INDICSETOUTLINEALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2558
template SCI_INDICGETOUTLINEALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2559
template SCI_ADDUNDOACTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2560
template SCI_CHARPOSITIONFROMPOINT*(_: type QsciScintillaBaseEnumEnum): untyped = 2561
template SCI_CHARPOSITIONFROMPOINTCLOSE*(_: type QsciScintillaBaseEnumEnum): untyped = 2562
template SCI_SETMULTIPLESELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2563
template SCI_GETMULTIPLESELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2564
template SCI_SETADDITIONALSELECTIONTYPING*(_: type QsciScintillaBaseEnumEnum): untyped = 2565
template SCI_GETADDITIONALSELECTIONTYPING*(_: type QsciScintillaBaseEnumEnum): untyped = 2566
template SCI_SETADDITIONALCARETSBLINK*(_: type QsciScintillaBaseEnumEnum): untyped = 2567
template SCI_GETADDITIONALCARETSBLINK*(_: type QsciScintillaBaseEnumEnum): untyped = 2568
template SCI_SCROLLRANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2569
template SCI_GETSELECTIONS*(_: type QsciScintillaBaseEnumEnum): untyped = 2570
template SCI_CLEARSELECTIONS*(_: type QsciScintillaBaseEnumEnum): untyped = 2571
template SCI_SETSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2572
template SCI_ADDSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2573
template SCI_SETMAINSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2574
template SCI_GETMAINSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2575
template SCI_SETSELECTIONNCARET*(_: type QsciScintillaBaseEnumEnum): untyped = 2576
template SCI_GETSELECTIONNCARET*(_: type QsciScintillaBaseEnumEnum): untyped = 2577
template SCI_SETSELECTIONNANCHOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2578
template SCI_GETSELECTIONNANCHOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2579
template SCI_SETSELECTIONNCARETVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2580
template SCI_GETSELECTIONNCARETVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2581
template SCI_SETSELECTIONNANCHORVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2582
template SCI_GETSELECTIONNANCHORVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2583
template SCI_SETSELECTIONNSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2584
template SCI_GETSELECTIONNSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2585
template SCI_SETSELECTIONNEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2586
template SCI_GETSELECTIONNEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2587
template SCI_SETRECTANGULARSELECTIONCARET*(_: type QsciScintillaBaseEnumEnum): untyped = 2588
template SCI_GETRECTANGULARSELECTIONCARET*(_: type QsciScintillaBaseEnumEnum): untyped = 2589
template SCI_SETRECTANGULARSELECTIONANCHOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2590
template SCI_GETRECTANGULARSELECTIONANCHOR*(_: type QsciScintillaBaseEnumEnum): untyped = 2591
template SCI_SETRECTANGULARSELECTIONCARETVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2592
template SCI_GETRECTANGULARSELECTIONCARETVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2593
template SCI_SETRECTANGULARSELECTIONANCHORVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2594
template SCI_GETRECTANGULARSELECTIONANCHORVIRTUALSPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2595
template SCI_SETVIRTUALSPACEOPTIONS*(_: type QsciScintillaBaseEnumEnum): untyped = 2596
template SCI_GETVIRTUALSPACEOPTIONS*(_: type QsciScintillaBaseEnumEnum): untyped = 2597
template SCI_SETRECTANGULARSELECTIONMODIFIER*(_: type QsciScintillaBaseEnumEnum): untyped = 2598
template SCI_GETRECTANGULARSELECTIONMODIFIER*(_: type QsciScintillaBaseEnumEnum): untyped = 2599
template SCI_SETADDITIONALSELFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2600
template SCI_SETADDITIONALSELBACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2601
template SCI_SETADDITIONALSELALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2602
template SCI_GETADDITIONALSELALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 2603
template SCI_SETADDITIONALCARETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2604
template SCI_GETADDITIONALCARETFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2605
template SCI_ROTATESELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2606
template SCI_SWAPMAINANCHORCARET*(_: type QsciScintillaBaseEnumEnum): untyped = 2607
template SCI_SETADDITIONALCARETSVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2608
template SCI_GETADDITIONALCARETSVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2609
template SCI_AUTOCGETCURRENTTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2610
template SCI_SETFONTQUALITY*(_: type QsciScintillaBaseEnumEnum): untyped = 2611
template SCI_GETFONTQUALITY*(_: type QsciScintillaBaseEnumEnum): untyped = 2612
template SCI_SETFIRSTVISIBLELINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2613
template SCI_SETMULTIPASTE*(_: type QsciScintillaBaseEnumEnum): untyped = 2614
template SCI_GETMULTIPASTE*(_: type QsciScintillaBaseEnumEnum): untyped = 2615
template SCI_GETTAG*(_: type QsciScintillaBaseEnumEnum): untyped = 2616
template SCI_CHANGELEXERSTATE*(_: type QsciScintillaBaseEnumEnum): untyped = 2617
template SCI_CONTRACTEDFOLDNEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2618
template SCI_VERTICALCENTRECARET*(_: type QsciScintillaBaseEnumEnum): untyped = 2619
template SCI_MOVESELECTEDLINESUP*(_: type QsciScintillaBaseEnumEnum): untyped = 2620
template SCI_MOVESELECTEDLINESDOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 2621
template SCI_SETIDENTIFIER*(_: type QsciScintillaBaseEnumEnum): untyped = 2622
template SCI_GETIDENTIFIER*(_: type QsciScintillaBaseEnumEnum): untyped = 2623
template SCI_RGBAIMAGESETWIDTH*(_: type QsciScintillaBaseEnumEnum): untyped = 2624
template SCI_RGBAIMAGESETHEIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 2625
template SCI_MARKERDEFINERGBAIMAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2626
template SCI_REGISTERRGBAIMAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2627
template SCI_SCROLLTOSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 2628
template SCI_SCROLLTOEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2629
template SCI_SETTECHNOLOGY*(_: type QsciScintillaBaseEnumEnum): untyped = 2630
template SCI_GETTECHNOLOGY*(_: type QsciScintillaBaseEnumEnum): untyped = 2631
template SCI_CREATELOADER*(_: type QsciScintillaBaseEnumEnum): untyped = 2632
template SCI_COUNTCHARACTERS*(_: type QsciScintillaBaseEnumEnum): untyped = 2633
template SCI_AUTOCSETCASEINSENSITIVEBEHAVIOUR*(_: type QsciScintillaBaseEnumEnum): untyped = 2634
template SCI_AUTOCGETCASEINSENSITIVEBEHAVIOUR*(_: type QsciScintillaBaseEnumEnum): untyped = 2635
template SCI_AUTOCSETMULTI*(_: type QsciScintillaBaseEnumEnum): untyped = 2636
template SCI_AUTOCGETMULTI*(_: type QsciScintillaBaseEnumEnum): untyped = 2637
template SCI_FINDINDICATORSHOW*(_: type QsciScintillaBaseEnumEnum): untyped = 2640
template SCI_FINDINDICATORFLASH*(_: type QsciScintillaBaseEnumEnum): untyped = 2641
template SCI_FINDINDICATORHIDE*(_: type QsciScintillaBaseEnumEnum): untyped = 2642
template SCI_GETRANGEPOINTER*(_: type QsciScintillaBaseEnumEnum): untyped = 2643
template SCI_GETGAPPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2644
template SCI_DELETERANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2645
template SCI_GETWORDCHARS*(_: type QsciScintillaBaseEnumEnum): untyped = 2646
template SCI_GETWHITESPACECHARS*(_: type QsciScintillaBaseEnumEnum): untyped = 2647
template SCI_SETPUNCTUATIONCHARS*(_: type QsciScintillaBaseEnumEnum): untyped = 2648
template SCI_GETPUNCTUATIONCHARS*(_: type QsciScintillaBaseEnumEnum): untyped = 2649
template SCI_GETSELECTIONEMPTY*(_: type QsciScintillaBaseEnumEnum): untyped = 2650
template SCI_RGBAIMAGESETSCALE*(_: type QsciScintillaBaseEnumEnum): untyped = 2651
template SCI_VCHOMEDISPLAY*(_: type QsciScintillaBaseEnumEnum): untyped = 2652
template SCI_VCHOMEDISPLAYEXTEND*(_: type QsciScintillaBaseEnumEnum): untyped = 2653
template SCI_GETCARETLINEVISIBLEALWAYS*(_: type QsciScintillaBaseEnumEnum): untyped = 2654
template SCI_SETCARETLINEVISIBLEALWAYS*(_: type QsciScintillaBaseEnumEnum): untyped = 2655
template SCI_SETLINEENDTYPESALLOWED*(_: type QsciScintillaBaseEnumEnum): untyped = 2656
template SCI_GETLINEENDTYPESALLOWED*(_: type QsciScintillaBaseEnumEnum): untyped = 2657
template SCI_GETLINEENDTYPESACTIVE*(_: type QsciScintillaBaseEnumEnum): untyped = 2658
template SCI_AUTOCSETORDER*(_: type QsciScintillaBaseEnumEnum): untyped = 2660
template SCI_AUTOCGETORDER*(_: type QsciScintillaBaseEnumEnum): untyped = 2661
template SCI_FOLDALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2662
template SCI_SETAUTOMATICFOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 2663
template SCI_GETAUTOMATICFOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 2664
template SCI_SETREPRESENTATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2665
template SCI_GETREPRESENTATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2666
template SCI_CLEARREPRESENTATION*(_: type QsciScintillaBaseEnumEnum): untyped = 2667
template SCI_SETMOUSESELECTIONRECTANGULARSWITCH*(_: type QsciScintillaBaseEnumEnum): untyped = 2668
template SCI_GETMOUSESELECTIONRECTANGULARSWITCH*(_: type QsciScintillaBaseEnumEnum): untyped = 2669
template SCI_POSITIONRELATIVE*(_: type QsciScintillaBaseEnumEnum): untyped = 2670
template SCI_DROPSELECTIONN*(_: type QsciScintillaBaseEnumEnum): untyped = 2671
template SCI_CHANGEINSERTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2672
template SCI_GETPHASESDRAW*(_: type QsciScintillaBaseEnumEnum): untyped = 2673
template SCI_SETPHASESDRAW*(_: type QsciScintillaBaseEnumEnum): untyped = 2674
template SCI_CLEARTABSTOPS*(_: type QsciScintillaBaseEnumEnum): untyped = 2675
template SCI_ADDTABSTOP*(_: type QsciScintillaBaseEnumEnum): untyped = 2676
template SCI_GETNEXTTABSTOP*(_: type QsciScintillaBaseEnumEnum): untyped = 2677
template SCI_GETIMEINTERACTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2678
template SCI_SETIMEINTERACTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2679
template SCI_INDICSETHOVERSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2680
template SCI_INDICGETHOVERSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2681
template SCI_INDICSETHOVERFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2682
template SCI_INDICGETHOVERFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 2683
template SCI_INDICSETFLAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2684
template SCI_INDICGETFLAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 2685
template SCI_SETTARGETRANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2686
template SCI_GETTARGETTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2687
template SCI_MULTIPLESELECTADDNEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2688
template SCI_MULTIPLESELECTADDEACH*(_: type QsciScintillaBaseEnumEnum): untyped = 2689
template SCI_TARGETWHOLEDOCUMENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2690
template SCI_ISRANGEWORD*(_: type QsciScintillaBaseEnumEnum): untyped = 2691
template SCI_SETIDLESTYLING*(_: type QsciScintillaBaseEnumEnum): untyped = 2692
template SCI_GETIDLESTYLING*(_: type QsciScintillaBaseEnumEnum): untyped = 2693
template SCI_MULTIEDGEADDLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2694
template SCI_MULTIEDGECLEARALL*(_: type QsciScintillaBaseEnumEnum): untyped = 2695
template SCI_SETMOUSEWHEELCAPTURES*(_: type QsciScintillaBaseEnumEnum): untyped = 2696
template SCI_GETMOUSEWHEELCAPTURES*(_: type QsciScintillaBaseEnumEnum): untyped = 2697
template SCI_GETTABDRAWMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2698
template SCI_SETTABDRAWMODE*(_: type QsciScintillaBaseEnumEnum): untyped = 2699
template SCI_TOGGLEFOLDSHOWTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2700
template SCI_FOLDDISPLAYTEXTSETSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2701
template SCI_SETACCESSIBILITY*(_: type QsciScintillaBaseEnumEnum): untyped = 2702
template SCI_GETACCESSIBILITY*(_: type QsciScintillaBaseEnumEnum): untyped = 2703
template SCI_GETCARETLINEFRAME*(_: type QsciScintillaBaseEnumEnum): untyped = 2704
template SCI_SETCARETLINEFRAME*(_: type QsciScintillaBaseEnumEnum): untyped = 2705
template SCI_STARTRECORD*(_: type QsciScintillaBaseEnumEnum): untyped = 3001
template SCI_STOPRECORD*(_: type QsciScintillaBaseEnumEnum): untyped = 3002
template SCI_SETLEXER*(_: type QsciScintillaBaseEnumEnum): untyped = 4001
template SCI_GETLEXER*(_: type QsciScintillaBaseEnumEnum): untyped = 4002
template SCI_COLOURISE*(_: type QsciScintillaBaseEnumEnum): untyped = 4003
template SCI_SETPROPERTY*(_: type QsciScintillaBaseEnumEnum): untyped = 4004
template SCI_SETKEYWORDS*(_: type QsciScintillaBaseEnumEnum): untyped = 4005
template SCI_SETLEXERLANGUAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 4006
template SCI_LOADLEXERLIBRARY*(_: type QsciScintillaBaseEnumEnum): untyped = 4007
template SCI_GETPROPERTY*(_: type QsciScintillaBaseEnumEnum): untyped = 4008
template SCI_GETPROPERTYEXPANDED*(_: type QsciScintillaBaseEnumEnum): untyped = 4009
template SCI_GETPROPERTYINT*(_: type QsciScintillaBaseEnumEnum): untyped = 4010
template SCI_GETSTYLEBITSNEEDED*(_: type QsciScintillaBaseEnumEnum): untyped = 4011
template SCI_GETLEXERLANGUAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 4012
template SCI_PRIVATELEXERCALL*(_: type QsciScintillaBaseEnumEnum): untyped = 4013
template SCI_PROPERTYNAMES*(_: type QsciScintillaBaseEnumEnum): untyped = 4014
template SCI_PROPERTYTYPE*(_: type QsciScintillaBaseEnumEnum): untyped = 4015
template SCI_DESCRIBEPROPERTY*(_: type QsciScintillaBaseEnumEnum): untyped = 4016
template SCI_DESCRIBEKEYWORDSETS*(_: type QsciScintillaBaseEnumEnum): untyped = 4017
template SCI_GETLINEENDTYPESSUPPORTED*(_: type QsciScintillaBaseEnumEnum): untyped = 4018
template SCI_ALLOCATESUBSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 4020
template SCI_GETSUBSTYLESSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 4021
template SCI_GETSUBSTYLESLENGTH*(_: type QsciScintillaBaseEnumEnum): untyped = 4022
template SCI_GETSTYLEFROMSUBSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 4027
template SCI_GETPRIMARYSTYLEFROMSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 4028
template SCI_FREESUBSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 4023
template SCI_SETIDENTIFIERS*(_: type QsciScintillaBaseEnumEnum): untyped = 4024
template SCI_DISTANCETOSECONDARYSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 4025
template SCI_GETSUBSTYLEBASES*(_: type QsciScintillaBaseEnumEnum): untyped = 4026
template SCI_GETLINECHARACTERINDEX*(_: type QsciScintillaBaseEnumEnum): untyped = 2710
template SCI_ALLOCATELINECHARACTERINDEX*(_: type QsciScintillaBaseEnumEnum): untyped = 2711
template SCI_RELEASELINECHARACTERINDEX*(_: type QsciScintillaBaseEnumEnum): untyped = 2712
template SCI_LINEFROMINDEXPOSITION*(_: type QsciScintillaBaseEnumEnum): untyped = 2713
template SCI_INDEXPOSITIONFROMLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 2714
template SCI_COUNTCODEUNITS*(_: type QsciScintillaBaseEnumEnum): untyped = 2715
template SCI_POSITIONRELATIVECODEUNITS*(_: type QsciScintillaBaseEnumEnum): untyped = 2716
template SCI_GETNAMEDSTYLES*(_: type QsciScintillaBaseEnumEnum): untyped = 4029
template SCI_NAMEOFSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 4030
template SCI_TAGSOFSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 4031
template SCI_DESCRIPTIONOFSTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 4032
template SCI_GETMOVEEXTENDSSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2706
template SCI_SETCOMMANDEVENTS*(_: type QsciScintillaBaseEnumEnum): untyped = 2717
template SCI_GETCOMMANDEVENTS*(_: type QsciScintillaBaseEnumEnum): untyped = 2718
template SCI_GETDOCUMENTOPTIONS*(_: type QsciScintillaBaseEnumEnum): untyped = 2379
template SC_AC_FILLUP*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_AC_DOUBLECLICK*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_AC_TAB*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_AC_NEWLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_AC_COMMAND*(_: type QsciScintillaBaseEnumEnum): untyped = 5
template SC_ALPHA_TRANSPARENT*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_ALPHA_OPAQUE*(_: type QsciScintillaBaseEnumEnum): untyped = 255
template SC_ALPHA_NOALPHA*(_: type QsciScintillaBaseEnumEnum): untyped = 256
template SC_CARETSTICKY_OFF*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_CARETSTICKY_ON*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_CARETSTICKY_WHITESPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_DOCUMENTOPTION_DEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_DOCUMENTOPTION_STYLES_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_DOCUMENTOPTION_TEXT_LARGE*(_: type QsciScintillaBaseEnumEnum): untyped = 256
template SC_EFF_QUALITY_MASK*(_: type QsciScintillaBaseEnumEnum): untyped = 15
template SC_EFF_QUALITY_DEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_EFF_QUALITY_NON_ANTIALIASED*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_EFF_QUALITY_ANTIALIASED*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_EFF_QUALITY_LCD_OPTIMIZED*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_IDLESTYLING_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_IDLESTYLING_TOVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_IDLESTYLING_AFTERVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_IDLESTYLING_ALL*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_IME_WINDOWED*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_IME_INLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_LINECHARACTERINDEX_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_LINECHARACTERINDEX_UTF32*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_LINECHARACTERINDEX_UTF16*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_MARGINOPTION_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_MARGINOPTION_SUBLINESELECT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_MULTIAUTOC_ONCE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_MULTIAUTOC_EACH*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_MULTIPASTE_ONCE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_MULTIPASTE_EACH*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_POPUP_NEVER*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_POPUP_ALL*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_POPUP_TEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_SEL_STREAM*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_SEL_RECTANGLE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_SEL_LINES*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_SEL_THIN*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_STATUS_OK*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_STATUS_FAILURE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_STATUS_BADALLOC*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_STATUS_WARN_START*(_: type QsciScintillaBaseEnumEnum): untyped = 1000
template SC_STATUS_WARNREGEX*(_: type QsciScintillaBaseEnumEnum): untyped = 1001
template SC_TYPE_BOOLEAN*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_TYPE_INTEGER*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_TYPE_STRING*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_UPDATE_CONTENT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_UPDATE_SELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_UPDATE_V_SCROLL*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_UPDATE_H_SCROLL*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template SC_WRAPVISUALFLAG_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_WRAPVISUALFLAG_END*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_WRAPVISUALFLAG_START*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_WRAPVISUALFLAG_MARGIN*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_WRAPVISUALFLAGLOC_DEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_WRAPVISUALFLAGLOC_END_BY_TEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_WRAPVISUALFLAGLOC_START_BY_TEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SCTD_LONGARROW*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SCTD_STRIKEOUT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SCVS_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SCVS_RECTANGULARSELECTION*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SCVS_USERACCESSIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SCVS_NOWRAPLINESTART*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SCWS_INVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SCWS_VISIBLEALWAYS*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SCWS_VISIBLEAFTERINDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SCWS_VISIBLEONLYININDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_EOL_CRLF*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_EOL_CR*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_EOL_LF*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_CP_DBCS*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_CP_UTF8*(_: type QsciScintillaBaseEnumEnum): untyped = 65001
template SC_MARK_CIRCLE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_MARK_ROUNDRECT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_MARK_ARROW*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_MARK_SMALLRECT*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_MARK_SHORTARROW*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_MARK_EMPTY*(_: type QsciScintillaBaseEnumEnum): untyped = 5
template SC_MARK_ARROWDOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 6
template SC_MARK_MINUS*(_: type QsciScintillaBaseEnumEnum): untyped = 7
template SC_MARK_PLUS*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template SC_MARK_VLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 9
template SC_MARK_LCORNER*(_: type QsciScintillaBaseEnumEnum): untyped = 10
template SC_MARK_TCORNER*(_: type QsciScintillaBaseEnumEnum): untyped = 11
template SC_MARK_BOXPLUS*(_: type QsciScintillaBaseEnumEnum): untyped = 12
template SC_MARK_BOXPLUSCONNECTED*(_: type QsciScintillaBaseEnumEnum): untyped = 13
template SC_MARK_BOXMINUS*(_: type QsciScintillaBaseEnumEnum): untyped = 14
template SC_MARK_BOXMINUSCONNECTED*(_: type QsciScintillaBaseEnumEnum): untyped = 15
template SC_MARK_LCORNERCURVE*(_: type QsciScintillaBaseEnumEnum): untyped = 16
template SC_MARK_TCORNERCURVE*(_: type QsciScintillaBaseEnumEnum): untyped = 17
template SC_MARK_CIRCLEPLUS*(_: type QsciScintillaBaseEnumEnum): untyped = 18
template SC_MARK_CIRCLEPLUSCONNECTED*(_: type QsciScintillaBaseEnumEnum): untyped = 19
template SC_MARK_CIRCLEMINUS*(_: type QsciScintillaBaseEnumEnum): untyped = 20
template SC_MARK_CIRCLEMINUSCONNECTED*(_: type QsciScintillaBaseEnumEnum): untyped = 21
template SC_MARK_BACKGROUND*(_: type QsciScintillaBaseEnumEnum): untyped = 22
template SC_MARK_DOTDOTDOT*(_: type QsciScintillaBaseEnumEnum): untyped = 23
template SC_MARK_ARROWS*(_: type QsciScintillaBaseEnumEnum): untyped = 24
template SC_MARK_PIXMAP*(_: type QsciScintillaBaseEnumEnum): untyped = 25
template SC_MARK_FULLRECT*(_: type QsciScintillaBaseEnumEnum): untyped = 26
template SC_MARK_LEFTRECT*(_: type QsciScintillaBaseEnumEnum): untyped = 27
template SC_MARK_AVAILABLE*(_: type QsciScintillaBaseEnumEnum): untyped = 28
template SC_MARK_UNDERLINE*(_: type QsciScintillaBaseEnumEnum): untyped = 29
template SC_MARK_RGBAIMAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 30
template SC_MARK_BOOKMARK*(_: type QsciScintillaBaseEnumEnum): untyped = 31
template SC_MARK_CHARACTER*(_: type QsciScintillaBaseEnumEnum): untyped = 10000
template SC_MARKNUM_FOLDEREND*(_: type QsciScintillaBaseEnumEnum): untyped = 25
template SC_MARKNUM_FOLDEROPENMID*(_: type QsciScintillaBaseEnumEnum): untyped = 26
template SC_MARKNUM_FOLDERMIDTAIL*(_: type QsciScintillaBaseEnumEnum): untyped = 27
template SC_MARKNUM_FOLDERTAIL*(_: type QsciScintillaBaseEnumEnum): untyped = 28
template SC_MARKNUM_FOLDERSUB*(_: type QsciScintillaBaseEnumEnum): untyped = 29
template SC_MARKNUM_FOLDER*(_: type QsciScintillaBaseEnumEnum): untyped = 30
template SC_MARKNUM_FOLDEROPEN*(_: type QsciScintillaBaseEnumEnum): untyped = 31
template SC_MASK_FOLDERS*(_: type QsciScintillaBaseEnumEnum): untyped = 4261412864
template SC_MARGIN_SYMBOL*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_MARGIN_NUMBER*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_MARGIN_BACK*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_MARGIN_FORE*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_MARGIN_TEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_MARGIN_RTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 5
template SC_MARGIN_COLOUR*(_: type QsciScintillaBaseEnumEnum): untyped = 6
template STYLE_DEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 32
template STYLE_LINENUMBER*(_: type QsciScintillaBaseEnumEnum): untyped = 33
template STYLE_BRACELIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 34
template STYLE_BRACEBAD*(_: type QsciScintillaBaseEnumEnum): untyped = 35
template STYLE_CONTROLCHAR*(_: type QsciScintillaBaseEnumEnum): untyped = 36
template STYLE_INDENTGUIDE*(_: type QsciScintillaBaseEnumEnum): untyped = 37
template STYLE_CALLTIP*(_: type QsciScintillaBaseEnumEnum): untyped = 38
template STYLE_FOLDDISPLAYTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 39
template STYLE_LASTPREDEFINED*(_: type QsciScintillaBaseEnumEnum): untyped = 39
template STYLE_MAX*(_: type QsciScintillaBaseEnumEnum): untyped = 255
template SC_CHARSET_ANSI*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_CHARSET_DEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_CHARSET_BALTIC*(_: type QsciScintillaBaseEnumEnum): untyped = 186
template SC_CHARSET_CHINESEBIG5*(_: type QsciScintillaBaseEnumEnum): untyped = 136
template SC_CHARSET_EASTEUROPE*(_: type QsciScintillaBaseEnumEnum): untyped = 238
template SC_CHARSET_GB2312*(_: type QsciScintillaBaseEnumEnum): untyped = 134
template SC_CHARSET_GREEK*(_: type QsciScintillaBaseEnumEnum): untyped = 161
template SC_CHARSET_HANGUL*(_: type QsciScintillaBaseEnumEnum): untyped = 129
template SC_CHARSET_MAC*(_: type QsciScintillaBaseEnumEnum): untyped = 77
template SC_CHARSET_OEM*(_: type QsciScintillaBaseEnumEnum): untyped = 255
template SC_CHARSET_RUSSIAN*(_: type QsciScintillaBaseEnumEnum): untyped = 204
template SC_CHARSET_OEM866*(_: type QsciScintillaBaseEnumEnum): untyped = 866
template SC_CHARSET_CYRILLIC*(_: type QsciScintillaBaseEnumEnum): untyped = 1251
template SC_CHARSET_SHIFTJIS*(_: type QsciScintillaBaseEnumEnum): untyped = 128
template SC_CHARSET_SYMBOL*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_CHARSET_TURKISH*(_: type QsciScintillaBaseEnumEnum): untyped = 162
template SC_CHARSET_JOHAB*(_: type QsciScintillaBaseEnumEnum): untyped = 130
template SC_CHARSET_HEBREW*(_: type QsciScintillaBaseEnumEnum): untyped = 177
template SC_CHARSET_ARABIC*(_: type QsciScintillaBaseEnumEnum): untyped = 178
template SC_CHARSET_VIETNAMESE*(_: type QsciScintillaBaseEnumEnum): untyped = 163
template SC_CHARSET_THAI*(_: type QsciScintillaBaseEnumEnum): untyped = 222
template SC_CHARSET_8859_15*(_: type QsciScintillaBaseEnumEnum): untyped = 1000
template SC_CASE_MIXED*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_CASE_UPPER*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_CASE_LOWER*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_CASE_CAMEL*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_IV_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_IV_REAL*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_IV_LOOKFORWARD*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_IV_LOOKBOTH*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template INDIC_PLAIN*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template INDIC_SQUIGGLE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template INDIC_TT*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template INDIC_DIAGONAL*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template INDIC_STRIKE*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template INDIC_HIDDEN*(_: type QsciScintillaBaseEnumEnum): untyped = 5
template INDIC_BOX*(_: type QsciScintillaBaseEnumEnum): untyped = 6
template INDIC_ROUNDBOX*(_: type QsciScintillaBaseEnumEnum): untyped = 7
template INDIC_STRAIGHTBOX*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template INDIC_DASH*(_: type QsciScintillaBaseEnumEnum): untyped = 9
template INDIC_DOTS*(_: type QsciScintillaBaseEnumEnum): untyped = 10
template INDIC_SQUIGGLELOW*(_: type QsciScintillaBaseEnumEnum): untyped = 11
template INDIC_DOTBOX*(_: type QsciScintillaBaseEnumEnum): untyped = 12
template INDIC_SQUIGGLEPIXMAP*(_: type QsciScintillaBaseEnumEnum): untyped = 13
template INDIC_COMPOSITIONTHICK*(_: type QsciScintillaBaseEnumEnum): untyped = 14
template INDIC_COMPOSITIONTHIN*(_: type QsciScintillaBaseEnumEnum): untyped = 15
template INDIC_FULLBOX*(_: type QsciScintillaBaseEnumEnum): untyped = 16
template INDIC_TEXTFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 17
template INDIC_POINT*(_: type QsciScintillaBaseEnumEnum): untyped = 18
template INDIC_POINTCHARACTER*(_: type QsciScintillaBaseEnumEnum): untyped = 19
template INDIC_GRADIENT*(_: type QsciScintillaBaseEnumEnum): untyped = 20
template INDIC_GRADIENTCENTRE*(_: type QsciScintillaBaseEnumEnum): untyped = 21
template INDIC_IME*(_: type QsciScintillaBaseEnumEnum): untyped = 32
template INDIC_IME_MAX*(_: type QsciScintillaBaseEnumEnum): untyped = 35
template INDIC_CONTAINER*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template INDIC_MAX*(_: type QsciScintillaBaseEnumEnum): untyped = 35
template INDIC0_MASK*(_: type QsciScintillaBaseEnumEnum): untyped = 32
template INDIC1_MASK*(_: type QsciScintillaBaseEnumEnum): untyped = 64
template INDIC2_MASK*(_: type QsciScintillaBaseEnumEnum): untyped = 128
template INDICS_MASK*(_: type QsciScintillaBaseEnumEnum): untyped = 224
template SC_INDICVALUEBIT*(_: type QsciScintillaBaseEnumEnum): untyped = 16777216
template SC_INDICVALUEMASK*(_: type QsciScintillaBaseEnumEnum): untyped = 16777215
template SC_INDICFLAG_VALUEBEFORE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_PRINT_NORMAL*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_PRINT_INVERTLIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_PRINT_BLACKONWHITE*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_PRINT_COLOURONWHITE*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_PRINT_COLOURONWHITEDEFAULTBG*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_PRINT_SCREENCOLOURS*(_: type QsciScintillaBaseEnumEnum): untyped = 5
template SCFIND_WHOLEWORD*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SCFIND_MATCHCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SCFIND_WORDSTART*(_: type QsciScintillaBaseEnumEnum): untyped = 1048576
template SCFIND_REGEXP*(_: type QsciScintillaBaseEnumEnum): untyped = 2097152
template SCFIND_POSIX*(_: type QsciScintillaBaseEnumEnum): untyped = 4194304
template SCFIND_CXX11REGEX*(_: type QsciScintillaBaseEnumEnum): untyped = 8388608
template SC_FOLDDISPLAYTEXT_HIDDEN*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_FOLDDISPLAYTEXT_STANDARD*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_FOLDDISPLAYTEXT_BOXED*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_FOLDLEVELBASE*(_: type QsciScintillaBaseEnumEnum): untyped = 1024
template SC_FOLDLEVELWHITEFLAG*(_: type QsciScintillaBaseEnumEnum): untyped = 4096
template SC_FOLDLEVELHEADERFLAG*(_: type QsciScintillaBaseEnumEnum): untyped = 8192
template SC_FOLDLEVELNUMBERMASK*(_: type QsciScintillaBaseEnumEnum): untyped = 4095
template SC_FOLDFLAG_LINEBEFORE_EXPANDED*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_FOLDFLAG_LINEBEFORE_CONTRACTED*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_FOLDFLAG_LINEAFTER_EXPANDED*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template SC_FOLDFLAG_LINEAFTER_CONTRACTED*(_: type QsciScintillaBaseEnumEnum): untyped = 16
template SC_FOLDFLAG_LEVELNUMBERS*(_: type QsciScintillaBaseEnumEnum): untyped = 64
template SC_FOLDFLAG_LINESTATE*(_: type QsciScintillaBaseEnumEnum): untyped = 128
template SC_LINE_END_TYPE_DEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_LINE_END_TYPE_UNICODE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_TIME_FOREVER*(_: type QsciScintillaBaseEnumEnum): untyped = 10000000
template SC_WRAP_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_WRAP_WORD*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_WRAP_CHAR*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_WRAP_WHITESPACE*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_WRAPINDENT_FIXED*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_WRAPINDENT_SAME*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_WRAPINDENT_INDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_WRAPINDENT_DEEPINDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_CACHE_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_CACHE_CARET*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_CACHE_PAGE*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_CACHE_DOCUMENT*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_PHASES_ONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_PHASES_TWO*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_PHASES_MULTIPLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template ANNOTATION_HIDDEN*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template ANNOTATION_STANDARD*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template ANNOTATION_BOXED*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template ANNOTATION_INDENTED*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template EDGE_NONE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template EDGE_LINE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template EDGE_BACKGROUND*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template EDGE_MULTILINE*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_CURSORNORMAL*(_: type QsciScintillaBaseEnumEnum): untyped = -1
template SC_CURSORARROW*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_CURSORWAIT*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_CURSORREVERSEARROW*(_: type QsciScintillaBaseEnumEnum): untyped = 7
template UNDO_MAY_COALESCE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template VISIBLE_SLOP*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template VISIBLE_STRICT*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template CARET_SLOP*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template CARET_STRICT*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template CARET_JUMPS*(_: type QsciScintillaBaseEnumEnum): untyped = 16
template CARET_EVEN*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template CARETSTYLE_INVISIBLE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template CARETSTYLE_LINE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template CARETSTYLE_BLOCK*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_MOD_INSERTTEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_MOD_DELETETEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_MOD_CHANGESTYLE*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_MOD_CHANGEFOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template SC_PERFORMED_USER*(_: type QsciScintillaBaseEnumEnum): untyped = 16
template SC_PERFORMED_UNDO*(_: type QsciScintillaBaseEnumEnum): untyped = 32
template SC_PERFORMED_REDO*(_: type QsciScintillaBaseEnumEnum): untyped = 64
template SC_MULTISTEPUNDOREDO*(_: type QsciScintillaBaseEnumEnum): untyped = 128
template SC_LASTSTEPINUNDOREDO*(_: type QsciScintillaBaseEnumEnum): untyped = 256
template SC_MOD_CHANGEMARKER*(_: type QsciScintillaBaseEnumEnum): untyped = 512
template SC_MOD_BEFOREINSERT*(_: type QsciScintillaBaseEnumEnum): untyped = 1024
template SC_MOD_BEFOREDELETE*(_: type QsciScintillaBaseEnumEnum): untyped = 2048
template SC_MULTILINEUNDOREDO*(_: type QsciScintillaBaseEnumEnum): untyped = 4096
template SC_STARTACTION*(_: type QsciScintillaBaseEnumEnum): untyped = 8192
template SC_MOD_CHANGEINDICATOR*(_: type QsciScintillaBaseEnumEnum): untyped = 16384
template SC_MOD_CHANGELINESTATE*(_: type QsciScintillaBaseEnumEnum): untyped = 32768
template SC_MOD_CHANGEMARGIN*(_: type QsciScintillaBaseEnumEnum): untyped = 65536
template SC_MOD_CHANGEANNOTATION*(_: type QsciScintillaBaseEnumEnum): untyped = 131072
template SC_MOD_CONTAINER*(_: type QsciScintillaBaseEnumEnum): untyped = 262144
template SC_MOD_LEXERSTATE*(_: type QsciScintillaBaseEnumEnum): untyped = 524288
template SC_MOD_INSERTCHECK*(_: type QsciScintillaBaseEnumEnum): untyped = 1048576
template SC_MOD_CHANGETABSTOPS*(_: type QsciScintillaBaseEnumEnum): untyped = 2097152
template SC_MODEVENTMASKALL*(_: type QsciScintillaBaseEnumEnum): untyped = 4194303
template SCK_DOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 300
template SCK_UP*(_: type QsciScintillaBaseEnumEnum): untyped = 301
template SCK_LEFT*(_: type QsciScintillaBaseEnumEnum): untyped = 302
template SCK_RIGHT*(_: type QsciScintillaBaseEnumEnum): untyped = 303
template SCK_HOME*(_: type QsciScintillaBaseEnumEnum): untyped = 304
template SCK_END*(_: type QsciScintillaBaseEnumEnum): untyped = 305
template SCK_PRIOR*(_: type QsciScintillaBaseEnumEnum): untyped = 306
template SCK_NEXT*(_: type QsciScintillaBaseEnumEnum): untyped = 307
template SCK_DELETE*(_: type QsciScintillaBaseEnumEnum): untyped = 308
template SCK_INSERT*(_: type QsciScintillaBaseEnumEnum): untyped = 309
template SCK_ESCAPE*(_: type QsciScintillaBaseEnumEnum): untyped = 7
template SCK_BACK*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template SCK_TAB*(_: type QsciScintillaBaseEnumEnum): untyped = 9
template SCK_RETURN*(_: type QsciScintillaBaseEnumEnum): untyped = 13
template SCK_ADD*(_: type QsciScintillaBaseEnumEnum): untyped = 310
template SCK_SUBTRACT*(_: type QsciScintillaBaseEnumEnum): untyped = 311
template SCK_DIVIDE*(_: type QsciScintillaBaseEnumEnum): untyped = 312
template SCK_WIN*(_: type QsciScintillaBaseEnumEnum): untyped = 313
template SCK_RWIN*(_: type QsciScintillaBaseEnumEnum): untyped = 314
template SCK_MENU*(_: type QsciScintillaBaseEnumEnum): untyped = 315
template SCMOD_NORM*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SCMOD_SHIFT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SCMOD_CTRL*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SCMOD_ALT*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SCMOD_SUPER*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template SCMOD_META*(_: type QsciScintillaBaseEnumEnum): untyped = 16
template SCLEX_CONTAINER*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SCLEX_NULL*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SCLEX_PYTHON*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SCLEX_CPP*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SCLEX_HTML*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SCLEX_XML*(_: type QsciScintillaBaseEnumEnum): untyped = 5
template SCLEX_PERL*(_: type QsciScintillaBaseEnumEnum): untyped = 6
template SCLEX_SQL*(_: type QsciScintillaBaseEnumEnum): untyped = 7
template SCLEX_VB*(_: type QsciScintillaBaseEnumEnum): untyped = 8
template SCLEX_PROPERTIES*(_: type QsciScintillaBaseEnumEnum): untyped = 9
template SCLEX_ERRORLIST*(_: type QsciScintillaBaseEnumEnum): untyped = 10
template SCLEX_MAKEFILE*(_: type QsciScintillaBaseEnumEnum): untyped = 11
template SCLEX_BATCH*(_: type QsciScintillaBaseEnumEnum): untyped = 12
template SCLEX_LATEX*(_: type QsciScintillaBaseEnumEnum): untyped = 14
template SCLEX_LUA*(_: type QsciScintillaBaseEnumEnum): untyped = 15
template SCLEX_DIFF*(_: type QsciScintillaBaseEnumEnum): untyped = 16
template SCLEX_CONF*(_: type QsciScintillaBaseEnumEnum): untyped = 17
template SCLEX_PASCAL*(_: type QsciScintillaBaseEnumEnum): untyped = 18
template SCLEX_AVE*(_: type QsciScintillaBaseEnumEnum): untyped = 19
template SCLEX_ADA*(_: type QsciScintillaBaseEnumEnum): untyped = 20
template SCLEX_LISP*(_: type QsciScintillaBaseEnumEnum): untyped = 21
template SCLEX_RUBY*(_: type QsciScintillaBaseEnumEnum): untyped = 22
template SCLEX_EIFFEL*(_: type QsciScintillaBaseEnumEnum): untyped = 23
template SCLEX_EIFFELKW*(_: type QsciScintillaBaseEnumEnum): untyped = 24
template SCLEX_TCL*(_: type QsciScintillaBaseEnumEnum): untyped = 25
template SCLEX_NNCRONTAB*(_: type QsciScintillaBaseEnumEnum): untyped = 26
template SCLEX_BULLANT*(_: type QsciScintillaBaseEnumEnum): untyped = 27
template SCLEX_VBSCRIPT*(_: type QsciScintillaBaseEnumEnum): untyped = 28
template SCLEX_ASP*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SCLEX_PHP*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SCLEX_BAAN*(_: type QsciScintillaBaseEnumEnum): untyped = 31
template SCLEX_MATLAB*(_: type QsciScintillaBaseEnumEnum): untyped = 32
template SCLEX_SCRIPTOL*(_: type QsciScintillaBaseEnumEnum): untyped = 33
template SCLEX_ASM*(_: type QsciScintillaBaseEnumEnum): untyped = 34
template SCLEX_CPPNOCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 35
template SCLEX_FORTRAN*(_: type QsciScintillaBaseEnumEnum): untyped = 36
template SCLEX_F77*(_: type QsciScintillaBaseEnumEnum): untyped = 37
template SCLEX_CSS*(_: type QsciScintillaBaseEnumEnum): untyped = 38
template SCLEX_POV*(_: type QsciScintillaBaseEnumEnum): untyped = 39
template SCLEX_LOUT*(_: type QsciScintillaBaseEnumEnum): untyped = 40
template SCLEX_ESCRIPT*(_: type QsciScintillaBaseEnumEnum): untyped = 41
template SCLEX_PS*(_: type QsciScintillaBaseEnumEnum): untyped = 42
template SCLEX_NSIS*(_: type QsciScintillaBaseEnumEnum): untyped = 43
template SCLEX_MMIXAL*(_: type QsciScintillaBaseEnumEnum): untyped = 44
template SCLEX_CLW*(_: type QsciScintillaBaseEnumEnum): untyped = 45
template SCLEX_CLWNOCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 46
template SCLEX_LOT*(_: type QsciScintillaBaseEnumEnum): untyped = 47
template SCLEX_YAML*(_: type QsciScintillaBaseEnumEnum): untyped = 48
template SCLEX_TEX*(_: type QsciScintillaBaseEnumEnum): untyped = 49
template SCLEX_METAPOST*(_: type QsciScintillaBaseEnumEnum): untyped = 50
template SCLEX_POWERBASIC*(_: type QsciScintillaBaseEnumEnum): untyped = 51
template SCLEX_FORTH*(_: type QsciScintillaBaseEnumEnum): untyped = 52
template SCLEX_ERLANG*(_: type QsciScintillaBaseEnumEnum): untyped = 53
template SCLEX_OCTAVE*(_: type QsciScintillaBaseEnumEnum): untyped = 54
template SCLEX_MSSQL*(_: type QsciScintillaBaseEnumEnum): untyped = 55
template SCLEX_VERILOG*(_: type QsciScintillaBaseEnumEnum): untyped = 56
template SCLEX_KIX*(_: type QsciScintillaBaseEnumEnum): untyped = 57
template SCLEX_GUI4CLI*(_: type QsciScintillaBaseEnumEnum): untyped = 58
template SCLEX_SPECMAN*(_: type QsciScintillaBaseEnumEnum): untyped = 59
template SCLEX_AU3*(_: type QsciScintillaBaseEnumEnum): untyped = 60
template SCLEX_APDL*(_: type QsciScintillaBaseEnumEnum): untyped = 61
template SCLEX_BASH*(_: type QsciScintillaBaseEnumEnum): untyped = 62
template SCLEX_ASN1*(_: type QsciScintillaBaseEnumEnum): untyped = 63
template SCLEX_VHDL*(_: type QsciScintillaBaseEnumEnum): untyped = 64
template SCLEX_CAML*(_: type QsciScintillaBaseEnumEnum): untyped = 65
template SCLEX_BLITZBASIC*(_: type QsciScintillaBaseEnumEnum): untyped = 66
template SCLEX_PUREBASIC*(_: type QsciScintillaBaseEnumEnum): untyped = 67
template SCLEX_HASKELL*(_: type QsciScintillaBaseEnumEnum): untyped = 68
template SCLEX_PHPSCRIPT*(_: type QsciScintillaBaseEnumEnum): untyped = 69
template SCLEX_TADS3*(_: type QsciScintillaBaseEnumEnum): untyped = 70
template SCLEX_REBOL*(_: type QsciScintillaBaseEnumEnum): untyped = 71
template SCLEX_SMALLTALK*(_: type QsciScintillaBaseEnumEnum): untyped = 72
template SCLEX_FLAGSHIP*(_: type QsciScintillaBaseEnumEnum): untyped = 73
template SCLEX_CSOUND*(_: type QsciScintillaBaseEnumEnum): untyped = 74
template SCLEX_FREEBASIC*(_: type QsciScintillaBaseEnumEnum): untyped = 75
template SCLEX_INNOSETUP*(_: type QsciScintillaBaseEnumEnum): untyped = 76
template SCLEX_OPAL*(_: type QsciScintillaBaseEnumEnum): untyped = 77
template SCLEX_SPICE*(_: type QsciScintillaBaseEnumEnum): untyped = 78
template SCLEX_D*(_: type QsciScintillaBaseEnumEnum): untyped = 79
template SCLEX_CMAKE*(_: type QsciScintillaBaseEnumEnum): untyped = 80
template SCLEX_GAP*(_: type QsciScintillaBaseEnumEnum): untyped = 81
template SCLEX_PLM*(_: type QsciScintillaBaseEnumEnum): untyped = 82
template SCLEX_PROGRESS*(_: type QsciScintillaBaseEnumEnum): untyped = 83
template SCLEX_ABAQUS*(_: type QsciScintillaBaseEnumEnum): untyped = 84
template SCLEX_ASYMPTOTE*(_: type QsciScintillaBaseEnumEnum): untyped = 85
template SCLEX_R*(_: type QsciScintillaBaseEnumEnum): untyped = 86
template SCLEX_MAGIK*(_: type QsciScintillaBaseEnumEnum): untyped = 87
template SCLEX_POWERSHELL*(_: type QsciScintillaBaseEnumEnum): untyped = 88
template SCLEX_MYSQL*(_: type QsciScintillaBaseEnumEnum): untyped = 89
template SCLEX_PO*(_: type QsciScintillaBaseEnumEnum): untyped = 90
template SCLEX_TAL*(_: type QsciScintillaBaseEnumEnum): untyped = 91
template SCLEX_COBOL*(_: type QsciScintillaBaseEnumEnum): untyped = 92
template SCLEX_TACL*(_: type QsciScintillaBaseEnumEnum): untyped = 93
template SCLEX_SORCUS*(_: type QsciScintillaBaseEnumEnum): untyped = 94
template SCLEX_POWERPRO*(_: type QsciScintillaBaseEnumEnum): untyped = 95
template SCLEX_NIMROD*(_: type QsciScintillaBaseEnumEnum): untyped = 96
template SCLEX_SML*(_: type QsciScintillaBaseEnumEnum): untyped = 97
template SCLEX_MARKDOWN*(_: type QsciScintillaBaseEnumEnum): untyped = 98
template SCLEX_TXT2TAGS*(_: type QsciScintillaBaseEnumEnum): untyped = 99
template SCLEX_A68K*(_: type QsciScintillaBaseEnumEnum): untyped = 100
template SCLEX_MODULA*(_: type QsciScintillaBaseEnumEnum): untyped = 101
template SCLEX_COFFEESCRIPT*(_: type QsciScintillaBaseEnumEnum): untyped = 102
template SCLEX_TCMD*(_: type QsciScintillaBaseEnumEnum): untyped = 103
template SCLEX_AVS*(_: type QsciScintillaBaseEnumEnum): untyped = 104
template SCLEX_ECL*(_: type QsciScintillaBaseEnumEnum): untyped = 105
template SCLEX_OSCRIPT*(_: type QsciScintillaBaseEnumEnum): untyped = 106
template SCLEX_VISUALPROLOG*(_: type QsciScintillaBaseEnumEnum): untyped = 107
template SCLEX_LITERATEHASKELL*(_: type QsciScintillaBaseEnumEnum): untyped = 108
template SCLEX_STTXT*(_: type QsciScintillaBaseEnumEnum): untyped = 109
template SCLEX_KVIRC*(_: type QsciScintillaBaseEnumEnum): untyped = 110
template SCLEX_RUST*(_: type QsciScintillaBaseEnumEnum): untyped = 111
template SCLEX_DMAP*(_: type QsciScintillaBaseEnumEnum): untyped = 112
template SCLEX_AS*(_: type QsciScintillaBaseEnumEnum): untyped = 113
template SCLEX_DMIS*(_: type QsciScintillaBaseEnumEnum): untyped = 114
template SCLEX_REGISTRY*(_: type QsciScintillaBaseEnumEnum): untyped = 115
template SCLEX_BIBTEX*(_: type QsciScintillaBaseEnumEnum): untyped = 116
template SCLEX_SREC*(_: type QsciScintillaBaseEnumEnum): untyped = 117
template SCLEX_IHEX*(_: type QsciScintillaBaseEnumEnum): untyped = 118
template SCLEX_TEHEX*(_: type QsciScintillaBaseEnumEnum): untyped = 119
template SCLEX_JSON*(_: type QsciScintillaBaseEnumEnum): untyped = 120
template SCLEX_EDIFACT*(_: type QsciScintillaBaseEnumEnum): untyped = 121
template SCLEX_INDENT*(_: type QsciScintillaBaseEnumEnum): untyped = 122
template SCLEX_MAXIMA*(_: type QsciScintillaBaseEnumEnum): untyped = 123
template SCLEX_STATA*(_: type QsciScintillaBaseEnumEnum): untyped = 124
template SCLEX_SAS*(_: type QsciScintillaBaseEnumEnum): untyped = 125
template SC_WEIGHT_NORMAL*(_: type QsciScintillaBaseEnumEnum): untyped = 400
template SC_WEIGHT_SEMIBOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 600
template SC_WEIGHT_BOLD*(_: type QsciScintillaBaseEnumEnum): untyped = 700
template SC_TECHNOLOGY_DEFAULT*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_TECHNOLOGY_DIRECTWRITE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_TECHNOLOGY_DIRECTWRITERETAIN*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_TECHNOLOGY_DIRECTWRITEDC*(_: type QsciScintillaBaseEnumEnum): untyped = 3
template SC_CASEINSENSITIVEBEHAVIOUR_RESPECTCASE*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_CASEINSENSITIVEBEHAVIOUR_IGNORECASE*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_FONT_SIZE_MULTIPLIER*(_: type QsciScintillaBaseEnumEnum): untyped = 100
template SC_FOLDACTION_CONTRACT*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_FOLDACTION_EXPAND*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_FOLDACTION_TOGGLE*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_AUTOMATICFOLD_SHOW*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_AUTOMATICFOLD_CLICK*(_: type QsciScintillaBaseEnumEnum): untyped = 2
template SC_AUTOMATICFOLD_CHANGE*(_: type QsciScintillaBaseEnumEnum): untyped = 4
template SC_ORDER_PRESORTED*(_: type QsciScintillaBaseEnumEnum): untyped = 0
template SC_ORDER_PERFORMSORT*(_: type QsciScintillaBaseEnumEnum): untyped = 1
template SC_ORDER_CUSTOM*(_: type QsciScintillaBaseEnumEnum): untyped = 2

import gen_qsciscintillabase_types
export gen_qsciscintillabase_types

import
  gen_qabstractscrollarea,
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qimage_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qscrollbar_types,
  gen_qsize_types,
  gen_qstyleoption_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qwidget_types
export
  gen_qabstractscrollarea,
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qimage_types,
  gen_qmargins_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qscrollbar_types,
  gen_qsize_types,
  gen_qstyleoption_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qwidget_types

type cQsciScintillaBase*{.exportc: "QsciScintillaBase", incompleteStruct.} = object

proc fcQsciScintillaBase_metaObject(self: pointer, ): pointer {.importc: "QsciScintillaBase_metaObject".}
proc fcQsciScintillaBase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciScintillaBase_metacast".}
proc fcQsciScintillaBase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciScintillaBase_metacall".}
proc fcQsciScintillaBase_tr(s: cstring): struct_miqt_string {.importc: "QsciScintillaBase_tr".}
proc fcQsciScintillaBase_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciScintillaBase_trUtf8".}
proc fcQsciScintillaBase_pool(): pointer {.importc: "QsciScintillaBase_pool".}
proc fcQsciScintillaBase_replaceHorizontalScrollBar(self: pointer, scrollBar: pointer): void {.importc: "QsciScintillaBase_replaceHorizontalScrollBar".}
proc fcQsciScintillaBase_replaceVerticalScrollBar(self: pointer, scrollBar: pointer): void {.importc: "QsciScintillaBase_replaceVerticalScrollBar".}
proc fcQsciScintillaBase_SendScintilla(self: pointer, msg: cuint): clong {.importc: "QsciScintillaBase_SendScintilla".}
proc fcQsciScintillaBase_SendScintilla2(self: pointer, msg: cuint, wParam: culong, lParam: pointer): clong {.importc: "QsciScintillaBase_SendScintilla2".}
proc fcQsciScintillaBase_SendScintilla3(self: pointer, msg: cuint, wParam: miqt_uintptr_t, lParam: cstring): clong {.importc: "QsciScintillaBase_SendScintilla3".}
proc fcQsciScintillaBase_SendScintilla4(self: pointer, msg: cuint, lParam: cstring): clong {.importc: "QsciScintillaBase_SendScintilla4".}
proc fcQsciScintillaBase_SendScintilla5(self: pointer, msg: cuint, wParam: cstring, lParam: cstring): clong {.importc: "QsciScintillaBase_SendScintilla5".}
proc fcQsciScintillaBase_SendScintilla6(self: pointer, msg: cuint, wParam: clong): clong {.importc: "QsciScintillaBase_SendScintilla6".}
proc fcQsciScintillaBase_SendScintilla7(self: pointer, msg: cuint, wParam: cint): clong {.importc: "QsciScintillaBase_SendScintilla7".}
proc fcQsciScintillaBase_SendScintilla8(self: pointer, msg: cuint, cpMin: clong, cpMax: clong, lpstrText: cstring): clong {.importc: "QsciScintillaBase_SendScintilla8".}
proc fcQsciScintillaBase_SendScintilla9(self: pointer, msg: cuint, wParam: culong, col: pointer): clong {.importc: "QsciScintillaBase_SendScintilla9".}
proc fcQsciScintillaBase_SendScintilla10(self: pointer, msg: cuint, col: pointer): clong {.importc: "QsciScintillaBase_SendScintilla10".}
proc fcQsciScintillaBase_SendScintilla11(self: pointer, msg: cuint, wParam: culong, hdc: pointer, rc: pointer, cpMin: clong, cpMax: clong): clong {.importc: "QsciScintillaBase_SendScintilla11".}
proc fcQsciScintillaBase_SendScintilla12(self: pointer, msg: cuint, wParam: culong, lParam: pointer): clong {.importc: "QsciScintillaBase_SendScintilla12".}
proc fcQsciScintillaBase_SendScintilla13(self: pointer, msg: cuint, wParam: culong, lParam: pointer): clong {.importc: "QsciScintillaBase_SendScintilla13".}
proc fcQsciScintillaBase_SendScintillaPtrResult(self: pointer, msg: cuint): pointer {.importc: "QsciScintillaBase_SendScintillaPtrResult".}
proc fcQsciScintillaBase_commandKey(qt_key: cint, modifiers: ptr cint): cint {.importc: "QsciScintillaBase_commandKey".}
proc fcQsciScintillaBase_QSCN_SELCHANGED(self: pointer, yes: bool): void {.importc: "QsciScintillaBase_QSCN_SELCHANGED".}
proc fcQsciScintillaBase_connect_QSCN_SELCHANGED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_QSCN_SELCHANGED".}
proc fcQsciScintillaBase_SCN_AUTOCCANCELLED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_AUTOCCANCELLED".}
proc fcQsciScintillaBase_connect_SCN_AUTOCCANCELLED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCCANCELLED".}
proc fcQsciScintillaBase_SCN_AUTOCCHARDELETED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_AUTOCCHARDELETED".}
proc fcQsciScintillaBase_connect_SCN_AUTOCCHARDELETED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCCHARDELETED".}
proc fcQsciScintillaBase_SCN_AUTOCCOMPLETED(self: pointer, selection: cstring, position: cint, ch: cint, methodVal: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCCOMPLETED".}
proc fcQsciScintillaBase_connect_SCN_AUTOCCOMPLETED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCCOMPLETED".}
proc fcQsciScintillaBase_SCN_AUTOCSELECTION(self: pointer, selection: cstring, position: cint, ch: cint, methodVal: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCSELECTION".}
proc fcQsciScintillaBase_connect_SCN_AUTOCSELECTION(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCSELECTION".}
proc fcQsciScintillaBase_SCN_AUTOCSELECTION2(self: pointer, selection: cstring, position: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCSELECTION2".}
proc fcQsciScintillaBase_connect_SCN_AUTOCSELECTION2(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCSELECTION2".}
proc fcQsciScintillaBase_SCN_AUTOCSELECTIONCHANGE(self: pointer, selection: cstring, id: cint, position: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCSELECTIONCHANGE".}
proc fcQsciScintillaBase_connect_SCN_AUTOCSELECTIONCHANGE(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCSELECTIONCHANGE".}
proc fcQsciScintillaBase_SCEN_CHANGE(self: pointer, ): void {.importc: "QsciScintillaBase_SCEN_CHANGE".}
proc fcQsciScintillaBase_connect_SCEN_CHANGE(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCEN_CHANGE".}
proc fcQsciScintillaBase_SCN_CALLTIPCLICK(self: pointer, direction: cint): void {.importc: "QsciScintillaBase_SCN_CALLTIPCLICK".}
proc fcQsciScintillaBase_connect_SCN_CALLTIPCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_CALLTIPCLICK".}
proc fcQsciScintillaBase_SCN_CHARADDED(self: pointer, charadded: cint): void {.importc: "QsciScintillaBase_SCN_CHARADDED".}
proc fcQsciScintillaBase_connect_SCN_CHARADDED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_CHARADDED".}
proc fcQsciScintillaBase_SCN_DOUBLECLICK(self: pointer, position: cint, line: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_DOUBLECLICK".}
proc fcQsciScintillaBase_connect_SCN_DOUBLECLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_DOUBLECLICK".}
proc fcQsciScintillaBase_SCN_DWELLEND(self: pointer, position: cint, x: cint, y: cint): void {.importc: "QsciScintillaBase_SCN_DWELLEND".}
proc fcQsciScintillaBase_connect_SCN_DWELLEND(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_DWELLEND".}
proc fcQsciScintillaBase_SCN_DWELLSTART(self: pointer, position: cint, x: cint, y: cint): void {.importc: "QsciScintillaBase_SCN_DWELLSTART".}
proc fcQsciScintillaBase_connect_SCN_DWELLSTART(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_DWELLSTART".}
proc fcQsciScintillaBase_SCN_FOCUSIN(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_FOCUSIN".}
proc fcQsciScintillaBase_connect_SCN_FOCUSIN(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_FOCUSIN".}
proc fcQsciScintillaBase_SCN_FOCUSOUT(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_FOCUSOUT".}
proc fcQsciScintillaBase_connect_SCN_FOCUSOUT(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_FOCUSOUT".}
proc fcQsciScintillaBase_SCN_HOTSPOTCLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_HOTSPOTCLICK".}
proc fcQsciScintillaBase_connect_SCN_HOTSPOTCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_HOTSPOTCLICK".}
proc fcQsciScintillaBase_SCN_HOTSPOTDOUBLECLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_HOTSPOTDOUBLECLICK".}
proc fcQsciScintillaBase_connect_SCN_HOTSPOTDOUBLECLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_HOTSPOTDOUBLECLICK".}
proc fcQsciScintillaBase_SCN_HOTSPOTRELEASECLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_HOTSPOTRELEASECLICK".}
proc fcQsciScintillaBase_connect_SCN_HOTSPOTRELEASECLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_HOTSPOTRELEASECLICK".}
proc fcQsciScintillaBase_SCN_INDICATORCLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_INDICATORCLICK".}
proc fcQsciScintillaBase_connect_SCN_INDICATORCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_INDICATORCLICK".}
proc fcQsciScintillaBase_SCN_INDICATORRELEASE(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_INDICATORRELEASE".}
proc fcQsciScintillaBase_connect_SCN_INDICATORRELEASE(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_INDICATORRELEASE".}
proc fcQsciScintillaBase_SCN_MACRORECORD(self: pointer, param1: cuint, param2: culong, param3: pointer): void {.importc: "QsciScintillaBase_SCN_MACRORECORD".}
proc fcQsciScintillaBase_connect_SCN_MACRORECORD(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MACRORECORD".}
proc fcQsciScintillaBase_SCN_MARGINCLICK(self: pointer, position: cint, modifiers: cint, margin: cint): void {.importc: "QsciScintillaBase_SCN_MARGINCLICK".}
proc fcQsciScintillaBase_connect_SCN_MARGINCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MARGINCLICK".}
proc fcQsciScintillaBase_SCN_MARGINRIGHTCLICK(self: pointer, position: cint, modifiers: cint, margin: cint): void {.importc: "QsciScintillaBase_SCN_MARGINRIGHTCLICK".}
proc fcQsciScintillaBase_connect_SCN_MARGINRIGHTCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MARGINRIGHTCLICK".}
proc fcQsciScintillaBase_SCN_MODIFIED(self: pointer, param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint): void {.importc: "QsciScintillaBase_SCN_MODIFIED".}
proc fcQsciScintillaBase_connect_SCN_MODIFIED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MODIFIED".}
proc fcQsciScintillaBase_SCN_MODIFYATTEMPTRO(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_MODIFYATTEMPTRO".}
proc fcQsciScintillaBase_connect_SCN_MODIFYATTEMPTRO(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MODIFYATTEMPTRO".}
proc fcQsciScintillaBase_SCN_NEEDSHOWN(self: pointer, param1: cint, param2: cint): void {.importc: "QsciScintillaBase_SCN_NEEDSHOWN".}
proc fcQsciScintillaBase_connect_SCN_NEEDSHOWN(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_NEEDSHOWN".}
proc fcQsciScintillaBase_SCN_PAINTED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_PAINTED".}
proc fcQsciScintillaBase_connect_SCN_PAINTED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_PAINTED".}
proc fcQsciScintillaBase_SCN_SAVEPOINTLEFT(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_SAVEPOINTLEFT".}
proc fcQsciScintillaBase_connect_SCN_SAVEPOINTLEFT(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_SAVEPOINTLEFT".}
proc fcQsciScintillaBase_SCN_SAVEPOINTREACHED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_SAVEPOINTREACHED".}
proc fcQsciScintillaBase_connect_SCN_SAVEPOINTREACHED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_SAVEPOINTREACHED".}
proc fcQsciScintillaBase_SCN_STYLENEEDED(self: pointer, position: cint): void {.importc: "QsciScintillaBase_SCN_STYLENEEDED".}
proc fcQsciScintillaBase_connect_SCN_STYLENEEDED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_STYLENEEDED".}
proc fcQsciScintillaBase_SCN_URIDROPPED(self: pointer, url: pointer): void {.importc: "QsciScintillaBase_SCN_URIDROPPED".}
proc fcQsciScintillaBase_connect_SCN_URIDROPPED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_URIDROPPED".}
proc fcQsciScintillaBase_SCN_UPDATEUI(self: pointer, updated: cint): void {.importc: "QsciScintillaBase_SCN_UPDATEUI".}
proc fcQsciScintillaBase_connect_SCN_UPDATEUI(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_UPDATEUI".}
proc fcQsciScintillaBase_SCN_USERLISTSELECTION(self: pointer, selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint): void {.importc: "QsciScintillaBase_SCN_USERLISTSELECTION".}
proc fcQsciScintillaBase_connect_SCN_USERLISTSELECTION(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_USERLISTSELECTION".}
proc fcQsciScintillaBase_SCN_USERLISTSELECTION2(self: pointer, selection: cstring, id: cint, ch: cint, methodVal: cint): void {.importc: "QsciScintillaBase_SCN_USERLISTSELECTION2".}
proc fcQsciScintillaBase_connect_SCN_USERLISTSELECTION2(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_USERLISTSELECTION2".}
proc fcQsciScintillaBase_SCN_USERLISTSELECTION3(self: pointer, selection: cstring, id: cint): void {.importc: "QsciScintillaBase_SCN_USERLISTSELECTION3".}
proc fcQsciScintillaBase_connect_SCN_USERLISTSELECTION3(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_USERLISTSELECTION3".}
proc fcQsciScintillaBase_SCN_ZOOM(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_ZOOM".}
proc fcQsciScintillaBase_connect_SCN_ZOOM(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_ZOOM".}
proc fcQsciScintillaBase_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciScintillaBase_tr2".}
proc fcQsciScintillaBase_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciScintillaBase_tr3".}
proc fcQsciScintillaBase_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciScintillaBase_trUtf82".}
proc fcQsciScintillaBase_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciScintillaBase_trUtf83".}
proc fcQsciScintillaBase_SendScintilla22(self: pointer, msg: cuint, wParam: culong): clong {.importc: "QsciScintillaBase_SendScintilla22".}
proc fcQsciScintillaBase_SendScintilla32(self: pointer, msg: cuint, wParam: culong, lParam: clong): clong {.importc: "QsciScintillaBase_SendScintilla32".}
type cQsciScintillaBaseVTable = object
  destructor*: proc(vtbl: ptr cQsciScintillaBaseVTable, self: ptr cQsciScintillaBase) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  canInsertFromMimeData*: proc(vtbl, self: pointer, source: pointer): bool {.cdecl, raises: [], gcsafe.}
  fromMimeData*: proc(vtbl, self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  toMimeData*: proc(vtbl, self: pointer, text: struct_miqt_string, rectangular: bool): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciScintillaBase_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciScintillaBase_virtualbase_metaObject".}
proc fcQsciScintillaBase_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciScintillaBase_virtualbase_metacast".}
proc fcQsciScintillaBase_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciScintillaBase_virtualbase_metacall".}
proc fcQsciScintillaBase_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool {.importc: "QsciScintillaBase_virtualbase_canInsertFromMimeData".}
proc fcQsciScintillaBase_virtualbase_fromMimeData(self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string {.importc: "QsciScintillaBase_virtualbase_fromMimeData".}
proc fcQsciScintillaBase_virtualbase_toMimeData(self: pointer, text: struct_miqt_string, rectangular: bool): pointer {.importc: "QsciScintillaBase_virtualbase_toMimeData".}
proc fcQsciScintillaBase_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_changeEvent".}
proc fcQsciScintillaBase_virtualbase_contextMenuEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_contextMenuEvent".}
proc fcQsciScintillaBase_virtualbase_dragEnterEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_dragEnterEvent".}
proc fcQsciScintillaBase_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_dragLeaveEvent".}
proc fcQsciScintillaBase_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_dragMoveEvent".}
proc fcQsciScintillaBase_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_dropEvent".}
proc fcQsciScintillaBase_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_focusInEvent".}
proc fcQsciScintillaBase_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_focusOutEvent".}
proc fcQsciScintillaBase_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QsciScintillaBase_virtualbase_focusNextPrevChild".}
proc fcQsciScintillaBase_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_keyPressEvent".}
proc fcQsciScintillaBase_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_inputMethodEvent".}
proc fcQsciScintillaBase_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QsciScintillaBase_virtualbase_inputMethodQuery".}
proc fcQsciScintillaBase_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_mouseDoubleClickEvent".}
proc fcQsciScintillaBase_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_mouseMoveEvent".}
proc fcQsciScintillaBase_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_mousePressEvent".}
proc fcQsciScintillaBase_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_mouseReleaseEvent".}
proc fcQsciScintillaBase_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_paintEvent".}
proc fcQsciScintillaBase_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QsciScintillaBase_virtualbase_resizeEvent".}
proc fcQsciScintillaBase_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QsciScintillaBase_virtualbase_scrollContentsBy".}
proc fcQsciScintillaBase_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QsciScintillaBase_virtualbase_minimumSizeHint".}
proc fcQsciScintillaBase_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QsciScintillaBase_virtualbase_sizeHint".}
proc fcQsciScintillaBase_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QsciScintillaBase_virtualbase_setupViewport".}
proc fcQsciScintillaBase_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QsciScintillaBase_virtualbase_eventFilter".}
proc fcQsciScintillaBase_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QsciScintillaBase_virtualbase_event".}
proc fcQsciScintillaBase_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QsciScintillaBase_virtualbase_viewportEvent".}
proc fcQsciScintillaBase_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QsciScintillaBase_virtualbase_wheelEvent".}
proc fcQsciScintillaBase_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QsciScintillaBase_virtualbase_viewportSizeHint".}
proc fcQsciScintillaBase_virtualbase_devType(self: pointer, ): cint {.importc: "QsciScintillaBase_virtualbase_devType".}
proc fcQsciScintillaBase_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QsciScintillaBase_virtualbase_setVisible".}
proc fcQsciScintillaBase_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QsciScintillaBase_virtualbase_heightForWidth".}
proc fcQsciScintillaBase_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QsciScintillaBase_virtualbase_hasHeightForWidth".}
proc fcQsciScintillaBase_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QsciScintillaBase_virtualbase_paintEngine".}
proc fcQsciScintillaBase_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_keyReleaseEvent".}
proc fcQsciScintillaBase_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_enterEvent".}
proc fcQsciScintillaBase_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_leaveEvent".}
proc fcQsciScintillaBase_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_moveEvent".}
proc fcQsciScintillaBase_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_closeEvent".}
proc fcQsciScintillaBase_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_tabletEvent".}
proc fcQsciScintillaBase_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_actionEvent".}
proc fcQsciScintillaBase_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_showEvent".}
proc fcQsciScintillaBase_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_hideEvent".}
proc fcQsciScintillaBase_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QsciScintillaBase_virtualbase_nativeEvent".}
proc fcQsciScintillaBase_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QsciScintillaBase_virtualbase_metric".}
proc fcQsciScintillaBase_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QsciScintillaBase_virtualbase_initPainter".}
proc fcQsciScintillaBase_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QsciScintillaBase_virtualbase_redirected".}
proc fcQsciScintillaBase_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QsciScintillaBase_virtualbase_sharedPainter".}
proc fcQsciScintillaBase_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_timerEvent".}
proc fcQsciScintillaBase_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_childEvent".}
proc fcQsciScintillaBase_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciScintillaBase_virtualbase_customEvent".}
proc fcQsciScintillaBase_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciScintillaBase_virtualbase_connectNotify".}
proc fcQsciScintillaBase_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciScintillaBase_virtualbase_disconnectNotify".}
proc fcQsciScintillaBase_protectedbase_setScrollBars(self: pointer, ): void {.importc: "QsciScintillaBase_protectedbase_setScrollBars".}
proc fcQsciScintillaBase_protectedbase_textAsBytes(self: pointer, text: struct_miqt_string): struct_miqt_string {.importc: "QsciScintillaBase_protectedbase_textAsBytes".}
proc fcQsciScintillaBase_protectedbase_bytesAsText(self: pointer, bytes: cstring): struct_miqt_string {.importc: "QsciScintillaBase_protectedbase_bytesAsText".}
proc fcQsciScintillaBase_protectedbase_contextMenuNeeded(self: pointer, x: cint, y: cint): bool {.importc: "QsciScintillaBase_protectedbase_contextMenuNeeded".}
proc fcQsciScintillaBase_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QsciScintillaBase_protectedbase_setViewportMargins".}
proc fcQsciScintillaBase_protectedbase_viewportMargins(self: pointer, ): pointer {.importc: "QsciScintillaBase_protectedbase_viewportMargins".}
proc fcQsciScintillaBase_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QsciScintillaBase_protectedbase_drawFrame".}
proc fcQsciScintillaBase_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QsciScintillaBase_protectedbase_initStyleOption".}
proc fcQsciScintillaBase_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QsciScintillaBase_protectedbase_updateMicroFocus".}
proc fcQsciScintillaBase_protectedbase_create(self: pointer, ): void {.importc: "QsciScintillaBase_protectedbase_create".}
proc fcQsciScintillaBase_protectedbase_destroy(self: pointer, ): void {.importc: "QsciScintillaBase_protectedbase_destroy".}
proc fcQsciScintillaBase_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QsciScintillaBase_protectedbase_focusNextChild".}
proc fcQsciScintillaBase_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QsciScintillaBase_protectedbase_focusPreviousChild".}
proc fcQsciScintillaBase_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciScintillaBase_protectedbase_sender".}
proc fcQsciScintillaBase_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciScintillaBase_protectedbase_senderSignalIndex".}
proc fcQsciScintillaBase_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciScintillaBase_protectedbase_receivers".}
proc fcQsciScintillaBase_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciScintillaBase_protectedbase_isSignalConnected".}
proc fcQsciScintillaBase_new(vtbl: pointer, parent: pointer): ptr cQsciScintillaBase {.importc: "QsciScintillaBase_new".}
proc fcQsciScintillaBase_new2(vtbl: pointer, ): ptr cQsciScintillaBase {.importc: "QsciScintillaBase_new2".}
proc fcQsciScintillaBase_staticMetaObject(): pointer {.importc: "QsciScintillaBase_staticMetaObject".}
proc fcQsciScintillaBase_delete(self: pointer) {.importc: "QsciScintillaBase_delete".}

proc metaObject*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciScintillaBase_metaObject(self.h))

proc metacast*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cstring): pointer =
  fcQsciScintillaBase_metacast(self.h, param1)

proc metacall*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciScintillaBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring): string =
  let v_ms = fcQsciScintillaBase_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring): string =
  let v_ms = fcQsciScintillaBase_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pool*(_: type gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsciscintillabase_types.QsciScintillaBase =
  gen_qsciscintillabase_types.QsciScintillaBase(h: fcQsciScintillaBase_pool())

proc replaceHorizontalScrollBar*(self: gen_qsciscintillabase_types.QsciScintillaBase, scrollBar: gen_qscrollbar_types.QScrollBar): void =
  fcQsciScintillaBase_replaceHorizontalScrollBar(self.h, scrollBar.h)

proc replaceVerticalScrollBar*(self: gen_qsciscintillabase_types.QsciScintillaBase, scrollBar: gen_qscrollbar_types.QScrollBar): void =
  fcQsciScintillaBase_replaceVerticalScrollBar(self.h, scrollBar.h)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint): clong =
  fcQsciScintillaBase_SendScintilla(self.h, msg)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: pointer): clong =
  fcQsciScintillaBase_SendScintilla2(self.h, msg, wParam, lParam)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: miqt_uintptr_t, lParam: cstring): clong =
  fcQsciScintillaBase_SendScintilla3(self.h, msg, wParam, lParam)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, lParam: cstring): clong =
  fcQsciScintillaBase_SendScintilla4(self.h, msg, lParam)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: cstring, lParam: cstring): clong =
  fcQsciScintillaBase_SendScintilla5(self.h, msg, wParam, lParam)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: clong): clong =
  fcQsciScintillaBase_SendScintilla6(self.h, msg, wParam)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: cint): clong =
  fcQsciScintillaBase_SendScintilla7(self.h, msg, wParam)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, cpMin: clong, cpMax: clong, lpstrText: cstring): clong =
  fcQsciScintillaBase_SendScintilla8(self.h, msg, cpMin, cpMax, lpstrText)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, col: gen_qcolor_types.QColor): clong =
  fcQsciScintillaBase_SendScintilla9(self.h, msg, wParam, col.h)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, col: gen_qcolor_types.QColor): clong =
  fcQsciScintillaBase_SendScintilla10(self.h, msg, col.h)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, hdc: gen_qpainter_types.QPainter, rc: gen_qrect_types.QRect, cpMin: clong, cpMax: clong): clong =
  fcQsciScintillaBase_SendScintilla11(self.h, msg, wParam, hdc.h, rc.h, cpMin, cpMax)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: gen_qpixmap_types.QPixmap): clong =
  fcQsciScintillaBase_SendScintilla12(self.h, msg, wParam, lParam.h)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: gen_qimage_types.QImage): clong =
  fcQsciScintillaBase_SendScintilla13(self.h, msg, wParam, lParam.h)

proc SendScintillaPtrResult*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint): pointer =
  fcQsciScintillaBase_SendScintillaPtrResult(self.h, msg)

proc commandKey*(_: type gen_qsciscintillabase_types.QsciScintillaBase, qt_key: cint, modifiers: ptr cint): cint =
  fcQsciScintillaBase_commandKey(qt_key, modifiers)

proc QSCN_SELCHANGED*(self: gen_qsciscintillabase_types.QsciScintillaBase, yes: bool): void =
  fcQsciScintillaBase_QSCN_SELCHANGED(self.h, yes)

type QsciScintillaBaseQSCN_SELCHANGEDSlot* = proc(yes: bool)
proc miqt_exec_callback_cQsciScintillaBase_QSCN_SELCHANGED(slot: int, yes: bool) {.exportc: "miqt_exec_callback_QsciScintillaBase_QSCN_SELCHANGED".} =
  let nimfunc = cast[ptr QsciScintillaBaseQSCN_SELCHANGEDSlot](cast[pointer](slot))
  let slotval1 = yes

  nimfunc[](slotval1)

proc miqt_exec_callback_cQsciScintillaBase_QSCN_SELCHANGED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_QSCN_SELCHANGED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseQSCN_SELCHANGEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onQSCN_SELCHANGED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseQSCN_SELCHANGEDSlot) =
  var tmp = new QsciScintillaBaseQSCN_SELCHANGEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_QSCN_SELCHANGED(self.h, cast[int](addr tmp[]))

proc SCN_AUTOCCANCELLED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_AUTOCCANCELLED(self.h)

type QsciScintillaBaseSCN_AUTOCCANCELLEDSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCCANCELLED(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCANCELLED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_AUTOCCANCELLEDSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCCANCELLED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCANCELLED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_AUTOCCANCELLEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_AUTOCCANCELLED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_AUTOCCANCELLEDSlot) =
  var tmp = new QsciScintillaBaseSCN_AUTOCCANCELLEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_AUTOCCANCELLED(self.h, cast[int](addr tmp[]))

proc SCN_AUTOCCHARDELETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_AUTOCCHARDELETED(self.h)

type QsciScintillaBaseSCN_AUTOCCHARDELETEDSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCCHARDELETED(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCHARDELETED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_AUTOCCHARDELETEDSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCCHARDELETED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCHARDELETED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_AUTOCCHARDELETEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_AUTOCCHARDELETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_AUTOCCHARDELETEDSlot) =
  var tmp = new QsciScintillaBaseSCN_AUTOCCHARDELETEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_AUTOCCHARDELETED(self.h, cast[int](addr tmp[]))

proc SCN_AUTOCCOMPLETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, position: cint, ch: cint, methodVal: cint): void =
  fcQsciScintillaBase_SCN_AUTOCCOMPLETED(self.h, selection, position, ch, methodVal)

type QsciScintillaBaseSCN_AUTOCCOMPLETEDSlot* = proc(selection: cstring, position: cint, ch: cint, methodVal: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCCOMPLETED(slot: int, selection: cstring, position: cint, ch: cint, methodVal: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCOMPLETED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_AUTOCCOMPLETEDSlot](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = position

  let slotval3 = ch

  let slotval4 = methodVal

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCCOMPLETED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCOMPLETED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_AUTOCCOMPLETEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_AUTOCCOMPLETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_AUTOCCOMPLETEDSlot) =
  var tmp = new QsciScintillaBaseSCN_AUTOCCOMPLETEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_AUTOCCOMPLETED(self.h, cast[int](addr tmp[]))

proc SCN_AUTOCSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, position: cint, ch: cint, methodVal: cint): void =
  fcQsciScintillaBase_SCN_AUTOCSELECTION(self.h, selection, position, ch, methodVal)

type QsciScintillaBaseSCN_AUTOCSELECTIONSlot* = proc(selection: cstring, position: cint, ch: cint, methodVal: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCSELECTION(slot: int, selection: cstring, position: cint, ch: cint, methodVal: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTION".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_AUTOCSELECTIONSlot](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = position

  let slotval3 = ch

  let slotval4 = methodVal

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCSELECTION_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTION_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_AUTOCSELECTIONSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_AUTOCSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_AUTOCSELECTIONSlot) =
  var tmp = new QsciScintillaBaseSCN_AUTOCSELECTIONSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_AUTOCSELECTION(self.h, cast[int](addr tmp[]))

proc SCN_AUTOCSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, position: cint): void =
  fcQsciScintillaBase_SCN_AUTOCSELECTION2(self.h, selection, position)

type QsciScintillaBaseSCN_AUTOCSELECTION2Slot* = proc(selection: cstring, position: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCSELECTION2(slot: int, selection: cstring, position: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTION2".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_AUTOCSELECTION2Slot](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = position

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCSELECTION2_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTION2_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_AUTOCSELECTION2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_AUTOCSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_AUTOCSELECTION2Slot) =
  var tmp = new QsciScintillaBaseSCN_AUTOCSELECTION2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_AUTOCSELECTION2(self.h, cast[int](addr tmp[]))

proc SCN_AUTOCSELECTIONCHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint, position: cint): void =
  fcQsciScintillaBase_SCN_AUTOCSELECTIONCHANGE(self.h, selection, id, position)

type QsciScintillaBaseSCN_AUTOCSELECTIONCHANGESlot* = proc(selection: cstring, id: cint, position: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCSELECTIONCHANGE(slot: int, selection: cstring, id: cint, position: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTIONCHANGE".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_AUTOCSELECTIONCHANGESlot](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id

  let slotval3 = position

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQsciScintillaBase_SCN_AUTOCSELECTIONCHANGE_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTIONCHANGE_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_AUTOCSELECTIONCHANGESlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_AUTOCSELECTIONCHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_AUTOCSELECTIONCHANGESlot) =
  var tmp = new QsciScintillaBaseSCN_AUTOCSELECTIONCHANGESlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_AUTOCSELECTIONCHANGE(self.h, cast[int](addr tmp[]))

proc SCEN_CHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCEN_CHANGE(self.h)

type QsciScintillaBaseSCEN_CHANGESlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCEN_CHANGE(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCEN_CHANGE".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCEN_CHANGESlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCEN_CHANGE_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCEN_CHANGE_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCEN_CHANGESlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCEN_CHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCEN_CHANGESlot) =
  var tmp = new QsciScintillaBaseSCEN_CHANGESlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCEN_CHANGE(self.h, cast[int](addr tmp[]))

proc SCN_CALLTIPCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, direction: cint): void =
  fcQsciScintillaBase_SCN_CALLTIPCLICK(self.h, direction)

type QsciScintillaBaseSCN_CALLTIPCLICKSlot* = proc(direction: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_CALLTIPCLICK(slot: int, direction: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_CALLTIPCLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_CALLTIPCLICKSlot](cast[pointer](slot))
  let slotval1 = direction

  nimfunc[](slotval1)

proc miqt_exec_callback_cQsciScintillaBase_SCN_CALLTIPCLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_CALLTIPCLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_CALLTIPCLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_CALLTIPCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_CALLTIPCLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_CALLTIPCLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_CALLTIPCLICK(self.h, cast[int](addr tmp[]))

proc SCN_CHARADDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, charadded: cint): void =
  fcQsciScintillaBase_SCN_CHARADDED(self.h, charadded)

type QsciScintillaBaseSCN_CHARADDEDSlot* = proc(charadded: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_CHARADDED(slot: int, charadded: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_CHARADDED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_CHARADDEDSlot](cast[pointer](slot))
  let slotval1 = charadded

  nimfunc[](slotval1)

proc miqt_exec_callback_cQsciScintillaBase_SCN_CHARADDED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_CHARADDED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_CHARADDEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_CHARADDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_CHARADDEDSlot) =
  var tmp = new QsciScintillaBaseSCN_CHARADDEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_CHARADDED(self.h, cast[int](addr tmp[]))

proc SCN_DOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, line: cint, modifiers: cint): void =
  fcQsciScintillaBase_SCN_DOUBLECLICK(self.h, position, line, modifiers)

type QsciScintillaBaseSCN_DOUBLECLICKSlot* = proc(position: cint, line: cint, modifiers: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_DOUBLECLICK(slot: int, position: cint, line: cint, modifiers: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_DOUBLECLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_DOUBLECLICKSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = line

  let slotval3 = modifiers

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQsciScintillaBase_SCN_DOUBLECLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_DOUBLECLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_DOUBLECLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_DOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_DOUBLECLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_DOUBLECLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_DOUBLECLICK(self.h, cast[int](addr tmp[]))

proc SCN_DWELLEND*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, x: cint, y: cint): void =
  fcQsciScintillaBase_SCN_DWELLEND(self.h, position, x, y)

type QsciScintillaBaseSCN_DWELLENDSlot* = proc(position: cint, x: cint, y: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_DWELLEND(slot: int, position: cint, x: cint, y: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_DWELLEND".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_DWELLENDSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = x

  let slotval3 = y

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQsciScintillaBase_SCN_DWELLEND_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_DWELLEND_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_DWELLENDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_DWELLEND*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_DWELLENDSlot) =
  var tmp = new QsciScintillaBaseSCN_DWELLENDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_DWELLEND(self.h, cast[int](addr tmp[]))

proc SCN_DWELLSTART*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, x: cint, y: cint): void =
  fcQsciScintillaBase_SCN_DWELLSTART(self.h, position, x, y)

type QsciScintillaBaseSCN_DWELLSTARTSlot* = proc(position: cint, x: cint, y: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_DWELLSTART(slot: int, position: cint, x: cint, y: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_DWELLSTART".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_DWELLSTARTSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = x

  let slotval3 = y

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQsciScintillaBase_SCN_DWELLSTART_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_DWELLSTART_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_DWELLSTARTSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_DWELLSTART*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_DWELLSTARTSlot) =
  var tmp = new QsciScintillaBaseSCN_DWELLSTARTSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_DWELLSTART(self.h, cast[int](addr tmp[]))

proc SCN_FOCUSIN*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_FOCUSIN(self.h)

type QsciScintillaBaseSCN_FOCUSINSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_FOCUSIN(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_FOCUSIN".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_FOCUSINSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_FOCUSIN_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_FOCUSIN_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_FOCUSINSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_FOCUSIN*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_FOCUSINSlot) =
  var tmp = new QsciScintillaBaseSCN_FOCUSINSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_FOCUSIN(self.h, cast[int](addr tmp[]))

proc SCN_FOCUSOUT*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_FOCUSOUT(self.h)

type QsciScintillaBaseSCN_FOCUSOUTSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_FOCUSOUT(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_FOCUSOUT".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_FOCUSOUTSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_FOCUSOUT_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_FOCUSOUT_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_FOCUSOUTSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_FOCUSOUT*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_FOCUSOUTSlot) =
  var tmp = new QsciScintillaBaseSCN_FOCUSOUTSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_FOCUSOUT(self.h, cast[int](addr tmp[]))

proc SCN_HOTSPOTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =
  fcQsciScintillaBase_SCN_HOTSPOTCLICK(self.h, position, modifiers)

type QsciScintillaBaseSCN_HOTSPOTCLICKSlot* = proc(position: cint, modifiers: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_HOTSPOTCLICK(slot: int, position: cint, modifiers: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTCLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_HOTSPOTCLICKSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_HOTSPOTCLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTCLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_HOTSPOTCLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_HOTSPOTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_HOTSPOTCLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_HOTSPOTCLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_HOTSPOTCLICK(self.h, cast[int](addr tmp[]))

proc SCN_HOTSPOTDOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =
  fcQsciScintillaBase_SCN_HOTSPOTDOUBLECLICK(self.h, position, modifiers)

type QsciScintillaBaseSCN_HOTSPOTDOUBLECLICKSlot* = proc(position: cint, modifiers: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_HOTSPOTDOUBLECLICK(slot: int, position: cint, modifiers: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTDOUBLECLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_HOTSPOTDOUBLECLICKSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_HOTSPOTDOUBLECLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTDOUBLECLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_HOTSPOTDOUBLECLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_HOTSPOTDOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_HOTSPOTDOUBLECLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_HOTSPOTDOUBLECLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_HOTSPOTDOUBLECLICK(self.h, cast[int](addr tmp[]))

proc SCN_HOTSPOTRELEASECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =
  fcQsciScintillaBase_SCN_HOTSPOTRELEASECLICK(self.h, position, modifiers)

type QsciScintillaBaseSCN_HOTSPOTRELEASECLICKSlot* = proc(position: cint, modifiers: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_HOTSPOTRELEASECLICK(slot: int, position: cint, modifiers: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTRELEASECLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_HOTSPOTRELEASECLICKSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_HOTSPOTRELEASECLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTRELEASECLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_HOTSPOTRELEASECLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_HOTSPOTRELEASECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_HOTSPOTRELEASECLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_HOTSPOTRELEASECLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_HOTSPOTRELEASECLICK(self.h, cast[int](addr tmp[]))

proc SCN_INDICATORCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =
  fcQsciScintillaBase_SCN_INDICATORCLICK(self.h, position, modifiers)

type QsciScintillaBaseSCN_INDICATORCLICKSlot* = proc(position: cint, modifiers: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_INDICATORCLICK(slot: int, position: cint, modifiers: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_INDICATORCLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_INDICATORCLICKSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_INDICATORCLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_INDICATORCLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_INDICATORCLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_INDICATORCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_INDICATORCLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_INDICATORCLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_INDICATORCLICK(self.h, cast[int](addr tmp[]))

proc SCN_INDICATORRELEASE*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =
  fcQsciScintillaBase_SCN_INDICATORRELEASE(self.h, position, modifiers)

type QsciScintillaBaseSCN_INDICATORRELEASESlot* = proc(position: cint, modifiers: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_INDICATORRELEASE(slot: int, position: cint, modifiers: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_INDICATORRELEASE".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_INDICATORRELEASESlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_INDICATORRELEASE_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_INDICATORRELEASE_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_INDICATORRELEASESlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_INDICATORRELEASE*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_INDICATORRELEASESlot) =
  var tmp = new QsciScintillaBaseSCN_INDICATORRELEASESlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_INDICATORRELEASE(self.h, cast[int](addr tmp[]))

proc SCN_MACRORECORD*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cuint, param2: culong, param3: pointer): void =
  fcQsciScintillaBase_SCN_MACRORECORD(self.h, param1, param2, param3)

type QsciScintillaBaseSCN_MACRORECORDSlot* = proc(param1: cuint, param2: culong, param3: pointer)
proc miqt_exec_callback_cQsciScintillaBase_SCN_MACRORECORD(slot: int, param1: cuint, param2: culong, param3: pointer) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MACRORECORD".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_MACRORECORDSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  let slotval3 = param3

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQsciScintillaBase_SCN_MACRORECORD_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MACRORECORD_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_MACRORECORDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_MACRORECORD*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_MACRORECORDSlot) =
  var tmp = new QsciScintillaBaseSCN_MACRORECORDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_MACRORECORD(self.h, cast[int](addr tmp[]))

proc SCN_MARGINCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint, margin: cint): void =
  fcQsciScintillaBase_SCN_MARGINCLICK(self.h, position, modifiers, margin)

type QsciScintillaBaseSCN_MARGINCLICKSlot* = proc(position: cint, modifiers: cint, margin: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_MARGINCLICK(slot: int, position: cint, modifiers: cint, margin: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MARGINCLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_MARGINCLICKSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  let slotval3 = margin

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQsciScintillaBase_SCN_MARGINCLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MARGINCLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_MARGINCLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_MARGINCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_MARGINCLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_MARGINCLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_MARGINCLICK(self.h, cast[int](addr tmp[]))

proc SCN_MARGINRIGHTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint, margin: cint): void =
  fcQsciScintillaBase_SCN_MARGINRIGHTCLICK(self.h, position, modifiers, margin)

type QsciScintillaBaseSCN_MARGINRIGHTCLICKSlot* = proc(position: cint, modifiers: cint, margin: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_MARGINRIGHTCLICK(slot: int, position: cint, modifiers: cint, margin: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MARGINRIGHTCLICK".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_MARGINRIGHTCLICKSlot](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  let slotval3 = margin

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQsciScintillaBase_SCN_MARGINRIGHTCLICK_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MARGINRIGHTCLICK_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_MARGINRIGHTCLICKSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_MARGINRIGHTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_MARGINRIGHTCLICKSlot) =
  var tmp = new QsciScintillaBaseSCN_MARGINRIGHTCLICKSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_MARGINRIGHTCLICK(self.h, cast[int](addr tmp[]))

proc SCN_MODIFIED*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint): void =
  fcQsciScintillaBase_SCN_MODIFIED(self.h, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10)

type QsciScintillaBaseSCN_MODIFIEDSlot* = proc(param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_MODIFIED(slot: int, param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MODIFIED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_MODIFIEDSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  let slotval3 = (param3)

  let slotval4 = param4

  let slotval5 = param5

  let slotval6 = param6

  let slotval7 = param7

  let slotval8 = param8

  let slotval9 = param9

  let slotval10 = param10

  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8, slotval9, slotval10)

proc miqt_exec_callback_cQsciScintillaBase_SCN_MODIFIED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MODIFIED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_MODIFIEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_MODIFIED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_MODIFIEDSlot) =
  var tmp = new QsciScintillaBaseSCN_MODIFIEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_MODIFIED(self.h, cast[int](addr tmp[]))

proc SCN_MODIFYATTEMPTRO*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_MODIFYATTEMPTRO(self.h)

type QsciScintillaBaseSCN_MODIFYATTEMPTROSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_MODIFYATTEMPTRO(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MODIFYATTEMPTRO".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_MODIFYATTEMPTROSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_MODIFYATTEMPTRO_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_MODIFYATTEMPTRO_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_MODIFYATTEMPTROSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_MODIFYATTEMPTRO*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_MODIFYATTEMPTROSlot) =
  var tmp = new QsciScintillaBaseSCN_MODIFYATTEMPTROSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_MODIFYATTEMPTRO(self.h, cast[int](addr tmp[]))

proc SCN_NEEDSHOWN*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint): void =
  fcQsciScintillaBase_SCN_NEEDSHOWN(self.h, param1, param2)

type QsciScintillaBaseSCN_NEEDSHOWNSlot* = proc(param1: cint, param2: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_NEEDSHOWN(slot: int, param1: cint, param2: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_NEEDSHOWN".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_NEEDSHOWNSlot](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_NEEDSHOWN_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_NEEDSHOWN_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_NEEDSHOWNSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_NEEDSHOWN*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_NEEDSHOWNSlot) =
  var tmp = new QsciScintillaBaseSCN_NEEDSHOWNSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_NEEDSHOWN(self.h, cast[int](addr tmp[]))

proc SCN_PAINTED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_PAINTED(self.h)

type QsciScintillaBaseSCN_PAINTEDSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_PAINTED(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_PAINTED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_PAINTEDSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_PAINTED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_PAINTED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_PAINTEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_PAINTED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_PAINTEDSlot) =
  var tmp = new QsciScintillaBaseSCN_PAINTEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_PAINTED(self.h, cast[int](addr tmp[]))

proc SCN_SAVEPOINTLEFT*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_SAVEPOINTLEFT(self.h)

type QsciScintillaBaseSCN_SAVEPOINTLEFTSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_SAVEPOINTLEFT(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_SAVEPOINTLEFT".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_SAVEPOINTLEFTSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_SAVEPOINTLEFT_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_SAVEPOINTLEFT_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_SAVEPOINTLEFTSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_SAVEPOINTLEFT*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_SAVEPOINTLEFTSlot) =
  var tmp = new QsciScintillaBaseSCN_SAVEPOINTLEFTSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_SAVEPOINTLEFT(self.h, cast[int](addr tmp[]))

proc SCN_SAVEPOINTREACHED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_SAVEPOINTREACHED(self.h)

type QsciScintillaBaseSCN_SAVEPOINTREACHEDSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_SAVEPOINTREACHED(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_SAVEPOINTREACHED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_SAVEPOINTREACHEDSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_SAVEPOINTREACHED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_SAVEPOINTREACHED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_SAVEPOINTREACHEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_SAVEPOINTREACHED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_SAVEPOINTREACHEDSlot) =
  var tmp = new QsciScintillaBaseSCN_SAVEPOINTREACHEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_SAVEPOINTREACHED(self.h, cast[int](addr tmp[]))

proc SCN_STYLENEEDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint): void =
  fcQsciScintillaBase_SCN_STYLENEEDED(self.h, position)

type QsciScintillaBaseSCN_STYLENEEDEDSlot* = proc(position: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_STYLENEEDED(slot: int, position: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_STYLENEEDED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_STYLENEEDEDSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc miqt_exec_callback_cQsciScintillaBase_SCN_STYLENEEDED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_STYLENEEDED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_STYLENEEDEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_STYLENEEDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_STYLENEEDEDSlot) =
  var tmp = new QsciScintillaBaseSCN_STYLENEEDEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_STYLENEEDED(self.h, cast[int](addr tmp[]))

proc SCN_URIDROPPED*(self: gen_qsciscintillabase_types.QsciScintillaBase, url: gen_qurl_types.QUrl): void =
  fcQsciScintillaBase_SCN_URIDROPPED(self.h, url.h)

type QsciScintillaBaseSCN_URIDROPPEDSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQsciScintillaBase_SCN_URIDROPPED(slot: int, url: pointer) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_URIDROPPED".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_URIDROPPEDSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQsciScintillaBase_SCN_URIDROPPED_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_URIDROPPED_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_URIDROPPEDSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_URIDROPPED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_URIDROPPEDSlot) =
  var tmp = new QsciScintillaBaseSCN_URIDROPPEDSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_URIDROPPED(self.h, cast[int](addr tmp[]))

proc SCN_UPDATEUI*(self: gen_qsciscintillabase_types.QsciScintillaBase, updated: cint): void =
  fcQsciScintillaBase_SCN_UPDATEUI(self.h, updated)

type QsciScintillaBaseSCN_UPDATEUISlot* = proc(updated: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_UPDATEUI(slot: int, updated: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_UPDATEUI".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_UPDATEUISlot](cast[pointer](slot))
  let slotval1 = updated

  nimfunc[](slotval1)

proc miqt_exec_callback_cQsciScintillaBase_SCN_UPDATEUI_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_UPDATEUI_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_UPDATEUISlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_UPDATEUI*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_UPDATEUISlot) =
  var tmp = new QsciScintillaBaseSCN_UPDATEUISlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_UPDATEUI(self.h, cast[int](addr tmp[]))

proc SCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint): void =
  fcQsciScintillaBase_SCN_USERLISTSELECTION(self.h, selection, id, ch, methodVal, position)

type QsciScintillaBaseSCN_USERLISTSELECTIONSlot* = proc(selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_USERLISTSELECTION(slot: int, selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_USERLISTSELECTIONSlot](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id

  let slotval3 = ch

  let slotval4 = methodVal

  let slotval5 = position

  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5)

proc miqt_exec_callback_cQsciScintillaBase_SCN_USERLISTSELECTION_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_USERLISTSELECTIONSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_USERLISTSELECTIONSlot) =
  var tmp = new QsciScintillaBaseSCN_USERLISTSELECTIONSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_USERLISTSELECTION(self.h, cast[int](addr tmp[]))

proc SCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint, ch: cint, methodVal: cint): void =
  fcQsciScintillaBase_SCN_USERLISTSELECTION2(self.h, selection, id, ch, methodVal)

type QsciScintillaBaseSCN_USERLISTSELECTION2Slot* = proc(selection: cstring, id: cint, ch: cint, methodVal: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_USERLISTSELECTION2(slot: int, selection: cstring, id: cint, ch: cint, methodVal: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION2".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_USERLISTSELECTION2Slot](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id

  let slotval3 = ch

  let slotval4 = methodVal

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc miqt_exec_callback_cQsciScintillaBase_SCN_USERLISTSELECTION2_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION2_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_USERLISTSELECTION2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_USERLISTSELECTION2Slot) =
  var tmp = new QsciScintillaBaseSCN_USERLISTSELECTION2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_USERLISTSELECTION2(self.h, cast[int](addr tmp[]))

proc SCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint): void =
  fcQsciScintillaBase_SCN_USERLISTSELECTION3(self.h, selection, id)

type QsciScintillaBaseSCN_USERLISTSELECTION3Slot* = proc(selection: cstring, id: cint)
proc miqt_exec_callback_cQsciScintillaBase_SCN_USERLISTSELECTION3(slot: int, selection: cstring, id: cint) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION3".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_USERLISTSELECTION3Slot](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQsciScintillaBase_SCN_USERLISTSELECTION3_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION3_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_USERLISTSELECTION3Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_USERLISTSELECTION3Slot) =
  var tmp = new QsciScintillaBaseSCN_USERLISTSELECTION3Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_USERLISTSELECTION3(self.h, cast[int](addr tmp[]))

proc SCN_ZOOM*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_SCN_ZOOM(self.h)

type QsciScintillaBaseSCN_ZOOMSlot* = proc()
proc miqt_exec_callback_cQsciScintillaBase_SCN_ZOOM(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_ZOOM".} =
  let nimfunc = cast[ptr QsciScintillaBaseSCN_ZOOMSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQsciScintillaBase_SCN_ZOOM_release(slot: int) {.exportc: "miqt_exec_callback_QsciScintillaBase_SCN_ZOOM_release".} =
  let nimfunc = cast[ref QsciScintillaBaseSCN_ZOOMSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSCN_ZOOM*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseSCN_ZOOMSlot) =
  var tmp = new QsciScintillaBaseSCN_ZOOMSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_connect_SCN_ZOOM(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring, c: cstring): string =
  let v_ms = fcQsciScintillaBase_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciScintillaBase_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring, c: cstring): string =
  let v_ms = fcQsciScintillaBase_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciScintillaBase_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong): clong =
  fcQsciScintillaBase_SendScintilla22(self.h, msg, wParam)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: clong): clong =
  fcQsciScintillaBase_SendScintilla32(self.h, msg, wParam, lParam)

type QsciScintillaBasemetaObjectProc* = proc(self: QsciScintillaBase): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciScintillaBasemetacastProc* = proc(self: QsciScintillaBase, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciScintillaBasemetacallProc* = proc(self: QsciScintillaBase, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciScintillaBasecanInsertFromMimeDataProc* = proc(self: QsciScintillaBase, source: gen_qmimedata_types.QMimeData): bool {.raises: [], gcsafe.}
type QsciScintillaBasefromMimeDataProc* = proc(self: QsciScintillaBase, source: gen_qmimedata_types.QMimeData, rectangular: ptr bool): seq[byte] {.raises: [], gcsafe.}
type QsciScintillaBasetoMimeDataProc* = proc(self: QsciScintillaBase, text: seq[byte], rectangular: bool): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QsciScintillaBasechangeEventProc* = proc(self: QsciScintillaBase, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasecontextMenuEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasedragEnterEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasedragLeaveEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasedragMoveEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasedropEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasefocusInEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasefocusOutEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasefocusNextPrevChildProc* = proc(self: QsciScintillaBase, next: bool): bool {.raises: [], gcsafe.}
type QsciScintillaBasekeyPressEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseinputMethodEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseinputMethodQueryProc* = proc(self: QsciScintillaBase, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QsciScintillaBasemouseDoubleClickEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasemouseMoveEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasemousePressEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasemouseReleaseEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasepaintEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseresizeEventProc* = proc(self: QsciScintillaBase, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasescrollContentsByProc* = proc(self: QsciScintillaBase, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QsciScintillaBaseminimumSizeHintProc* = proc(self: QsciScintillaBase): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QsciScintillaBasesizeHintProc* = proc(self: QsciScintillaBase): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QsciScintillaBasesetupViewportProc* = proc(self: QsciScintillaBase, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QsciScintillaBaseeventFilterProc* = proc(self: QsciScintillaBase, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciScintillaBaseeventProc* = proc(self: QsciScintillaBase, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciScintillaBaseviewportEventProc* = proc(self: QsciScintillaBase, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciScintillaBasewheelEventProc* = proc(self: QsciScintillaBase, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseviewportSizeHintProc* = proc(self: QsciScintillaBase): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QsciScintillaBasedevTypeProc* = proc(self: QsciScintillaBase): cint {.raises: [], gcsafe.}
type QsciScintillaBasesetVisibleProc* = proc(self: QsciScintillaBase, visible: bool): void {.raises: [], gcsafe.}
type QsciScintillaBaseheightForWidthProc* = proc(self: QsciScintillaBase, param1: cint): cint {.raises: [], gcsafe.}
type QsciScintillaBasehasHeightForWidthProc* = proc(self: QsciScintillaBase): bool {.raises: [], gcsafe.}
type QsciScintillaBasepaintEngineProc* = proc(self: QsciScintillaBase): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QsciScintillaBasekeyReleaseEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseenterEventProc* = proc(self: QsciScintillaBase, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseleaveEventProc* = proc(self: QsciScintillaBase, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasemoveEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasecloseEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasetabletEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseactionEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseshowEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasehideEventProc* = proc(self: QsciScintillaBase, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasenativeEventProc* = proc(self: QsciScintillaBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QsciScintillaBasemetricProc* = proc(self: QsciScintillaBase, param1: cint): cint {.raises: [], gcsafe.}
type QsciScintillaBaseinitPainterProc* = proc(self: QsciScintillaBase, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QsciScintillaBaseredirectedProc* = proc(self: QsciScintillaBase, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QsciScintillaBasesharedPainterProc* = proc(self: QsciScintillaBase): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QsciScintillaBasetimerEventProc* = proc(self: QsciScintillaBase, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasechildEventProc* = proc(self: QsciScintillaBase, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciScintillaBasecustomEventProc* = proc(self: QsciScintillaBase, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillaBaseconnectNotifyProc* = proc(self: QsciScintillaBase, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciScintillaBasedisconnectNotifyProc* = proc(self: QsciScintillaBase, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciScintillaBaseVTable* = object
  vtbl: cQsciScintillaBaseVTable
  metaObject*: QsciScintillaBasemetaObjectProc
  metacast*: QsciScintillaBasemetacastProc
  metacall*: QsciScintillaBasemetacallProc
  canInsertFromMimeData*: QsciScintillaBasecanInsertFromMimeDataProc
  fromMimeData*: QsciScintillaBasefromMimeDataProc
  toMimeData*: QsciScintillaBasetoMimeDataProc
  changeEvent*: QsciScintillaBasechangeEventProc
  contextMenuEvent*: QsciScintillaBasecontextMenuEventProc
  dragEnterEvent*: QsciScintillaBasedragEnterEventProc
  dragLeaveEvent*: QsciScintillaBasedragLeaveEventProc
  dragMoveEvent*: QsciScintillaBasedragMoveEventProc
  dropEvent*: QsciScintillaBasedropEventProc
  focusInEvent*: QsciScintillaBasefocusInEventProc
  focusOutEvent*: QsciScintillaBasefocusOutEventProc
  focusNextPrevChild*: QsciScintillaBasefocusNextPrevChildProc
  keyPressEvent*: QsciScintillaBasekeyPressEventProc
  inputMethodEvent*: QsciScintillaBaseinputMethodEventProc
  inputMethodQuery*: QsciScintillaBaseinputMethodQueryProc
  mouseDoubleClickEvent*: QsciScintillaBasemouseDoubleClickEventProc
  mouseMoveEvent*: QsciScintillaBasemouseMoveEventProc
  mousePressEvent*: QsciScintillaBasemousePressEventProc
  mouseReleaseEvent*: QsciScintillaBasemouseReleaseEventProc
  paintEvent*: QsciScintillaBasepaintEventProc
  resizeEvent*: QsciScintillaBaseresizeEventProc
  scrollContentsBy*: QsciScintillaBasescrollContentsByProc
  minimumSizeHint*: QsciScintillaBaseminimumSizeHintProc
  sizeHint*: QsciScintillaBasesizeHintProc
  setupViewport*: QsciScintillaBasesetupViewportProc
  eventFilter*: QsciScintillaBaseeventFilterProc
  event*: QsciScintillaBaseeventProc
  viewportEvent*: QsciScintillaBaseviewportEventProc
  wheelEvent*: QsciScintillaBasewheelEventProc
  viewportSizeHint*: QsciScintillaBaseviewportSizeHintProc
  devType*: QsciScintillaBasedevTypeProc
  setVisible*: QsciScintillaBasesetVisibleProc
  heightForWidth*: QsciScintillaBaseheightForWidthProc
  hasHeightForWidth*: QsciScintillaBasehasHeightForWidthProc
  paintEngine*: QsciScintillaBasepaintEngineProc
  keyReleaseEvent*: QsciScintillaBasekeyReleaseEventProc
  enterEvent*: QsciScintillaBaseenterEventProc
  leaveEvent*: QsciScintillaBaseleaveEventProc
  moveEvent*: QsciScintillaBasemoveEventProc
  closeEvent*: QsciScintillaBasecloseEventProc
  tabletEvent*: QsciScintillaBasetabletEventProc
  actionEvent*: QsciScintillaBaseactionEventProc
  showEvent*: QsciScintillaBaseshowEventProc
  hideEvent*: QsciScintillaBasehideEventProc
  nativeEvent*: QsciScintillaBasenativeEventProc
  metric*: QsciScintillaBasemetricProc
  initPainter*: QsciScintillaBaseinitPainterProc
  redirected*: QsciScintillaBaseredirectedProc
  sharedPainter*: QsciScintillaBasesharedPainterProc
  timerEvent*: QsciScintillaBasetimerEventProc
  childEvent*: QsciScintillaBasechildEventProc
  customEvent*: QsciScintillaBasecustomEventProc
  connectNotify*: QsciScintillaBaseconnectNotifyProc
  disconnectNotify*: QsciScintillaBasedisconnectNotifyProc
proc QsciScintillaBasemetaObject*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciScintillaBase_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciScintillaBase_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciScintillaBasemetacast*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cstring): pointer =
  fcQsciScintillaBase_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciScintillaBase_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciScintillaBasemetacall*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciScintillaBase_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciScintillaBase_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciScintillaBasecanInsertFromMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, source: gen_qmimedata_types.QMimeData): bool =
  fcQsciScintillaBase_virtualbase_canInsertFromMimeData(self.h, source.h)

proc miqt_exec_callback_cQsciScintillaBase_canInsertFromMimeData(vtbl: pointer, self: pointer, source: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  let virtualReturn = vtbl[].canInsertFromMimeData(self, slotval1)
  virtualReturn

proc QsciScintillaBasefromMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, source: gen_qmimedata_types.QMimeData, rectangular: ptr bool): seq[byte] =
  var v_bytearray = fcQsciScintillaBase_virtualbase_fromMimeData(self.h, source.h, rectangular)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc miqt_exec_callback_cQsciScintillaBase_fromMimeData(vtbl: pointer, self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  let slotval2 = rectangular
  let virtualReturn = vtbl[].fromMimeData(self, slotval1, slotval2)
  struct_miqt_string(data: cast[cstring](if len(virtualReturn) == 0: nil else: unsafeAddr virtualReturn[0]), len: csize_t(len(virtualReturn)))

proc QsciScintillaBasetoMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, text: seq[byte], rectangular: bool): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQsciScintillaBase_virtualbase_toMimeData(self.h, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), rectangular))

proc miqt_exec_callback_cQsciScintillaBase_toMimeData(vtbl: pointer, self: pointer, text: struct_miqt_string, rectangular: bool): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval1 = vtextx_ret
  let slotval2 = rectangular
  let virtualReturn = vtbl[].toMimeData(self, slotval1, slotval2)
  virtualReturn.h

proc QsciScintillaBasechangeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qcoreevent_types.QEvent): void =
  fcQsciScintillaBase_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QsciScintillaBasecontextMenuEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QContextMenuEvent): void =
  fcQsciScintillaBase_virtualbase_contextMenuEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_contextMenuEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)
  vtbl[].contextMenuEvent(self, slotval1)

proc QsciScintillaBasedragEnterEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QDragEnterEvent): void =
  fcQsciScintillaBase_virtualbase_dragEnterEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_dragEnterEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)
  vtbl[].dragEnterEvent(self, slotval1)

proc QsciScintillaBasedragLeaveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQsciScintillaBase_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QsciScintillaBasedragMoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QDragMoveEvent): void =
  fcQsciScintillaBase_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QsciScintillaBasedropEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QDropEvent): void =
  fcQsciScintillaBase_virtualbase_dropEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_dropEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e)
  vtbl[].dropEvent(self, slotval1)

proc QsciScintillaBasefocusInEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QFocusEvent): void =
  fcQsciScintillaBase_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QsciScintillaBasefocusOutEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QFocusEvent): void =
  fcQsciScintillaBase_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QsciScintillaBasefocusNextPrevChild*(self: gen_qsciscintillabase_types.QsciScintillaBase, next: bool): bool =
  fcQsciScintillaBase_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQsciScintillaBase_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = next
  let virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QsciScintillaBasekeyPressEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QKeyEvent): void =
  fcQsciScintillaBase_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QsciScintillaBaseinputMethodEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QInputMethodEvent): void =
  fcQsciScintillaBase_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QsciScintillaBaseinputMethodQuery*(self: gen_qsciscintillabase_types.QsciScintillaBase, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQsciScintillaBase_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQsciScintillaBase_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = cint(query)
  let virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QsciScintillaBasemouseDoubleClickEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintillaBase_virtualbase_mouseDoubleClickEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_mouseDoubleClickEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QsciScintillaBasemouseMoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintillaBase_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QsciScintillaBasemousePressEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintillaBase_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QsciScintillaBasemouseReleaseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintillaBase_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QsciScintillaBasepaintEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QPaintEvent): void =
  fcQsciScintillaBase_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QsciScintillaBaseresizeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent_types.QResizeEvent): void =
  fcQsciScintillaBase_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintillaBase_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QsciScintillaBasescrollContentsBy*(self: gen_qsciscintillabase_types.QsciScintillaBase, dx: cint, dy: cint): void =
  fcQsciScintillaBase_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQsciScintillaBase_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QsciScintillaBaseminimumSizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQsciScintillaBase_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQsciScintillaBase_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QsciScintillaBasesizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQsciScintillaBase_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQsciScintillaBase_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QsciScintillaBasesetupViewport*(self: gen_qsciscintillabase_types.QsciScintillaBase, viewport: gen_qwidget_types.QWidget): void =
  fcQsciScintillaBase_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQsciScintillaBase_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QsciScintillaBaseeventFilter*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQsciScintillaBase_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQsciScintillaBase_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciScintillaBaseevent*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qcoreevent_types.QEvent): bool =
  fcQsciScintillaBase_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQsciScintillaBase_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciScintillaBaseviewportEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qcoreevent_types.QEvent): bool =
  fcQsciScintillaBase_virtualbase_viewportEvent(self.h, param1.h)

proc miqt_exec_callback_cQsciScintillaBase_viewportEvent(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  let virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QsciScintillaBasewheelEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qevent_types.QWheelEvent): void =
  fcQsciScintillaBase_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQsciScintillaBase_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QsciScintillaBaseviewportSizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQsciScintillaBase_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQsciScintillaBase_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QsciScintillaBasedevType*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): cint =
  fcQsciScintillaBase_virtualbase_devType(self.h)

proc miqt_exec_callback_cQsciScintillaBase_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QsciScintillaBasesetVisible*(self: gen_qsciscintillabase_types.QsciScintillaBase, visible: bool): void =
  fcQsciScintillaBase_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQsciScintillaBase_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QsciScintillaBaseheightForWidth*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint): cint =
  fcQsciScintillaBase_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQsciScintillaBase_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = param1
  let virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QsciScintillaBasehasHeightForWidth*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): bool =
  fcQsciScintillaBase_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQsciScintillaBase_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QsciScintillaBasepaintEngine*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQsciScintillaBase_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQsciScintillaBase_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QsciScintillaBasekeyReleaseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QKeyEvent): void =
  fcQsciScintillaBase_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QsciScintillaBaseenterEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent_types.QEvent): void =
  fcQsciScintillaBase_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QsciScintillaBaseleaveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent_types.QEvent): void =
  fcQsciScintillaBase_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QsciScintillaBasemoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QMoveEvent): void =
  fcQsciScintillaBase_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QsciScintillaBasecloseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QCloseEvent): void =
  fcQsciScintillaBase_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QsciScintillaBasetabletEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QTabletEvent): void =
  fcQsciScintillaBase_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QsciScintillaBaseactionEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QActionEvent): void =
  fcQsciScintillaBase_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QsciScintillaBaseshowEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QShowEvent): void =
  fcQsciScintillaBase_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QsciScintillaBasehideEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent_types.QHideEvent): void =
  fcQsciScintillaBase_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QsciScintillaBasenativeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQsciScintillaBase_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQsciScintillaBase_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  let virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciScintillaBasemetric*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint): cint =
  fcQsciScintillaBase_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQsciScintillaBase_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QsciScintillaBaseinitPainter*(self: gen_qsciscintillabase_types.QsciScintillaBase, painter: gen_qpainter_types.QPainter): void =
  fcQsciScintillaBase_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQsciScintillaBase_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QsciScintillaBaseredirected*(self: gen_qsciscintillabase_types.QsciScintillaBase, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQsciScintillaBase_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQsciScintillaBase_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  let virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QsciScintillaBasesharedPainter*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQsciScintillaBase_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQsciScintillaBase_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QsciScintillaBasetimerEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciScintillaBase_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciScintillaBasechildEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciScintillaBase_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciScintillaBasecustomEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent_types.QEvent): void =
  fcQsciScintillaBase_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintillaBase_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciScintillaBaseconnectNotify*(self: gen_qsciscintillabase_types.QsciScintillaBase, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciScintillaBase_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciScintillaBase_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciScintillaBasedisconnectNotify*(self: gen_qsciscintillabase_types.QsciScintillaBase, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciScintillaBase_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciScintillaBase_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaBaseVTable](vtbl)
  let self = QsciScintillaBase(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setScrollBars*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_protectedbase_setScrollBars(self.h)

proc textAsBytes*(self: gen_qsciscintillabase_types.QsciScintillaBase, text: string): seq[byte] =
  var v_bytearray = fcQsciScintillaBase_protectedbase_textAsBytes(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc bytesAsText*(self: gen_qsciscintillabase_types.QsciScintillaBase, bytes: cstring): string =
  let v_ms = fcQsciScintillaBase_protectedbase_bytesAsText(self.h, bytes)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc contextMenuNeeded*(self: gen_qsciscintillabase_types.QsciScintillaBase, x: cint, y: cint): bool =
  fcQsciScintillaBase_protectedbase_contextMenuNeeded(self.h, x, y)

proc setViewportMargins*(self: gen_qsciscintillabase_types.QsciScintillaBase, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQsciScintillaBase_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc viewportMargins*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQsciScintillaBase_protectedbase_viewportMargins(self.h))

proc drawFrame*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qpainter_types.QPainter): void =
  fcQsciScintillaBase_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qsciscintillabase_types.QsciScintillaBase, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQsciScintillaBase_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_protectedbase_create(self.h)

proc destroy*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =
  fcQsciScintillaBase_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): bool =
  fcQsciScintillaBase_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): bool =
  fcQsciScintillaBase_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciScintillaBase_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): cint =
  fcQsciScintillaBase_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsciscintillabase_types.QsciScintillaBase, signal: cstring): cint =
  fcQsciScintillaBase_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsciscintillabase_types.QsciScintillaBase, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciScintillaBase_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsciscintillabase_types.QsciScintillaBase,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QsciScintillaBaseVTable = nil): gen_qsciscintillabase_types.QsciScintillaBase =
  let vtbl = if vtbl == nil: new QsciScintillaBaseVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciScintillaBaseVTable, _: ptr cQsciScintillaBase) {.cdecl.} =
    let vtbl = cast[ref QsciScintillaBaseVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciScintillaBase_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciScintillaBase_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciScintillaBase_metacall
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQsciScintillaBase_canInsertFromMimeData
  if not isNil(vtbl.fromMimeData):
    vtbl[].vtbl.fromMimeData = miqt_exec_callback_cQsciScintillaBase_fromMimeData
  if not isNil(vtbl.toMimeData):
    vtbl[].vtbl.toMimeData = miqt_exec_callback_cQsciScintillaBase_toMimeData
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQsciScintillaBase_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQsciScintillaBase_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQsciScintillaBase_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQsciScintillaBase_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQsciScintillaBase_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQsciScintillaBase_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQsciScintillaBase_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQsciScintillaBase_focusOutEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQsciScintillaBase_focusNextPrevChild
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQsciScintillaBase_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQsciScintillaBase_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQsciScintillaBase_inputMethodQuery
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQsciScintillaBase_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQsciScintillaBase_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQsciScintillaBase_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQsciScintillaBase_mouseReleaseEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQsciScintillaBase_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQsciScintillaBase_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQsciScintillaBase_scrollContentsBy
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQsciScintillaBase_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQsciScintillaBase_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQsciScintillaBase_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciScintillaBase_eventFilter
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciScintillaBase_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQsciScintillaBase_viewportEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQsciScintillaBase_wheelEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQsciScintillaBase_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQsciScintillaBase_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQsciScintillaBase_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQsciScintillaBase_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQsciScintillaBase_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQsciScintillaBase_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQsciScintillaBase_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQsciScintillaBase_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQsciScintillaBase_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQsciScintillaBase_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQsciScintillaBase_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQsciScintillaBase_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQsciScintillaBase_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQsciScintillaBase_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQsciScintillaBase_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQsciScintillaBase_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQsciScintillaBase_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQsciScintillaBase_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQsciScintillaBase_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQsciScintillaBase_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciScintillaBase_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciScintillaBase_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciScintillaBase_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciScintillaBase_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciScintillaBase_disconnectNotify
  gen_qsciscintillabase_types.QsciScintillaBase(h: fcQsciScintillaBase_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsciscintillabase_types.QsciScintillaBase,
    vtbl: ref QsciScintillaBaseVTable = nil): gen_qsciscintillabase_types.QsciScintillaBase =
  let vtbl = if vtbl == nil: new QsciScintillaBaseVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciScintillaBaseVTable, _: ptr cQsciScintillaBase) {.cdecl.} =
    let vtbl = cast[ref QsciScintillaBaseVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciScintillaBase_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciScintillaBase_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciScintillaBase_metacall
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQsciScintillaBase_canInsertFromMimeData
  if not isNil(vtbl.fromMimeData):
    vtbl[].vtbl.fromMimeData = miqt_exec_callback_cQsciScintillaBase_fromMimeData
  if not isNil(vtbl.toMimeData):
    vtbl[].vtbl.toMimeData = miqt_exec_callback_cQsciScintillaBase_toMimeData
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQsciScintillaBase_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQsciScintillaBase_contextMenuEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQsciScintillaBase_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQsciScintillaBase_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQsciScintillaBase_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQsciScintillaBase_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQsciScintillaBase_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQsciScintillaBase_focusOutEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQsciScintillaBase_focusNextPrevChild
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQsciScintillaBase_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQsciScintillaBase_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQsciScintillaBase_inputMethodQuery
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQsciScintillaBase_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQsciScintillaBase_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQsciScintillaBase_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQsciScintillaBase_mouseReleaseEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQsciScintillaBase_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQsciScintillaBase_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQsciScintillaBase_scrollContentsBy
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQsciScintillaBase_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQsciScintillaBase_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQsciScintillaBase_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciScintillaBase_eventFilter
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciScintillaBase_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQsciScintillaBase_viewportEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQsciScintillaBase_wheelEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQsciScintillaBase_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQsciScintillaBase_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQsciScintillaBase_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQsciScintillaBase_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQsciScintillaBase_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQsciScintillaBase_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQsciScintillaBase_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQsciScintillaBase_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQsciScintillaBase_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQsciScintillaBase_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQsciScintillaBase_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQsciScintillaBase_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQsciScintillaBase_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQsciScintillaBase_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQsciScintillaBase_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQsciScintillaBase_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQsciScintillaBase_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQsciScintillaBase_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQsciScintillaBase_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQsciScintillaBase_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciScintillaBase_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciScintillaBase_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciScintillaBase_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciScintillaBase_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciScintillaBase_disconnectNotify
  gen_qsciscintillabase_types.QsciScintillaBase(h: fcQsciScintillaBase_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qsciscintillabase_types.QsciScintillaBase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciScintillaBase_staticMetaObject())
proc delete*(self: gen_qsciscintillabase_types.QsciScintillaBase) =
  fcQsciScintillaBase_delete(self.h)
