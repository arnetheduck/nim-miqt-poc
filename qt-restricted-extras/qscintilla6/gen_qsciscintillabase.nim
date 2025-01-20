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
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qscrollbar,
  gen_qsize,
  gen_qstyleoption,
  gen_qurl,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractscrollarea,
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qscrollbar,
  gen_qsize,
  gen_qstyleoption,
  gen_qurl,
  gen_qvariant,
  gen_qwidget

type cQsciScintillaBase*{.exportc: "QsciScintillaBase", incompleteStruct.} = object

proc fcQsciScintillaBase_new(parent: pointer): ptr cQsciScintillaBase {.importc: "QsciScintillaBase_new".}
proc fcQsciScintillaBase_new2(): ptr cQsciScintillaBase {.importc: "QsciScintillaBase_new2".}
proc fcQsciScintillaBase_metaObject(self: pointer, ): pointer {.importc: "QsciScintillaBase_metaObject".}
proc fcQsciScintillaBase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciScintillaBase_metacast".}
proc fcQsciScintillaBase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciScintillaBase_metacall".}
proc fcQsciScintillaBase_tr(s: cstring): struct_miqt_string {.importc: "QsciScintillaBase_tr".}
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
proc fQsciScintillaBase_connect_QSCN_SELCHANGED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_QSCN_SELCHANGED".}
proc fcQsciScintillaBase_SCN_AUTOCCANCELLED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_AUTOCCANCELLED".}
proc fQsciScintillaBase_connect_SCN_AUTOCCANCELLED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCCANCELLED".}
proc fcQsciScintillaBase_SCN_AUTOCCHARDELETED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_AUTOCCHARDELETED".}
proc fQsciScintillaBase_connect_SCN_AUTOCCHARDELETED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCCHARDELETED".}
proc fcQsciScintillaBase_SCN_AUTOCCOMPLETED(self: pointer, selection: cstring, position: cint, ch: cint, methodVal: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCCOMPLETED".}
proc fQsciScintillaBase_connect_SCN_AUTOCCOMPLETED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCCOMPLETED".}
proc fcQsciScintillaBase_SCN_AUTOCSELECTION(self: pointer, selection: cstring, position: cint, ch: cint, methodVal: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCSELECTION".}
proc fQsciScintillaBase_connect_SCN_AUTOCSELECTION(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCSELECTION".}
proc fcQsciScintillaBase_SCN_AUTOCSELECTION2(self: pointer, selection: cstring, position: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCSELECTION2".}
proc fQsciScintillaBase_connect_SCN_AUTOCSELECTION2(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCSELECTION2".}
proc fcQsciScintillaBase_SCN_AUTOCSELECTIONCHANGE(self: pointer, selection: cstring, id: cint, position: cint): void {.importc: "QsciScintillaBase_SCN_AUTOCSELECTIONCHANGE".}
proc fQsciScintillaBase_connect_SCN_AUTOCSELECTIONCHANGE(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_AUTOCSELECTIONCHANGE".}
proc fcQsciScintillaBase_SCEN_CHANGE(self: pointer, ): void {.importc: "QsciScintillaBase_SCEN_CHANGE".}
proc fQsciScintillaBase_connect_SCEN_CHANGE(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCEN_CHANGE".}
proc fcQsciScintillaBase_SCN_CALLTIPCLICK(self: pointer, direction: cint): void {.importc: "QsciScintillaBase_SCN_CALLTIPCLICK".}
proc fQsciScintillaBase_connect_SCN_CALLTIPCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_CALLTIPCLICK".}
proc fcQsciScintillaBase_SCN_CHARADDED(self: pointer, charadded: cint): void {.importc: "QsciScintillaBase_SCN_CHARADDED".}
proc fQsciScintillaBase_connect_SCN_CHARADDED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_CHARADDED".}
proc fcQsciScintillaBase_SCN_DOUBLECLICK(self: pointer, position: cint, line: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_DOUBLECLICK".}
proc fQsciScintillaBase_connect_SCN_DOUBLECLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_DOUBLECLICK".}
proc fcQsciScintillaBase_SCN_DWELLEND(self: pointer, position: cint, x: cint, y: cint): void {.importc: "QsciScintillaBase_SCN_DWELLEND".}
proc fQsciScintillaBase_connect_SCN_DWELLEND(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_DWELLEND".}
proc fcQsciScintillaBase_SCN_DWELLSTART(self: pointer, position: cint, x: cint, y: cint): void {.importc: "QsciScintillaBase_SCN_DWELLSTART".}
proc fQsciScintillaBase_connect_SCN_DWELLSTART(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_DWELLSTART".}
proc fcQsciScintillaBase_SCN_FOCUSIN(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_FOCUSIN".}
proc fQsciScintillaBase_connect_SCN_FOCUSIN(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_FOCUSIN".}
proc fcQsciScintillaBase_SCN_FOCUSOUT(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_FOCUSOUT".}
proc fQsciScintillaBase_connect_SCN_FOCUSOUT(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_FOCUSOUT".}
proc fcQsciScintillaBase_SCN_HOTSPOTCLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_HOTSPOTCLICK".}
proc fQsciScintillaBase_connect_SCN_HOTSPOTCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_HOTSPOTCLICK".}
proc fcQsciScintillaBase_SCN_HOTSPOTDOUBLECLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_HOTSPOTDOUBLECLICK".}
proc fQsciScintillaBase_connect_SCN_HOTSPOTDOUBLECLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_HOTSPOTDOUBLECLICK".}
proc fcQsciScintillaBase_SCN_HOTSPOTRELEASECLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_HOTSPOTRELEASECLICK".}
proc fQsciScintillaBase_connect_SCN_HOTSPOTRELEASECLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_HOTSPOTRELEASECLICK".}
proc fcQsciScintillaBase_SCN_INDICATORCLICK(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_INDICATORCLICK".}
proc fQsciScintillaBase_connect_SCN_INDICATORCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_INDICATORCLICK".}
proc fcQsciScintillaBase_SCN_INDICATORRELEASE(self: pointer, position: cint, modifiers: cint): void {.importc: "QsciScintillaBase_SCN_INDICATORRELEASE".}
proc fQsciScintillaBase_connect_SCN_INDICATORRELEASE(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_INDICATORRELEASE".}
proc fcQsciScintillaBase_SCN_MACRORECORD(self: pointer, param1: cuint, param2: culong, param3: pointer): void {.importc: "QsciScintillaBase_SCN_MACRORECORD".}
proc fQsciScintillaBase_connect_SCN_MACRORECORD(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MACRORECORD".}
proc fcQsciScintillaBase_SCN_MARGINCLICK(self: pointer, position: cint, modifiers: cint, margin: cint): void {.importc: "QsciScintillaBase_SCN_MARGINCLICK".}
proc fQsciScintillaBase_connect_SCN_MARGINCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MARGINCLICK".}
proc fcQsciScintillaBase_SCN_MARGINRIGHTCLICK(self: pointer, position: cint, modifiers: cint, margin: cint): void {.importc: "QsciScintillaBase_SCN_MARGINRIGHTCLICK".}
proc fQsciScintillaBase_connect_SCN_MARGINRIGHTCLICK(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MARGINRIGHTCLICK".}
proc fcQsciScintillaBase_SCN_MODIFIED(self: pointer, param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint): void {.importc: "QsciScintillaBase_SCN_MODIFIED".}
proc fQsciScintillaBase_connect_SCN_MODIFIED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MODIFIED".}
proc fcQsciScintillaBase_SCN_MODIFYATTEMPTRO(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_MODIFYATTEMPTRO".}
proc fQsciScintillaBase_connect_SCN_MODIFYATTEMPTRO(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_MODIFYATTEMPTRO".}
proc fcQsciScintillaBase_SCN_NEEDSHOWN(self: pointer, param1: cint, param2: cint): void {.importc: "QsciScintillaBase_SCN_NEEDSHOWN".}
proc fQsciScintillaBase_connect_SCN_NEEDSHOWN(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_NEEDSHOWN".}
proc fcQsciScintillaBase_SCN_PAINTED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_PAINTED".}
proc fQsciScintillaBase_connect_SCN_PAINTED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_PAINTED".}
proc fcQsciScintillaBase_SCN_SAVEPOINTLEFT(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_SAVEPOINTLEFT".}
proc fQsciScintillaBase_connect_SCN_SAVEPOINTLEFT(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_SAVEPOINTLEFT".}
proc fcQsciScintillaBase_SCN_SAVEPOINTREACHED(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_SAVEPOINTREACHED".}
proc fQsciScintillaBase_connect_SCN_SAVEPOINTREACHED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_SAVEPOINTREACHED".}
proc fcQsciScintillaBase_SCN_STYLENEEDED(self: pointer, position: cint): void {.importc: "QsciScintillaBase_SCN_STYLENEEDED".}
proc fQsciScintillaBase_connect_SCN_STYLENEEDED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_STYLENEEDED".}
proc fcQsciScintillaBase_SCN_URIDROPPED(self: pointer, url: pointer): void {.importc: "QsciScintillaBase_SCN_URIDROPPED".}
proc fQsciScintillaBase_connect_SCN_URIDROPPED(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_URIDROPPED".}
proc fcQsciScintillaBase_SCN_UPDATEUI(self: pointer, updated: cint): void {.importc: "QsciScintillaBase_SCN_UPDATEUI".}
proc fQsciScintillaBase_connect_SCN_UPDATEUI(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_UPDATEUI".}
proc fcQsciScintillaBase_SCN_USERLISTSELECTION(self: pointer, selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint): void {.importc: "QsciScintillaBase_SCN_USERLISTSELECTION".}
proc fQsciScintillaBase_connect_SCN_USERLISTSELECTION(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_USERLISTSELECTION".}
proc fcQsciScintillaBase_SCN_USERLISTSELECTION2(self: pointer, selection: cstring, id: cint, ch: cint, methodVal: cint): void {.importc: "QsciScintillaBase_SCN_USERLISTSELECTION2".}
proc fQsciScintillaBase_connect_SCN_USERLISTSELECTION2(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_USERLISTSELECTION2".}
proc fcQsciScintillaBase_SCN_USERLISTSELECTION3(self: pointer, selection: cstring, id: cint): void {.importc: "QsciScintillaBase_SCN_USERLISTSELECTION3".}
proc fQsciScintillaBase_connect_SCN_USERLISTSELECTION3(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_USERLISTSELECTION3".}
proc fcQsciScintillaBase_SCN_ZOOM(self: pointer, ): void {.importc: "QsciScintillaBase_SCN_ZOOM".}
proc fQsciScintillaBase_connect_SCN_ZOOM(self: pointer, slot: int) {.importc: "QsciScintillaBase_connect_SCN_ZOOM".}
proc fcQsciScintillaBase_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciScintillaBase_tr2".}
proc fcQsciScintillaBase_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciScintillaBase_tr3".}
proc fcQsciScintillaBase_SendScintilla22(self: pointer, msg: cuint, wParam: culong): clong {.importc: "QsciScintillaBase_SendScintilla22".}
proc fcQsciScintillaBase_SendScintilla32(self: pointer, msg: cuint, wParam: culong, lParam: clong): clong {.importc: "QsciScintillaBase_SendScintilla32".}
proc fQsciScintillaBase_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciScintillaBase_virtualbase_metaObject".}
proc fcQsciScintillaBase_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_metaObject".}
proc fQsciScintillaBase_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciScintillaBase_virtualbase_metacast".}
proc fcQsciScintillaBase_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_metacast".}
proc fQsciScintillaBase_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciScintillaBase_virtualbase_metacall".}
proc fcQsciScintillaBase_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_metacall".}
proc fQsciScintillaBase_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QsciScintillaBase_virtualbase_canInsertFromMimeData".}
proc fcQsciScintillaBase_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_canInsertFromMimeData".}
proc fQsciScintillaBase_virtualbase_fromMimeData(self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string{.importc: "QsciScintillaBase_virtualbase_fromMimeData".}
proc fcQsciScintillaBase_override_virtual_fromMimeData(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_fromMimeData".}
proc fQsciScintillaBase_virtualbase_toMimeData(self: pointer, text: struct_miqt_string, rectangular: bool): pointer{.importc: "QsciScintillaBase_virtualbase_toMimeData".}
proc fcQsciScintillaBase_override_virtual_toMimeData(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_toMimeData".}
proc fQsciScintillaBase_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_changeEvent".}
proc fcQsciScintillaBase_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_changeEvent".}
proc fQsciScintillaBase_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_contextMenuEvent".}
proc fcQsciScintillaBase_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_contextMenuEvent".}
proc fQsciScintillaBase_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_dragEnterEvent".}
proc fcQsciScintillaBase_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_dragEnterEvent".}
proc fQsciScintillaBase_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_dragLeaveEvent".}
proc fcQsciScintillaBase_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_dragLeaveEvent".}
proc fQsciScintillaBase_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_dragMoveEvent".}
proc fcQsciScintillaBase_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_dragMoveEvent".}
proc fQsciScintillaBase_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_dropEvent".}
proc fcQsciScintillaBase_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_dropEvent".}
proc fQsciScintillaBase_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_focusInEvent".}
proc fcQsciScintillaBase_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_focusInEvent".}
proc fQsciScintillaBase_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_focusOutEvent".}
proc fcQsciScintillaBase_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_focusOutEvent".}
proc fQsciScintillaBase_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QsciScintillaBase_virtualbase_focusNextPrevChild".}
proc fcQsciScintillaBase_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_focusNextPrevChild".}
proc fQsciScintillaBase_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_keyPressEvent".}
proc fcQsciScintillaBase_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_keyPressEvent".}
proc fQsciScintillaBase_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_inputMethodEvent".}
proc fcQsciScintillaBase_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_inputMethodEvent".}
proc fQsciScintillaBase_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QsciScintillaBase_virtualbase_inputMethodQuery".}
proc fcQsciScintillaBase_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_inputMethodQuery".}
proc fQsciScintillaBase_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_mouseDoubleClickEvent".}
proc fcQsciScintillaBase_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_mouseDoubleClickEvent".}
proc fQsciScintillaBase_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_mouseMoveEvent".}
proc fcQsciScintillaBase_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_mouseMoveEvent".}
proc fQsciScintillaBase_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_mousePressEvent".}
proc fcQsciScintillaBase_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_mousePressEvent".}
proc fQsciScintillaBase_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_mouseReleaseEvent".}
proc fcQsciScintillaBase_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_mouseReleaseEvent".}
proc fQsciScintillaBase_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_paintEvent".}
proc fcQsciScintillaBase_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_paintEvent".}
proc fQsciScintillaBase_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QsciScintillaBase_virtualbase_resizeEvent".}
proc fcQsciScintillaBase_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_resizeEvent".}
proc fQsciScintillaBase_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QsciScintillaBase_virtualbase_scrollContentsBy".}
proc fcQsciScintillaBase_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_scrollContentsBy".}
proc fQsciScintillaBase_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QsciScintillaBase_virtualbase_minimumSizeHint".}
proc fcQsciScintillaBase_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_minimumSizeHint".}
proc fQsciScintillaBase_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QsciScintillaBase_virtualbase_sizeHint".}
proc fcQsciScintillaBase_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_sizeHint".}
proc fQsciScintillaBase_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QsciScintillaBase_virtualbase_setupViewport".}
proc fcQsciScintillaBase_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_setupViewport".}
proc fQsciScintillaBase_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QsciScintillaBase_virtualbase_eventFilter".}
proc fcQsciScintillaBase_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_eventFilter".}
proc fQsciScintillaBase_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QsciScintillaBase_virtualbase_event".}
proc fcQsciScintillaBase_override_virtual_event(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_event".}
proc fQsciScintillaBase_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QsciScintillaBase_virtualbase_viewportEvent".}
proc fcQsciScintillaBase_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_viewportEvent".}
proc fQsciScintillaBase_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QsciScintillaBase_virtualbase_wheelEvent".}
proc fcQsciScintillaBase_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_wheelEvent".}
proc fQsciScintillaBase_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QsciScintillaBase_virtualbase_viewportSizeHint".}
proc fcQsciScintillaBase_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_viewportSizeHint".}
proc fQsciScintillaBase_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QsciScintillaBase_virtualbase_initStyleOption".}
proc fcQsciScintillaBase_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_initStyleOption".}
proc fQsciScintillaBase_virtualbase_devType(self: pointer, ): cint{.importc: "QsciScintillaBase_virtualbase_devType".}
proc fcQsciScintillaBase_override_virtual_devType(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_devType".}
proc fQsciScintillaBase_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QsciScintillaBase_virtualbase_setVisible".}
proc fcQsciScintillaBase_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_setVisible".}
proc fQsciScintillaBase_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QsciScintillaBase_virtualbase_heightForWidth".}
proc fcQsciScintillaBase_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_heightForWidth".}
proc fQsciScintillaBase_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QsciScintillaBase_virtualbase_hasHeightForWidth".}
proc fcQsciScintillaBase_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_hasHeightForWidth".}
proc fQsciScintillaBase_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QsciScintillaBase_virtualbase_paintEngine".}
proc fcQsciScintillaBase_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_paintEngine".}
proc fQsciScintillaBase_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_keyReleaseEvent".}
proc fcQsciScintillaBase_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_keyReleaseEvent".}
proc fQsciScintillaBase_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_enterEvent".}
proc fcQsciScintillaBase_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_enterEvent".}
proc fQsciScintillaBase_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_leaveEvent".}
proc fcQsciScintillaBase_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_leaveEvent".}
proc fQsciScintillaBase_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_moveEvent".}
proc fcQsciScintillaBase_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_moveEvent".}
proc fQsciScintillaBase_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_closeEvent".}
proc fcQsciScintillaBase_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_closeEvent".}
proc fQsciScintillaBase_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_tabletEvent".}
proc fcQsciScintillaBase_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_tabletEvent".}
proc fQsciScintillaBase_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_actionEvent".}
proc fcQsciScintillaBase_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_actionEvent".}
proc fQsciScintillaBase_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_showEvent".}
proc fcQsciScintillaBase_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_showEvent".}
proc fQsciScintillaBase_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_hideEvent".}
proc fcQsciScintillaBase_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_hideEvent".}
proc fQsciScintillaBase_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QsciScintillaBase_virtualbase_nativeEvent".}
proc fcQsciScintillaBase_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_nativeEvent".}
proc fQsciScintillaBase_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QsciScintillaBase_virtualbase_metric".}
proc fcQsciScintillaBase_override_virtual_metric(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_metric".}
proc fQsciScintillaBase_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QsciScintillaBase_virtualbase_initPainter".}
proc fcQsciScintillaBase_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_initPainter".}
proc fQsciScintillaBase_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QsciScintillaBase_virtualbase_redirected".}
proc fcQsciScintillaBase_override_virtual_redirected(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_redirected".}
proc fQsciScintillaBase_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QsciScintillaBase_virtualbase_sharedPainter".}
proc fcQsciScintillaBase_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_sharedPainter".}
proc fQsciScintillaBase_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_timerEvent".}
proc fcQsciScintillaBase_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_timerEvent".}
proc fQsciScintillaBase_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_childEvent".}
proc fcQsciScintillaBase_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_childEvent".}
proc fQsciScintillaBase_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciScintillaBase_virtualbase_customEvent".}
proc fcQsciScintillaBase_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_customEvent".}
proc fQsciScintillaBase_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciScintillaBase_virtualbase_connectNotify".}
proc fcQsciScintillaBase_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_connectNotify".}
proc fQsciScintillaBase_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciScintillaBase_virtualbase_disconnectNotify".}
proc fcQsciScintillaBase_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciScintillaBase_override_virtual_disconnectNotify".}
proc fcQsciScintillaBase_staticMetaObject(): pointer {.importc: "QsciScintillaBase_staticMetaObject".}
proc fcQsciScintillaBase_delete(self: pointer) {.importc: "QsciScintillaBase_delete".}


func init*(T: type gen_qsciscintillabase_types.QsciScintillaBase, h: ptr cQsciScintillaBase): gen_qsciscintillabase_types.QsciScintillaBase =
  T(h: h)
proc create*(T: type gen_qsciscintillabase_types.QsciScintillaBase, parent: gen_qwidget.QWidget): gen_qsciscintillabase_types.QsciScintillaBase =

  gen_qsciscintillabase_types.QsciScintillaBase.init(fcQsciScintillaBase_new(parent.h))
proc create*(T: type gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsciscintillabase_types.QsciScintillaBase =

  gen_qsciscintillabase_types.QsciScintillaBase.init(fcQsciScintillaBase_new2())
proc metaObject*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciScintillaBase_metaObject(self.h))

proc metacast*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cstring): pointer =

  fcQsciScintillaBase_metacast(self.h, param1)

proc metacall*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciScintillaBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring): string =

  let v_ms = fcQsciScintillaBase_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pool*(_: type gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsciscintillabase_types.QsciScintillaBase =

  gen_qsciscintillabase_types.QsciScintillaBase(h: fcQsciScintillaBase_pool())

proc replaceHorizontalScrollBar*(self: gen_qsciscintillabase_types.QsciScintillaBase, scrollBar: gen_qscrollbar.QScrollBar): void =

  fcQsciScintillaBase_replaceHorizontalScrollBar(self.h, scrollBar.h)

proc replaceVerticalScrollBar*(self: gen_qsciscintillabase_types.QsciScintillaBase, scrollBar: gen_qscrollbar.QScrollBar): void =

  fcQsciScintillaBase_replaceVerticalScrollBar(self.h, scrollBar.h)

proc SendScintilla*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint): clong =

  fcQsciScintillaBase_SendScintilla(self.h, msg)

proc SendScintilla2*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: pointer): clong =

  fcQsciScintillaBase_SendScintilla2(self.h, msg, wParam, lParam)

proc SendScintilla3*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: miqt_uintptr_t, lParam: cstring): clong =

  fcQsciScintillaBase_SendScintilla3(self.h, msg, wParam, lParam)

proc SendScintilla4*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, lParam: cstring): clong =

  fcQsciScintillaBase_SendScintilla4(self.h, msg, lParam)

proc SendScintilla5*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: cstring, lParam: cstring): clong =

  fcQsciScintillaBase_SendScintilla5(self.h, msg, wParam, lParam)

proc SendScintilla6*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: clong): clong =

  fcQsciScintillaBase_SendScintilla6(self.h, msg, wParam)

proc SendScintilla7*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: cint): clong =

  fcQsciScintillaBase_SendScintilla7(self.h, msg, wParam)

proc SendScintilla8*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, cpMin: clong, cpMax: clong, lpstrText: cstring): clong =

  fcQsciScintillaBase_SendScintilla8(self.h, msg, cpMin, cpMax, lpstrText)

proc SendScintilla9*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, col: gen_qcolor.QColor): clong =

  fcQsciScintillaBase_SendScintilla9(self.h, msg, wParam, col.h)

proc SendScintilla10*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, col: gen_qcolor.QColor): clong =

  fcQsciScintillaBase_SendScintilla10(self.h, msg, col.h)

proc SendScintilla11*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, hdc: gen_qpainter.QPainter, rc: gen_qrect.QRect, cpMin: clong, cpMax: clong): clong =

  fcQsciScintillaBase_SendScintilla11(self.h, msg, wParam, hdc.h, rc.h, cpMin, cpMax)

proc SendScintilla12*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: gen_qpixmap.QPixmap): clong =

  fcQsciScintillaBase_SendScintilla12(self.h, msg, wParam, lParam.h)

proc SendScintilla13*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: gen_qimage.QImage): clong =

  fcQsciScintillaBase_SendScintilla13(self.h, msg, wParam, lParam.h)

proc SendScintillaPtrResult*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint): pointer =

  fcQsciScintillaBase_SendScintillaPtrResult(self.h, msg)

proc commandKey*(_: type gen_qsciscintillabase_types.QsciScintillaBase, qt_key: cint, modifiers: ptr cint): cint =

  fcQsciScintillaBase_commandKey(qt_key, modifiers)

proc QSCN_SELCHANGED*(self: gen_qsciscintillabase_types.QsciScintillaBase, yes: bool): void =

  fcQsciScintillaBase_QSCN_SELCHANGED(self.h, yes)

proc miqt_exec_callback_QsciScintillaBase_QSCN_SELCHANGED(slot: int, yes: bool) {.exportc.} =
  type Cb = proc(yes: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = yes


  nimfunc[](slotval1)

proc onQSCN_SELCHANGED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(yes: bool)) =
  type Cb = proc(yes: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_QSCN_SELCHANGED(self.h, cast[int](addr tmp[]))
proc SCN_AUTOCCANCELLED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_AUTOCCANCELLED(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCANCELLED(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_AUTOCCANCELLED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_AUTOCCANCELLED(self.h, cast[int](addr tmp[]))
proc SCN_AUTOCCHARDELETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_AUTOCCHARDELETED(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCHARDELETED(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_AUTOCCHARDELETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_AUTOCCHARDELETED(self.h, cast[int](addr tmp[]))
proc SCN_AUTOCCOMPLETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, position: cint, ch: cint, methodVal: cint): void =

  fcQsciScintillaBase_SCN_AUTOCCOMPLETED(self.h, selection, position, ch, methodVal)

proc miqt_exec_callback_QsciScintillaBase_SCN_AUTOCCOMPLETED(slot: int, selection: cstring, position: cint, ch: cint, methodVal: cint) {.exportc.} =
  type Cb = proc(selection: cstring, position: cint, ch: cint, methodVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = position

  let slotval3 = ch

  let slotval4 = methodVal


  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc onSCN_AUTOCCOMPLETED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(selection: cstring, position: cint, ch: cint, methodVal: cint)) =
  type Cb = proc(selection: cstring, position: cint, ch: cint, methodVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_AUTOCCOMPLETED(self.h, cast[int](addr tmp[]))
proc SCN_AUTOCSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, position: cint, ch: cint, methodVal: cint): void =

  fcQsciScintillaBase_SCN_AUTOCSELECTION(self.h, selection, position, ch, methodVal)

proc miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTION(slot: int, selection: cstring, position: cint, ch: cint, methodVal: cint) {.exportc.} =
  type Cb = proc(selection: cstring, position: cint, ch: cint, methodVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = position

  let slotval3 = ch

  let slotval4 = methodVal


  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc onSCN_AUTOCSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(selection: cstring, position: cint, ch: cint, methodVal: cint)) =
  type Cb = proc(selection: cstring, position: cint, ch: cint, methodVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_AUTOCSELECTION(self.h, cast[int](addr tmp[]))
proc SCN_AUTOCSELECTION2*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, position: cint): void =

  fcQsciScintillaBase_SCN_AUTOCSELECTION2(self.h, selection, position)

proc miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTION2(slot: int, selection: cstring, position: cint) {.exportc.} =
  type Cb = proc(selection: cstring, position: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = position


  nimfunc[](slotval1, slotval2)

proc onSCN_AUTOCSELECTION2*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(selection: cstring, position: cint)) =
  type Cb = proc(selection: cstring, position: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_AUTOCSELECTION2(self.h, cast[int](addr tmp[]))
proc SCN_AUTOCSELECTIONCHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint, position: cint): void =

  fcQsciScintillaBase_SCN_AUTOCSELECTIONCHANGE(self.h, selection, id, position)

proc miqt_exec_callback_QsciScintillaBase_SCN_AUTOCSELECTIONCHANGE(slot: int, selection: cstring, id: cint, position: cint) {.exportc.} =
  type Cb = proc(selection: cstring, id: cint, position: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id

  let slotval3 = position


  nimfunc[](slotval1, slotval2, slotval3)

proc onSCN_AUTOCSELECTIONCHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(selection: cstring, id: cint, position: cint)) =
  type Cb = proc(selection: cstring, id: cint, position: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_AUTOCSELECTIONCHANGE(self.h, cast[int](addr tmp[]))
proc SCEN_CHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCEN_CHANGE(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCEN_CHANGE(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCEN_CHANGE*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCEN_CHANGE(self.h, cast[int](addr tmp[]))
proc SCN_CALLTIPCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, direction: cint): void =

  fcQsciScintillaBase_SCN_CALLTIPCLICK(self.h, direction)

proc miqt_exec_callback_QsciScintillaBase_SCN_CALLTIPCLICK(slot: int, direction: cint) {.exportc.} =
  type Cb = proc(direction: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = direction


  nimfunc[](slotval1)

proc onSCN_CALLTIPCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(direction: cint)) =
  type Cb = proc(direction: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_CALLTIPCLICK(self.h, cast[int](addr tmp[]))
proc SCN_CHARADDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, charadded: cint): void =

  fcQsciScintillaBase_SCN_CHARADDED(self.h, charadded)

proc miqt_exec_callback_QsciScintillaBase_SCN_CHARADDED(slot: int, charadded: cint) {.exportc.} =
  type Cb = proc(charadded: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = charadded


  nimfunc[](slotval1)

proc onSCN_CHARADDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(charadded: cint)) =
  type Cb = proc(charadded: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_CHARADDED(self.h, cast[int](addr tmp[]))
proc SCN_DOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, line: cint, modifiers: cint): void =

  fcQsciScintillaBase_SCN_DOUBLECLICK(self.h, position, line, modifiers)

proc miqt_exec_callback_QsciScintillaBase_SCN_DOUBLECLICK(slot: int, position: cint, line: cint, modifiers: cint) {.exportc.} =
  type Cb = proc(position: cint, line: cint, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = line

  let slotval3 = modifiers


  nimfunc[](slotval1, slotval2, slotval3)

proc onSCN_DOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, line: cint, modifiers: cint)) =
  type Cb = proc(position: cint, line: cint, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_DOUBLECLICK(self.h, cast[int](addr tmp[]))
proc SCN_DWELLEND*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, x: cint, y: cint): void =

  fcQsciScintillaBase_SCN_DWELLEND(self.h, position, x, y)

proc miqt_exec_callback_QsciScintillaBase_SCN_DWELLEND(slot: int, position: cint, x: cint, y: cint) {.exportc.} =
  type Cb = proc(position: cint, x: cint, y: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = x

  let slotval3 = y


  nimfunc[](slotval1, slotval2, slotval3)

proc onSCN_DWELLEND*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, x: cint, y: cint)) =
  type Cb = proc(position: cint, x: cint, y: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_DWELLEND(self.h, cast[int](addr tmp[]))
proc SCN_DWELLSTART*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, x: cint, y: cint): void =

  fcQsciScintillaBase_SCN_DWELLSTART(self.h, position, x, y)

proc miqt_exec_callback_QsciScintillaBase_SCN_DWELLSTART(slot: int, position: cint, x: cint, y: cint) {.exportc.} =
  type Cb = proc(position: cint, x: cint, y: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = x

  let slotval3 = y


  nimfunc[](slotval1, slotval2, slotval3)

proc onSCN_DWELLSTART*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, x: cint, y: cint)) =
  type Cb = proc(position: cint, x: cint, y: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_DWELLSTART(self.h, cast[int](addr tmp[]))
proc SCN_FOCUSIN*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_FOCUSIN(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_FOCUSIN(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_FOCUSIN*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_FOCUSIN(self.h, cast[int](addr tmp[]))
proc SCN_FOCUSOUT*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_FOCUSOUT(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_FOCUSOUT(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_FOCUSOUT*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_FOCUSOUT(self.h, cast[int](addr tmp[]))
proc SCN_HOTSPOTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =

  fcQsciScintillaBase_SCN_HOTSPOTCLICK(self.h, position, modifiers)

proc miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTCLICK(slot: int, position: cint, modifiers: cint) {.exportc.} =
  type Cb = proc(position: cint, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers


  nimfunc[](slotval1, slotval2)

proc onSCN_HOTSPOTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, modifiers: cint)) =
  type Cb = proc(position: cint, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_HOTSPOTCLICK(self.h, cast[int](addr tmp[]))
proc SCN_HOTSPOTDOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =

  fcQsciScintillaBase_SCN_HOTSPOTDOUBLECLICK(self.h, position, modifiers)

proc miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTDOUBLECLICK(slot: int, position: cint, modifiers: cint) {.exportc.} =
  type Cb = proc(position: cint, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers


  nimfunc[](slotval1, slotval2)

proc onSCN_HOTSPOTDOUBLECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, modifiers: cint)) =
  type Cb = proc(position: cint, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_HOTSPOTDOUBLECLICK(self.h, cast[int](addr tmp[]))
proc SCN_HOTSPOTRELEASECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =

  fcQsciScintillaBase_SCN_HOTSPOTRELEASECLICK(self.h, position, modifiers)

proc miqt_exec_callback_QsciScintillaBase_SCN_HOTSPOTRELEASECLICK(slot: int, position: cint, modifiers: cint) {.exportc.} =
  type Cb = proc(position: cint, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers


  nimfunc[](slotval1, slotval2)

proc onSCN_HOTSPOTRELEASECLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, modifiers: cint)) =
  type Cb = proc(position: cint, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_HOTSPOTRELEASECLICK(self.h, cast[int](addr tmp[]))
proc SCN_INDICATORCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =

  fcQsciScintillaBase_SCN_INDICATORCLICK(self.h, position, modifiers)

proc miqt_exec_callback_QsciScintillaBase_SCN_INDICATORCLICK(slot: int, position: cint, modifiers: cint) {.exportc.} =
  type Cb = proc(position: cint, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers


  nimfunc[](slotval1, slotval2)

proc onSCN_INDICATORCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, modifiers: cint)) =
  type Cb = proc(position: cint, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_INDICATORCLICK(self.h, cast[int](addr tmp[]))
proc SCN_INDICATORRELEASE*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint): void =

  fcQsciScintillaBase_SCN_INDICATORRELEASE(self.h, position, modifiers)

proc miqt_exec_callback_QsciScintillaBase_SCN_INDICATORRELEASE(slot: int, position: cint, modifiers: cint) {.exportc.} =
  type Cb = proc(position: cint, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers


  nimfunc[](slotval1, slotval2)

proc onSCN_INDICATORRELEASE*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, modifiers: cint)) =
  type Cb = proc(position: cint, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_INDICATORRELEASE(self.h, cast[int](addr tmp[]))
proc SCN_MACRORECORD*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cuint, param2: culong, param3: pointer): void =

  fcQsciScintillaBase_SCN_MACRORECORD(self.h, param1, param2, param3)

proc miqt_exec_callback_QsciScintillaBase_SCN_MACRORECORD(slot: int, param1: cuint, param2: culong, param3: pointer) {.exportc.} =
  type Cb = proc(param1: cuint, param2: culong, param3: pointer)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2

  let slotval3 = param3


  nimfunc[](slotval1, slotval2, slotval3)

proc onSCN_MACRORECORD*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(param1: cuint, param2: culong, param3: pointer)) =
  type Cb = proc(param1: cuint, param2: culong, param3: pointer)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_MACRORECORD(self.h, cast[int](addr tmp[]))
proc SCN_MARGINCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint, margin: cint): void =

  fcQsciScintillaBase_SCN_MARGINCLICK(self.h, position, modifiers, margin)

proc miqt_exec_callback_QsciScintillaBase_SCN_MARGINCLICK(slot: int, position: cint, modifiers: cint, margin: cint) {.exportc.} =
  type Cb = proc(position: cint, modifiers: cint, margin: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  let slotval3 = margin


  nimfunc[](slotval1, slotval2, slotval3)

proc onSCN_MARGINCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, modifiers: cint, margin: cint)) =
  type Cb = proc(position: cint, modifiers: cint, margin: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_MARGINCLICK(self.h, cast[int](addr tmp[]))
proc SCN_MARGINRIGHTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint, modifiers: cint, margin: cint): void =

  fcQsciScintillaBase_SCN_MARGINRIGHTCLICK(self.h, position, modifiers, margin)

proc miqt_exec_callback_QsciScintillaBase_SCN_MARGINRIGHTCLICK(slot: int, position: cint, modifiers: cint, margin: cint) {.exportc.} =
  type Cb = proc(position: cint, modifiers: cint, margin: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modifiers

  let slotval3 = margin


  nimfunc[](slotval1, slotval2, slotval3)

proc onSCN_MARGINRIGHTCLICK*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint, modifiers: cint, margin: cint)) =
  type Cb = proc(position: cint, modifiers: cint, margin: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_MARGINRIGHTCLICK(self.h, cast[int](addr tmp[]))
proc SCN_MODIFIED*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint): void =

  fcQsciScintillaBase_SCN_MODIFIED(self.h, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10)

proc miqt_exec_callback_QsciScintillaBase_SCN_MODIFIED(slot: int, param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint) {.exportc.} =
  type Cb = proc(param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
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

proc onSCN_MODIFIED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint)) =
  type Cb = proc(param1: cint, param2: cint, param3: cstring, param4: cint, param5: cint, param6: cint, param7: cint, param8: cint, param9: cint, param10: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_MODIFIED(self.h, cast[int](addr tmp[]))
proc SCN_MODIFYATTEMPTRO*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_MODIFYATTEMPTRO(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_MODIFYATTEMPTRO(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_MODIFYATTEMPTRO*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_MODIFYATTEMPTRO(self.h, cast[int](addr tmp[]))
proc SCN_NEEDSHOWN*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint): void =

  fcQsciScintillaBase_SCN_NEEDSHOWN(self.h, param1, param2)

proc miqt_exec_callback_QsciScintillaBase_SCN_NEEDSHOWN(slot: int, param1: cint, param2: cint) {.exportc.} =
  type Cb = proc(param1: cint, param2: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](slotval1, slotval2)

proc onSCN_NEEDSHOWN*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(param1: cint, param2: cint)) =
  type Cb = proc(param1: cint, param2: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_NEEDSHOWN(self.h, cast[int](addr tmp[]))
proc SCN_PAINTED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_PAINTED(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_PAINTED(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_PAINTED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_PAINTED(self.h, cast[int](addr tmp[]))
proc SCN_SAVEPOINTLEFT*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_SAVEPOINTLEFT(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_SAVEPOINTLEFT(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_SAVEPOINTLEFT*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_SAVEPOINTLEFT(self.h, cast[int](addr tmp[]))
proc SCN_SAVEPOINTREACHED*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_SAVEPOINTREACHED(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_SAVEPOINTREACHED(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_SAVEPOINTREACHED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_SAVEPOINTREACHED(self.h, cast[int](addr tmp[]))
proc SCN_STYLENEEDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, position: cint): void =

  fcQsciScintillaBase_SCN_STYLENEEDED(self.h, position)

proc miqt_exec_callback_QsciScintillaBase_SCN_STYLENEEDED(slot: int, position: cint) {.exportc.} =
  type Cb = proc(position: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onSCN_STYLENEEDED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(position: cint)) =
  type Cb = proc(position: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_STYLENEEDED(self.h, cast[int](addr tmp[]))
proc SCN_URIDROPPED*(self: gen_qsciscintillabase_types.QsciScintillaBase, url: gen_qurl.QUrl): void =

  fcQsciScintillaBase_SCN_URIDROPPED(self.h, url.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_URIDROPPED(slot: int, url: pointer) {.exportc.} =
  type Cb = proc(url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1)

proc onSCN_URIDROPPED*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(url: gen_qurl.QUrl)) =
  type Cb = proc(url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_URIDROPPED(self.h, cast[int](addr tmp[]))
proc SCN_UPDATEUI*(self: gen_qsciscintillabase_types.QsciScintillaBase, updated: cint): void =

  fcQsciScintillaBase_SCN_UPDATEUI(self.h, updated)

proc miqt_exec_callback_QsciScintillaBase_SCN_UPDATEUI(slot: int, updated: cint) {.exportc.} =
  type Cb = proc(updated: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = updated


  nimfunc[](slotval1)

proc onSCN_UPDATEUI*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(updated: cint)) =
  type Cb = proc(updated: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_UPDATEUI(self.h, cast[int](addr tmp[]))
proc SCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint): void =

  fcQsciScintillaBase_SCN_USERLISTSELECTION(self.h, selection, id, ch, methodVal, position)

proc miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION(slot: int, selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint) {.exportc.} =
  type Cb = proc(selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id

  let slotval3 = ch

  let slotval4 = methodVal

  let slotval5 = position


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5)

proc onSCN_USERLISTSELECTION*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint)) =
  type Cb = proc(selection: cstring, id: cint, ch: cint, methodVal: cint, position: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_USERLISTSELECTION(self.h, cast[int](addr tmp[]))
proc SCN_USERLISTSELECTION2*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint, ch: cint, methodVal: cint): void =

  fcQsciScintillaBase_SCN_USERLISTSELECTION2(self.h, selection, id, ch, methodVal)

proc miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION2(slot: int, selection: cstring, id: cint, ch: cint, methodVal: cint) {.exportc.} =
  type Cb = proc(selection: cstring, id: cint, ch: cint, methodVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id

  let slotval3 = ch

  let slotval4 = methodVal


  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc onSCN_USERLISTSELECTION2*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(selection: cstring, id: cint, ch: cint, methodVal: cint)) =
  type Cb = proc(selection: cstring, id: cint, ch: cint, methodVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_USERLISTSELECTION2(self.h, cast[int](addr tmp[]))
proc SCN_USERLISTSELECTION3*(self: gen_qsciscintillabase_types.QsciScintillaBase, selection: cstring, id: cint): void =

  fcQsciScintillaBase_SCN_USERLISTSELECTION3(self.h, selection, id)

proc miqt_exec_callback_QsciScintillaBase_SCN_USERLISTSELECTION3(slot: int, selection: cstring, id: cint) {.exportc.} =
  type Cb = proc(selection: cstring, id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (selection)

  let slotval2 = id


  nimfunc[](slotval1, slotval2)

proc onSCN_USERLISTSELECTION3*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc(selection: cstring, id: cint)) =
  type Cb = proc(selection: cstring, id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_USERLISTSELECTION3(self.h, cast[int](addr tmp[]))
proc SCN_ZOOM*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): void =

  fcQsciScintillaBase_SCN_ZOOM(self.h)

proc miqt_exec_callback_QsciScintillaBase_SCN_ZOOM(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onSCN_ZOOM*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintillaBase_connect_SCN_ZOOM(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring, c: cstring): string =

  let v_ms = fcQsciScintillaBase_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qsciscintillabase_types.QsciScintillaBase, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciScintillaBase_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc SendScintilla22*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong): clong =

  fcQsciScintillaBase_SendScintilla22(self.h, msg, wParam)

proc SendScintilla32*(self: gen_qsciscintillabase_types.QsciScintillaBase, msg: cuint, wParam: culong, lParam: clong): clong =

  fcQsciScintillaBase_SendScintilla32(self.h, msg, wParam, lParam)

proc QsciScintillaBasemetaObject*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciScintillaBase_virtualbase_metaObject(self.h))

type QsciScintillaBasemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_metaObject(self: ptr cQsciScintillaBase, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_metaObject ".} =
  var nimfunc = cast[ptr QsciScintillaBasemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillaBasemetacast*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cstring): pointer =

  fQsciScintillaBase_virtualbase_metacast(self.h, param1)

type QsciScintillaBasemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemetacastProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_metacast(self: ptr cQsciScintillaBase, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_metacast ".} =
  var nimfunc = cast[ptr QsciScintillaBasemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaBasemetacall*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint, param2: cint, param3: pointer): cint =

  fQsciScintillaBase_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciScintillaBasemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemetacallProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_metacall(self: ptr cQsciScintillaBase, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciScintillaBase_metacall ".} =
  var nimfunc = cast[ptr QsciScintillaBasemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciScintillaBasecanInsertFromMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, source: gen_qmimedata.QMimeData): bool =

  fQsciScintillaBase_virtualbase_canInsertFromMimeData(self.h, source.h)

type QsciScintillaBasecanInsertFromMimeDataProc* = proc(source: gen_qmimedata.QMimeData): bool
proc oncanInsertFromMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasecanInsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasecanInsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_canInsertFromMimeData(self: ptr cQsciScintillaBase, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QsciScintillaBase_canInsertFromMimeData ".} =
  var nimfunc = cast[ptr QsciScintillaBasecanInsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaBasefromMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte] =

  var v_bytearray = fQsciScintillaBase_virtualbase_fromMimeData(self.h, source.h, rectangular)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

type QsciScintillaBasefromMimeDataProc* = proc(source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte]
proc onfromMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasefromMimeDataProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasefromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_fromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_fromMimeData(self: ptr cQsciScintillaBase, slot: int, source: pointer, rectangular: ptr bool): struct_miqt_string {.exportc: "miqt_exec_callback_QsciScintillaBase_fromMimeData ".} =
  var nimfunc = cast[ptr QsciScintillaBasefromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata.QMimeData(h: source)

  let slotval2 = rectangular


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  struct_miqt_string(data: cast[cstring](if len(virtualReturn) == 0: nil else: unsafeAddr virtualReturn[0]), len: csize_t(len(virtualReturn)))
proc QsciScintillaBasetoMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData =

  gen_qmimedata.QMimeData(h: fQsciScintillaBase_virtualbase_toMimeData(self.h, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), rectangular))

type QsciScintillaBasetoMimeDataProc* = proc(text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData
proc ontoMimeData*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasetoMimeDataProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasetoMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_toMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_toMimeData(self: ptr cQsciScintillaBase, slot: int, text: struct_miqt_string, rectangular: bool): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_toMimeData ".} =
  var nimfunc = cast[ptr QsciScintillaBasetoMimeDataProc](cast[pointer](slot))
  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval1 = vtextx_ret

  let slotval2 = rectangular


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QsciScintillaBasechangeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qcoreevent.QEvent): void =

  fQsciScintillaBase_virtualbase_changeEvent(self.h, e.h)

type QsciScintillaBasechangeEventProc* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasechangeEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasechangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_changeEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_changeEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasechangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasecontextMenuEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QContextMenuEvent): void =

  fQsciScintillaBase_virtualbase_contextMenuEvent(self.h, e.h)

type QsciScintillaBasecontextMenuEventProc* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_contextMenuEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_contextMenuEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasedragEnterEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QDragEnterEvent): void =

  fQsciScintillaBase_virtualbase_dragEnterEvent(self.h, e.h)

type QsciScintillaBasedragEnterEventProc* = proc(e: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasedragEnterEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasedragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_dragEnterEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_dragEnterEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasedragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragEnterEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasedragLeaveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QDragLeaveEvent): void =

  fQsciScintillaBase_virtualbase_dragLeaveEvent(self.h, e.h)

type QsciScintillaBasedragLeaveEventProc* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasedragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasedragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_dragLeaveEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasedragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasedragMoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QDragMoveEvent): void =

  fQsciScintillaBase_virtualbase_dragMoveEvent(self.h, e.h)

type QsciScintillaBasedragMoveEventProc* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasedragMoveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasedragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_dragMoveEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_dragMoveEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasedragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasedropEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QDropEvent): void =

  fQsciScintillaBase_virtualbase_dropEvent(self.h, e.h)

type QsciScintillaBasedropEventProc* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasedropEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasedropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_dropEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_dropEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasedropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasefocusInEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QFocusEvent): void =

  fQsciScintillaBase_virtualbase_focusInEvent(self.h, e.h)

type QsciScintillaBasefocusInEventProc* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasefocusInEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_focusInEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_focusInEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasefocusOutEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QFocusEvent): void =

  fQsciScintillaBase_virtualbase_focusOutEvent(self.h, e.h)

type QsciScintillaBasefocusOutEventProc* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasefocusOutEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_focusOutEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_focusOutEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasefocusNextPrevChild*(self: gen_qsciscintillabase_types.QsciScintillaBase, next: bool): bool =

  fQsciScintillaBase_virtualbase_focusNextPrevChild(self.h, next)

type QsciScintillaBasefocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasefocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasefocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_focusNextPrevChild(self: ptr cQsciScintillaBase, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QsciScintillaBase_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QsciScintillaBasefocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaBasekeyPressEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QKeyEvent): void =

  fQsciScintillaBase_virtualbase_keyPressEvent(self.h, e.h)

type QsciScintillaBasekeyPressEventProc* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasekeyPressEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_keyPressEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_keyPressEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBaseinputMethodEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QInputMethodEvent): void =

  fQsciScintillaBase_virtualbase_inputMethodEvent(self.h, event.h)

type QsciScintillaBaseinputMethodEventProc* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_inputMethodEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_inputMethodEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBaseinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBaseinputMethodQuery*(self: gen_qsciscintillabase_types.QsciScintillaBase, query: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fQsciScintillaBase_virtualbase_inputMethodQuery(self.h, cint(query)))

type QsciScintillaBaseinputMethodQueryProc* = proc(query: cint): gen_qvariant.QVariant
proc oninputMethodQuery*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_inputMethodQuery(self: ptr cQsciScintillaBase, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_inputMethodQuery ".} =
  var nimfunc = cast[ptr QsciScintillaBaseinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciScintillaBasemouseDoubleClickEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QMouseEvent): void =

  fQsciScintillaBase_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QsciScintillaBasemouseDoubleClickEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_mouseDoubleClickEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasemouseMoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QMouseEvent): void =

  fQsciScintillaBase_virtualbase_mouseMoveEvent(self.h, e.h)

type QsciScintillaBasemouseMoveEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_mouseMoveEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasemousePressEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QMouseEvent): void =

  fQsciScintillaBase_virtualbase_mousePressEvent(self.h, e.h)

type QsciScintillaBasemousePressEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemousePressEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_mousePressEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_mousePressEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasemouseReleaseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QMouseEvent): void =

  fQsciScintillaBase_virtualbase_mouseReleaseEvent(self.h, e.h)

type QsciScintillaBasemouseReleaseEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_mouseReleaseEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasepaintEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QPaintEvent): void =

  fQsciScintillaBase_virtualbase_paintEvent(self.h, e.h)

type QsciScintillaBasepaintEventProc* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasepaintEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasepaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_paintEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_paintEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasepaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBaseresizeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, e: gen_qevent.QResizeEvent): void =

  fQsciScintillaBase_virtualbase_resizeEvent(self.h, e.h)

type QsciScintillaBaseresizeEventProc* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseresizeEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_resizeEvent(self: ptr cQsciScintillaBase, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_resizeEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBaseresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaBasescrollContentsBy*(self: gen_qsciscintillabase_types.QsciScintillaBase, dx: cint, dy: cint): void =

  fQsciScintillaBase_virtualbase_scrollContentsBy(self.h, dx, dy)

type QsciScintillaBasescrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasescrollContentsByProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasescrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_scrollContentsBy(self: ptr cQsciScintillaBase, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QsciScintillaBase_scrollContentsBy ".} =
  var nimfunc = cast[ptr QsciScintillaBasescrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QsciScintillaBaseminimumSizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fQsciScintillaBase_virtualbase_minimumSizeHint(self.h))

type QsciScintillaBaseminimumSizeHintProc* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_minimumSizeHint(self: ptr cQsciScintillaBase, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_minimumSizeHint ".} =
  var nimfunc = cast[ptr QsciScintillaBaseminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillaBasesizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fQsciScintillaBase_virtualbase_sizeHint(self.h))

type QsciScintillaBasesizeHintProc* = proc(): gen_qsize.QSize
proc onsizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasesizeHintProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_sizeHint(self: ptr cQsciScintillaBase, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_sizeHint ".} =
  var nimfunc = cast[ptr QsciScintillaBasesizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillaBasesetupViewport*(self: gen_qsciscintillabase_types.QsciScintillaBase, viewport: gen_qwidget.QWidget): void =

  fQsciScintillaBase_virtualbase_setupViewport(self.h, viewport.h)

type QsciScintillaBasesetupViewportProc* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasesetupViewportProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasesetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_setupViewport(self: ptr cQsciScintillaBase, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_setupViewport ".} =
  var nimfunc = cast[ptr QsciScintillaBasesetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QsciScintillaBaseeventFilter*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =

  fQsciScintillaBase_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QsciScintillaBaseeventFilterProc* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_eventFilter(self: ptr cQsciScintillaBase, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QsciScintillaBase_eventFilter ".} =
  var nimfunc = cast[ptr QsciScintillaBaseeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciScintillaBaseevent*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qcoreevent.QEvent): bool =

  fQsciScintillaBase_virtualbase_event(self.h, param1.h)

type QsciScintillaBaseeventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseeventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_event(self: ptr cQsciScintillaBase, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QsciScintillaBase_event ".} =
  var nimfunc = cast[ptr QsciScintillaBaseeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaBaseviewportEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qcoreevent.QEvent): bool =

  fQsciScintillaBase_virtualbase_viewportEvent(self.h, param1.h)

type QsciScintillaBaseviewportEventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseviewportEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_viewportEvent(self: ptr cQsciScintillaBase, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QsciScintillaBase_viewportEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBaseviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaBasewheelEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: gen_qevent.QWheelEvent): void =

  fQsciScintillaBase_virtualbase_wheelEvent(self.h, param1.h)

type QsciScintillaBasewheelEventProc* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasewheelEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_wheelEvent(self: ptr cQsciScintillaBase, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_wheelEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QsciScintillaBaseviewportSizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fQsciScintillaBase_virtualbase_viewportSizeHint(self.h))

type QsciScintillaBaseviewportSizeHintProc* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_viewportSizeHint(self: ptr cQsciScintillaBase, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_viewportSizeHint ".} =
  var nimfunc = cast[ptr QsciScintillaBaseviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillaBaseinitStyleOption*(self: gen_qsciscintillabase_types.QsciScintillaBase, option: gen_qstyleoption.QStyleOptionFrame): void =

  fQsciScintillaBase_virtualbase_initStyleOption(self.h, option.h)

type QsciScintillaBaseinitStyleOptionProc* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_initStyleOption(self: ptr cQsciScintillaBase, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_initStyleOption ".} =
  var nimfunc = cast[ptr QsciScintillaBaseinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QsciScintillaBasedevType*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): cint =

  fQsciScintillaBase_virtualbase_devType(self.h)

type QsciScintillaBasedevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasedevTypeProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasedevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_devType(self: ptr cQsciScintillaBase, slot: int): cint {.exportc: "miqt_exec_callback_QsciScintillaBase_devType ".} =
  var nimfunc = cast[ptr QsciScintillaBasedevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciScintillaBasesetVisible*(self: gen_qsciscintillabase_types.QsciScintillaBase, visible: bool): void =

  fQsciScintillaBase_virtualbase_setVisible(self.h, visible)

type QsciScintillaBasesetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasesetVisibleProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasesetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_setVisible(self: ptr cQsciScintillaBase, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QsciScintillaBase_setVisible ".} =
  var nimfunc = cast[ptr QsciScintillaBasesetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QsciScintillaBaseheightForWidth*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint): cint =

  fQsciScintillaBase_virtualbase_heightForWidth(self.h, param1)

type QsciScintillaBaseheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseheightForWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_heightForWidth(self: ptr cQsciScintillaBase, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciScintillaBase_heightForWidth ".} =
  var nimfunc = cast[ptr QsciScintillaBaseheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaBasehasHeightForWidth*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): bool =

  fQsciScintillaBase_virtualbase_hasHeightForWidth(self.h)

type QsciScintillaBasehasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasehasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasehasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_hasHeightForWidth(self: ptr cQsciScintillaBase, slot: int): bool {.exportc: "miqt_exec_callback_QsciScintillaBase_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QsciScintillaBasehasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciScintillaBasepaintEngine*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fQsciScintillaBase_virtualbase_paintEngine(self.h))

type QsciScintillaBasepaintEngineProc* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasepaintEngineProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_paintEngine(self: ptr cQsciScintillaBase, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_paintEngine ".} =
  var nimfunc = cast[ptr QsciScintillaBasepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillaBasekeyReleaseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QKeyEvent): void =

  fQsciScintillaBase_virtualbase_keyReleaseEvent(self.h, event.h)

type QsciScintillaBasekeyReleaseEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_keyReleaseEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBaseenterEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QEnterEvent): void =

  fQsciScintillaBase_virtualbase_enterEvent(self.h, event.h)

type QsciScintillaBaseenterEventProc* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseenterEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_enterEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_enterEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBaseenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBaseleaveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent.QEvent): void =

  fQsciScintillaBase_virtualbase_leaveEvent(self.h, event.h)

type QsciScintillaBaseleaveEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseleaveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_leaveEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_leaveEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBaseleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBasemoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QMoveEvent): void =

  fQsciScintillaBase_virtualbase_moveEvent(self.h, event.h)

type QsciScintillaBasemoveEventProc* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemoveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_moveEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_moveEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasemoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBasecloseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QCloseEvent): void =

  fQsciScintillaBase_virtualbase_closeEvent(self.h, event.h)

type QsciScintillaBasecloseEventProc* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasecloseEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasecloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_closeEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_closeEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasecloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBasetabletEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QTabletEvent): void =

  fQsciScintillaBase_virtualbase_tabletEvent(self.h, event.h)

type QsciScintillaBasetabletEventProc* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasetabletEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasetabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_tabletEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_tabletEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasetabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBaseactionEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QActionEvent): void =

  fQsciScintillaBase_virtualbase_actionEvent(self.h, event.h)

type QsciScintillaBaseactionEventProc* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseactionEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_actionEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_actionEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBaseactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBaseshowEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QShowEvent): void =

  fQsciScintillaBase_virtualbase_showEvent(self.h, event.h)

type QsciScintillaBaseshowEventProc* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseshowEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_showEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_showEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBaseshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBasehideEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qevent.QHideEvent): void =

  fQsciScintillaBase_virtualbase_hideEvent(self.h, event.h)

type QsciScintillaBasehideEventProc* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasehideEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasehideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_hideEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_hideEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasehideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBasenativeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =

  fQsciScintillaBase_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QsciScintillaBasenativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasenativeEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasenativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_nativeEvent(self: ptr cQsciScintillaBase, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QsciScintillaBase_nativeEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasenativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciScintillaBasemetric*(self: gen_qsciscintillabase_types.QsciScintillaBase, param1: cint): cint =

  fQsciScintillaBase_virtualbase_metric(self.h, cint(param1))

type QsciScintillaBasemetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasemetricProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_metric(self: ptr cQsciScintillaBase, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciScintillaBase_metric ".} =
  var nimfunc = cast[ptr QsciScintillaBasemetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaBaseinitPainter*(self: gen_qsciscintillabase_types.QsciScintillaBase, painter: gen_qpainter.QPainter): void =

  fQsciScintillaBase_virtualbase_initPainter(self.h, painter.h)

type QsciScintillaBaseinitPainterProc* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseinitPainterProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_initPainter(self: ptr cQsciScintillaBase, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_initPainter ".} =
  var nimfunc = cast[ptr QsciScintillaBaseinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc QsciScintillaBaseredirected*(self: gen_qsciscintillabase_types.QsciScintillaBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fQsciScintillaBase_virtualbase_redirected(self.h, offset.h))

type QsciScintillaBaseredirectedProc* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseredirectedProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_redirected(self: ptr cQsciScintillaBase, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_redirected ".} =
  var nimfunc = cast[ptr QsciScintillaBaseredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciScintillaBasesharedPainter*(self: gen_qsciscintillabase_types.QsciScintillaBase, ): gen_qpainter.QPainter =

  gen_qpainter.QPainter(h: fQsciScintillaBase_virtualbase_sharedPainter(self.h))

type QsciScintillaBasesharedPainterProc* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasesharedPainterProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_sharedPainter(self: ptr cQsciScintillaBase, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintillaBase_sharedPainter ".} =
  var nimfunc = cast[ptr QsciScintillaBasesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillaBasetimerEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent.QTimerEvent): void =

  fQsciScintillaBase_virtualbase_timerEvent(self.h, event.h)

type QsciScintillaBasetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasetimerEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_timerEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_timerEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBasechildEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent.QChildEvent): void =

  fQsciScintillaBase_virtualbase_childEvent(self.h, event.h)

type QsciScintillaBasechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasechildEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_childEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_childEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBasecustomEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, event: gen_qcoreevent.QEvent): void =

  fQsciScintillaBase_virtualbase_customEvent(self.h, event.h)

type QsciScintillaBasecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasecustomEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_customEvent(self: ptr cQsciScintillaBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_customEvent ".} =
  var nimfunc = cast[ptr QsciScintillaBasecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaBaseconnectNotify*(self: gen_qsciscintillabase_types.QsciScintillaBase, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciScintillaBase_virtualbase_connectNotify(self.h, signal.h)

type QsciScintillaBaseconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBaseconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBaseconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_connectNotify(self: ptr cQsciScintillaBase, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_connectNotify ".} =
  var nimfunc = cast[ptr QsciScintillaBaseconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciScintillaBasedisconnectNotify*(self: gen_qsciscintillabase_types.QsciScintillaBase, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciScintillaBase_virtualbase_disconnectNotify(self.h, signal.h)

type QsciScintillaBasedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsciscintillabase_types.QsciScintillaBase, slot: QsciScintillaBasedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciScintillaBasedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintillaBase_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintillaBase_disconnectNotify(self: ptr cQsciScintillaBase, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciScintillaBase_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciScintillaBasedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsciscintillabase_types.QsciScintillaBase): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciScintillaBase_staticMetaObject())
proc delete*(self: gen_qsciscintillabase_types.QsciScintillaBase) =
  fcQsciScintillaBase_delete(self.h)
