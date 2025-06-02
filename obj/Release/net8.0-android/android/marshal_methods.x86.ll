; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [172 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [344 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 128
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 127
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 65
	i32 39485524, ; 3: System.Net.WebSockets.dll => 0x25a8054 => 137
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 159
	i32 66541672, ; 5: System.Diagnostics.StackTrace => 0x3f75868 => 114
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 7: Microsoft.Maui.Graphics.dll => 0x44bb714 => 63
	i32 95598293, ; 8: Supabase.dll => 0x5b2b6d5 => 69
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 146
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 158
	i32 142721839, ; 11: System.Net.WebHeaderCollection => 0x881c32f => 135
	i32 162612358, ; 12: MimeMapping => 0x9b14486 => 64
	i32 165246403, ; 13: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 78
	i32 182336117, ; 14: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 96
	i32 195452805, ; 15: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 16: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 17: System.ComponentModel => 0xc38ff48 => 110
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 103
	i32 246610117, ; 19: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 144
	i32 254259026, ; 20: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 37
	i32 280992041, ; 21: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 298918909, ; 22: System.Net.Ping.dll => 0x11d123fd => 129
	i32 317674968, ; 23: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 24: Xamarin.AndroidX.Activity.dll => 0x13031348 => 74
	i32 336156722, ; 25: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 26: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 85
	i32 356389973, ; 27: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 375677976, ; 28: System.Net.ServicePoint.dll => 0x16646418 => 133
	i32 379916513, ; 29: System.Threading.Thread.dll => 0x16a510e1 => 159
	i32 385762202, ; 30: System.Memory.dll => 0x16fe439a => 125
	i32 392610295, ; 31: System.Threading.ThreadPool.dll => 0x1766c1f7 => 160
	i32 395744057, ; 32: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 33: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 34: System.Collections => 0x1a61054f => 107
	i32 450948140, ; 35: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 84
	i32 456227837, ; 36: System.Web.HttpUtility.dll => 0x1b317bfd => 162
	i32 459347974, ; 37: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 150
	i32 469710990, ; 38: System.dll => 0x1bff388e => 166
	i32 485463106, ; 39: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 54
	i32 498788369, ; 40: System.ObjectModel => 0x1dbae811 => 139
	i32 500358224, ; 41: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 42: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 43: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 53
	i32 530272170, ; 44: System.Linq.Queryable => 0x1f9b4faa => 123
	i32 539058512, ; 45: Microsoft.Extensions.Logging => 0x20216150 => 50
	i32 571435654, ; 46: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 47
	i32 592146354, ; 47: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 610194910, ; 48: System.Reactive.dll => 0x245ed5de => 72
	i32 627609679, ; 49: Xamarin.AndroidX.CustomView => 0x2568904f => 82
	i32 627931235, ; 50: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 51: System.Text.Encodings.Web.dll => 0x27787397 => 155
	i32 672442732, ; 52: System.Collections.Concurrent => 0x2814a96c => 104
	i32 683518922, ; 53: System.Net.Security => 0x28bdabca => 132
	i32 688181140, ; 54: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 55: System.Xml.Linq.dll => 0x29293ff5 => 163
	i32 706645707, ; 56: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 57: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 58: System.Runtime.Loader.dll => 0x2b15ed29 => 147
	i32 759454413, ; 59: System.Net.Requests => 0x2d445acd => 131
	i32 763346851, ; 60: Websocket.Client => 0x2d7fbfa3 => 73
	i32 772621961, ; 61: Supabase.Core.dll => 0x2e0d4689 => 68
	i32 775507847, ; 62: System.IO.Compression => 0x2e394f87 => 120
	i32 777317022, ; 63: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 64: Microsoft.Extensions.Options => 0x2f0980eb => 52
	i32 804008546, ; 65: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 40
	i32 804715423, ; 66: System.Data.Common => 0x2ff6fb9f => 112
	i32 823281589, ; 67: System.Private.Uri.dll => 0x311247b5 => 140
	i32 830298997, ; 68: System.IO.Compression.Brotli => 0x317d5b75 => 119
	i32 904024072, ; 69: System.ComponentModel.Primitives.dll => 0x35e25008 => 108
	i32 920281169, ; 70: Supabase.Functions => 0x36da6051 => 35
	i32 926902833, ; 71: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 72: Newtonsoft.Json => 0x38f24a24 => 65
	i32 967690846, ; 73: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 85
	i32 975874589, ; 74: System.Xml.XDocument => 0x3a2aaa1d => 165
	i32 992768348, ; 75: System.Collections.dll => 0x3b2c715c => 107
	i32 999186168, ; 76: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 49
	i32 1012816738, ; 77: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 95
	i32 1019214401, ; 78: System.Drawing => 0x3cbffa41 => 117
	i32 1028951442, ; 79: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 44
	i32 1029334545, ; 80: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 81: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 75
	i32 1036536393, ; 82: System.Drawing.Primitives.dll => 0x3dc84a49 => 116
	i32 1044663988, ; 83: System.Linq.Expressions.dll => 0x3e444eb4 => 122
	i32 1052210849, ; 84: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 87
	i32 1082857460, ; 85: System.ComponentModel.TypeConverter => 0x408b17f4 => 109
	i32 1084122840, ; 86: Xamarin.Kotlin.StdLib => 0x409e66d8 => 100
	i32 1089187994, ; 87: Websocket.Client.dll => 0x40ebb09a => 73
	i32 1098259244, ; 88: System => 0x41761b2c => 166
	i32 1118262833, ; 89: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 90: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 91: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 45
	i32 1178241025, ; 92: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 92
	i32 1203215381, ; 93: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1216849306, ; 94: Supabase.Realtime.dll => 0x4887a59a => 67
	i32 1219540809, ; 95: Supabase.Functions.dll => 0x48b0b749 => 35
	i32 1234928153, ; 96: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 97: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 98: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 83
	i32 1298598085, ; 99: CarspotLourd => 0x4d6708c5 => 102
	i32 1324164729, ; 100: System.Linq => 0x4eed2679 => 124
	i32 1336984896, ; 101: Supabase.Core => 0x4fb0c540 => 68
	i32 1373134921, ; 102: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 103: Xamarin.AndroidX.SavedState => 0x52114ed3 => 95
	i32 1406073936, ; 104: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 79
	i32 1408764838, ; 105: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 149
	i32 1430672901, ; 106: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 107: System.Formats.Asn1.dll => 0x568cd628 => 118
	i32 1454105418, ; 108: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 46
	i32 1458022317, ; 109: System.Net.Security.dll => 0x56e7a7ad => 132
	i32 1460893475, ; 110: System.IdentityModel.Tokens.Jwt => 0x57137723 => 71
	i32 1461004990, ; 111: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 112: System.IO.Compression.dll => 0x57261233 => 120
	i32 1469204771, ; 113: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 76
	i32 1470490898, ; 114: Microsoft.Extensions.Primitives => 0x57a5e912 => 53
	i32 1480492111, ; 115: System.IO.Compression.Brotli.dll => 0x583e844f => 119
	i32 1493001747, ; 116: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1498168481, ; 117: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 55
	i32 1514721132, ; 118: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1516168485, ; 119: Supabase.Gotrue => 0x5a5ee525 => 36
	i32 1521091094, ; 120: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 49
	i32 1524825017, ; 121: CarspotLourd.dll => 0x5ae2fbb9 => 102
	i32 1543031311, ; 122: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 157
	i32 1546581739, ; 123: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 40
	i32 1551623176, ; 124: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1618516317, ; 125: System.Net.WebSockets.Client.dll => 0x6078995d => 136
	i32 1622152042, ; 126: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 89
	i32 1624863272, ; 127: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 98
	i32 1636350590, ; 128: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 81
	i32 1639515021, ; 129: System.Net.Http.dll => 0x61b9038d => 126
	i32 1639986890, ; 130: System.Text.RegularExpressions => 0x61c036ca => 157
	i32 1654881142, ; 131: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 39
	i32 1657153582, ; 132: System.Runtime => 0x62c6282e => 151
	i32 1658251792, ; 133: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 99
	i32 1677501392, ; 134: System.Net.Primitives.dll => 0x63fca3d0 => 130
	i32 1678508291, ; 135: System.Net.WebSockets => 0x640c0103 => 137
	i32 1679769178, ; 136: System.Security.Cryptography => 0x641f3e5a => 153
	i32 1729485958, ; 137: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 77
	i32 1736233607, ; 138: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 139: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1760259689, ; 140: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 38
	i32 1763938596, ; 141: System.Diagnostics.TraceSource.dll => 0x69239124 => 115
	i32 1766324549, ; 142: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 96
	i32 1770582343, ; 143: Microsoft.Extensions.Logging.dll => 0x6988f147 => 50
	i32 1780572499, ; 144: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 145: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 146: Xamarin.AndroidX.Fragment => 0x6a96652d => 84
	i32 1793755602, ; 147: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 148: Xamarin.AndroidX.Loader => 0x6bcd3296 => 89
	i32 1813058853, ; 149: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 100
	i32 1813201214, ; 150: Xamarin.Google.Android.Material => 0x6c13413e => 99
	i32 1818569960, ; 151: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 93
	i32 1824175904, ; 152: System.Text.Encoding.Extensions => 0x6cbab720 => 154
	i32 1824722060, ; 153: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 149
	i32 1828688058, ; 154: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 51
	i32 1842015223, ; 155: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 156: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 157: System.Linq.Expressions => 0x6ec71a65 => 122
	i32 1870277092, ; 158: System.Reflection.Primitives => 0x6f7a29e4 => 145
	i32 1875935024, ; 159: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 160: System.Collections.NonGeneric.dll => 0x71dc7c8b => 105
	i32 1939592360, ; 161: System.Private.Xml.Linq => 0x739bd4a8 => 141
	i32 1968388702, ; 162: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 41
	i32 1986222447, ; 163: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 57
	i32 2003115576, ; 164: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2018526534, ; 165: Supabase.Gotrue.dll => 0x78504546 => 36
	i32 2019465201, ; 166: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 87
	i32 2025202353, ; 167: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 168: System.Private.Xml => 0x79eb68ee => 142
	i32 2055257422, ; 169: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 86
	i32 2066184531, ; 170: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 171: System.Diagnostics.TraceSource => 0x7b6f419e => 115
	i32 2072397586, ; 172: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 48
	i32 2079903147, ; 173: System.Runtime.dll => 0x7bf8cdab => 151
	i32 2090596640, ; 174: System.Numerics.Vectors => 0x7c9bf920 => 138
	i32 2127167465, ; 175: System.Console => 0x7ec9ffe9 => 111
	i32 2128198166, ; 176: Supabase.Realtime => 0x7ed9ba16 => 67
	i32 2138252982, ; 177: Supabase => 0x7f7326b6 => 69
	i32 2142473426, ; 178: System.Collections.Specialized => 0x7fb38cd2 => 106
	i32 2159891885, ; 179: Microsoft.Maui => 0x80bd55ad => 61
	i32 2169148018, ; 180: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 181: Microsoft.Extensions.Options.dll => 0x820d22b3 => 52
	i32 2192057212, ; 182: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 51
	i32 2193016926, ; 183: System.ObjectModel.dll => 0x82b6c85e => 139
	i32 2201107256, ; 184: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 101
	i32 2201231467, ; 185: System.Net.Http => 0x8334206b => 126
	i32 2207618523, ; 186: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 187: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 42
	i32 2270573516, ; 188: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 189: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 94
	i32 2295906218, ; 190: System.Net.Sockets => 0x88d8bfaa => 134
	i32 2303942373, ; 191: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 192: System.Private.CoreLib.dll => 0x896b7878 => 168
	i32 2353062107, ; 193: System.Net.Primitives => 0x8c40e0db => 130
	i32 2368005991, ; 194: System.Xml.ReaderWriter.dll => 0x8d24e767 => 164
	i32 2369706906, ; 195: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 56
	i32 2371007202, ; 196: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 41
	i32 2395872292, ; 197: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 198: System.Web.HttpUtility => 0x8f24faee => 162
	i32 2411328690, ; 199: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 37
	i32 2427813419, ; 200: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 201: System.Console.dll => 0x912896e5 => 111
	i32 2442556106, ; 202: Microsoft.JSInterop.dll => 0x919672ca => 58
	i32 2458678730, ; 203: System.Net.Sockets.dll => 0x928c75ca => 134
	i32 2471841756, ; 204: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 205: Java.Interop.dll => 0x93918882 => 169
	i32 2480646305, ; 206: Microsoft.Maui.Controls => 0x93dba8a1 => 59
	i32 2484371297, ; 207: System.Net.ServicePoint => 0x94147f61 => 133
	i32 2538310050, ; 208: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 144
	i32 2550873716, ; 209: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 210: Microsoft.CSharp => 0x98ba5a04 => 103
	i32 2570120770, ; 211: System.Text.Encodings.Web => 0x9930ee42 => 155
	i32 2585220780, ; 212: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 154
	i32 2585805581, ; 213: System.Net.Ping => 0x9a20430d => 129
	i32 2589602615, ; 214: System.Threading.ThreadPool => 0x9a5a3337 => 160
	i32 2592341985, ; 215: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 45
	i32 2593496499, ; 216: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 217: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 101
	i32 2617129537, ; 218: System.Private.Xml.dll => 0x9bfe3a41 => 142
	i32 2620871830, ; 219: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 81
	i32 2626831493, ; 220: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2640290731, ; 221: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 56
	i32 2663698177, ; 222: System.Runtime.Loader => 0x9ec4cf01 => 147
	i32 2664396074, ; 223: System.Xml.XDocument.dll => 0x9ecf752a => 165
	i32 2665622720, ; 224: System.Drawing.Primitives => 0x9ee22cc0 => 116
	i32 2676780864, ; 225: System.Data.Common.dll => 0x9f8c6f40 => 112
	i32 2692077919, ; 226: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 39
	i32 2717744543, ; 227: System.Security.Claims => 0xa1fd7d9f => 152
	i32 2724373263, ; 228: System.Runtime.Numerics.dll => 0xa262a30f => 148
	i32 2732626843, ; 229: Xamarin.AndroidX.Activity => 0xa2e0939b => 74
	i32 2735172069, ; 230: System.Threading.Channels => 0xa30769e5 => 158
	i32 2737747696, ; 231: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 76
	i32 2752995522, ; 232: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 233: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 60
	i32 2764765095, ; 234: Microsoft.Maui.dll => 0xa4caf7a7 => 61
	i32 2778768386, ; 235: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 97
	i32 2785988530, ; 236: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 237: Microsoft.Maui.Graphics => 0xa7008e0b => 63
	i32 2806116107, ; 238: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 239: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 79
	i32 2831556043, ; 240: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 241: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 97
	i32 2861189240, ; 242: Microsoft.Maui.Essentials => 0xaa8a4878 => 62
	i32 2892341533, ; 243: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 38
	i32 2909740682, ; 244: System.Private.CoreLib => 0xad6f1e8a => 168
	i32 2911054922, ; 245: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 48
	i32 2916838712, ; 246: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 98
	i32 2919462931, ; 247: System.Numerics.Vectors.dll => 0xae037813 => 138
	i32 2940926066, ; 248: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 114
	i32 2959614098, ; 249: System.ComponentModel.dll => 0xb0682092 => 110
	i32 2978675010, ; 250: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 83
	i32 3038032645, ; 251: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 252: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 90
	i32 3059408633, ; 253: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 254: System.ComponentModel.Primitives => 0xb660be12 => 108
	i32 3077302341, ; 255: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3084678329, ; 256: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 57
	i32 3099081453, ; 257: MimeMapping.dll => 0xb8b83aed => 64
	i32 3099732863, ; 258: System.Security.Claims.dll => 0xb8c22b7f => 152
	i32 3103600923, ; 259: System.Formats.Asn1 => 0xb8fd311b => 118
	i32 3138360719, ; 260: Supabase.Postgrest.dll => 0xbb0f958f => 66
	i32 3159123045, ; 261: System.Reflection.Primitives.dll => 0xbc4c6465 => 145
	i32 3178803400, ; 262: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 91
	i32 3220365878, ; 263: System.Threading => 0xbff2e236 => 161
	i32 3258312781, ; 264: Xamarin.AndroidX.CardView => 0xc235e84d => 77
	i32 3265493905, ; 265: System.Linq.Queryable.dll => 0xc2a37b91 => 123
	i32 3305363605, ; 266: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3312457198, ; 267: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 55
	i32 3316684772, ; 268: System.Net.Requests.dll => 0xc5b097e4 => 131
	i32 3317135071, ; 269: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 82
	i32 3346324047, ; 270: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 92
	i32 3357674450, ; 271: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 272: System.Text.Json => 0xc82afec1 => 156
	i32 3362522851, ; 273: Xamarin.AndroidX.Core => 0xc86c06e3 => 80
	i32 3366347497, ; 274: Java.Interop => 0xc8a662e9 => 169
	i32 3374999561, ; 275: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 94
	i32 3381016424, ; 276: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 277: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 46
	i32 3428513518, ; 278: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 43
	i32 3430777524, ; 279: netstandard => 0xcc7d82b4 => 167
	i32 3463511458, ; 280: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 281: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 109
	i32 3476120550, ; 282: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 283: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 284: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 285: System.Text.Json.dll => 0xcfbaacae => 156
	i32 3500000672, ; 286: Microsoft.JSInterop => 0xd09dc5a0 => 58
	i32 3509114376, ; 287: System.Xml.Linq => 0xd128d608 => 163
	i32 3580758918, ; 288: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3598340787, ; 289: System.Net.WebSockets.Client => 0xd67a52b3 => 136
	i32 3607666123, ; 290: Supabase.Postgrest => 0xd7089dcb => 66
	i32 3608519521, ; 291: System.Linq.dll => 0xd715a361 => 124
	i32 3641597786, ; 292: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 86
	i32 3643446276, ; 293: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 294: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 91
	i32 3657292374, ; 295: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 42
	i32 3660523487, ; 296: System.Net.NetworkInformation => 0xda2f27df => 128
	i32 3672681054, ; 297: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3697841164, ; 298: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3700591436, ; 299: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 54
	i32 3724971120, ; 300: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 90
	i32 3731644420, ; 301: System.Reactive => 0xde6c6004 => 72
	i32 3732100267, ; 302: System.Net.NameResolution => 0xde7354ab => 127
	i32 3748608112, ; 303: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 113
	i32 3786282454, ; 304: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 78
	i32 3792276235, ; 305: System.Collections.NonGeneric => 0xe2098b0b => 105
	i32 3802395368, ; 306: System.Collections.Specialized.dll => 0xe2a3f2e8 => 106
	i32 3823082795, ; 307: System.Security.Cryptography.dll => 0xe3df9d2b => 153
	i32 3841636137, ; 308: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 44
	i32 3849253459, ; 309: System.Runtime.InteropServices.dll => 0xe56ef253 => 146
	i32 3885497537, ; 310: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 135
	i32 3889960447, ; 311: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 312: System.Collections.Concurrent.dll => 0xe839deed => 104
	i32 3896760992, ; 313: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 80
	i32 3906640997, ; 314: Supabase.Storage.dll => 0xe8da9c65 => 70
	i32 3928044579, ; 315: System.Xml.ReaderWriter => 0xea213423 => 164
	i32 3931092270, ; 316: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 93
	i32 3955647286, ; 317: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 75
	i32 3980364293, ; 318: Supabase.Storage => 0xed3f8a05 => 70
	i32 3980434154, ; 319: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 320: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 321: System.Memory => 0xeff49a63 => 125
	i32 4046471985, ; 322: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 60
	i32 4054681211, ; 323: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 143
	i32 4068434129, ; 324: System.Private.Xml.Linq.dll => 0xf27f60d1 => 141
	i32 4073602200, ; 325: System.Threading.dll => 0xf2ce3c98 => 161
	i32 4094352644, ; 326: Microsoft.Maui.Essentials.dll => 0xf40add04 => 62
	i32 4099507663, ; 327: System.Drawing.dll => 0xf45985cf => 117
	i32 4100113165, ; 328: System.Private.Uri => 0xf462c30d => 140
	i32 4102112229, ; 329: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 330: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 331: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 43
	i32 4127667938, ; 332: System.IO.FileSystem.Watcher => 0xf60736e2 => 121
	i32 4147896353, ; 333: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 143
	i32 4150914736, ; 334: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 335: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 121
	i32 4181436372, ; 336: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 150
	i32 4182413190, ; 337: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 88
	i32 4213026141, ; 338: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 113
	i32 4263231520, ; 339: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 71
	i32 4271975918, ; 340: Microsoft.Maui.Controls.dll => 0xfea12dee => 59
	i32 4274976490, ; 341: System.Runtime.Numerics => 0xfecef6ea => 148
	i32 4292120959, ; 342: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 88
	i32 4294648842 ; 343: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 47
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [344 x i32] [
	i32 128, ; 0
	i32 127, ; 1
	i32 65, ; 2
	i32 137, ; 3
	i32 159, ; 4
	i32 114, ; 5
	i32 33, ; 6
	i32 63, ; 7
	i32 69, ; 8
	i32 146, ; 9
	i32 158, ; 10
	i32 135, ; 11
	i32 64, ; 12
	i32 78, ; 13
	i32 96, ; 14
	i32 30, ; 15
	i32 31, ; 16
	i32 110, ; 17
	i32 103, ; 18
	i32 144, ; 19
	i32 37, ; 20
	i32 2, ; 21
	i32 129, ; 22
	i32 30, ; 23
	i32 74, ; 24
	i32 15, ; 25
	i32 85, ; 26
	i32 14, ; 27
	i32 133, ; 28
	i32 159, ; 29
	i32 125, ; 30
	i32 160, ; 31
	i32 34, ; 32
	i32 26, ; 33
	i32 107, ; 34
	i32 84, ; 35
	i32 162, ; 36
	i32 150, ; 37
	i32 166, ; 38
	i32 54, ; 39
	i32 139, ; 40
	i32 13, ; 41
	i32 7, ; 42
	i32 53, ; 43
	i32 123, ; 44
	i32 50, ; 45
	i32 47, ; 46
	i32 21, ; 47
	i32 72, ; 48
	i32 82, ; 49
	i32 19, ; 50
	i32 155, ; 51
	i32 104, ; 52
	i32 132, ; 53
	i32 1, ; 54
	i32 163, ; 55
	i32 16, ; 56
	i32 4, ; 57
	i32 147, ; 58
	i32 131, ; 59
	i32 73, ; 60
	i32 68, ; 61
	i32 120, ; 62
	i32 25, ; 63
	i32 52, ; 64
	i32 40, ; 65
	i32 112, ; 66
	i32 140, ; 67
	i32 119, ; 68
	i32 108, ; 69
	i32 35, ; 70
	i32 28, ; 71
	i32 65, ; 72
	i32 85, ; 73
	i32 165, ; 74
	i32 107, ; 75
	i32 49, ; 76
	i32 95, ; 77
	i32 117, ; 78
	i32 44, ; 79
	i32 3, ; 80
	i32 75, ; 81
	i32 116, ; 82
	i32 122, ; 83
	i32 87, ; 84
	i32 109, ; 85
	i32 100, ; 86
	i32 73, ; 87
	i32 166, ; 88
	i32 16, ; 89
	i32 22, ; 90
	i32 45, ; 91
	i32 92, ; 92
	i32 20, ; 93
	i32 67, ; 94
	i32 35, ; 95
	i32 18, ; 96
	i32 2, ; 97
	i32 83, ; 98
	i32 102, ; 99
	i32 124, ; 100
	i32 68, ; 101
	i32 32, ; 102
	i32 95, ; 103
	i32 79, ; 104
	i32 149, ; 105
	i32 0, ; 106
	i32 118, ; 107
	i32 46, ; 108
	i32 132, ; 109
	i32 71, ; 110
	i32 6, ; 111
	i32 120, ; 112
	i32 76, ; 113
	i32 53, ; 114
	i32 119, ; 115
	i32 10, ; 116
	i32 55, ; 117
	i32 5, ; 118
	i32 36, ; 119
	i32 49, ; 120
	i32 102, ; 121
	i32 157, ; 122
	i32 40, ; 123
	i32 25, ; 124
	i32 136, ; 125
	i32 89, ; 126
	i32 98, ; 127
	i32 81, ; 128
	i32 126, ; 129
	i32 157, ; 130
	i32 39, ; 131
	i32 151, ; 132
	i32 99, ; 133
	i32 130, ; 134
	i32 137, ; 135
	i32 153, ; 136
	i32 77, ; 137
	i32 23, ; 138
	i32 1, ; 139
	i32 38, ; 140
	i32 115, ; 141
	i32 96, ; 142
	i32 50, ; 143
	i32 170, ; 144
	i32 17, ; 145
	i32 84, ; 146
	i32 9, ; 147
	i32 89, ; 148
	i32 100, ; 149
	i32 99, ; 150
	i32 93, ; 151
	i32 154, ; 152
	i32 149, ; 153
	i32 51, ; 154
	i32 29, ; 155
	i32 26, ; 156
	i32 122, ; 157
	i32 145, ; 158
	i32 8, ; 159
	i32 105, ; 160
	i32 141, ; 161
	i32 41, ; 162
	i32 57, ; 163
	i32 5, ; 164
	i32 36, ; 165
	i32 87, ; 166
	i32 0, ; 167
	i32 142, ; 168
	i32 86, ; 169
	i32 4, ; 170
	i32 115, ; 171
	i32 48, ; 172
	i32 151, ; 173
	i32 138, ; 174
	i32 111, ; 175
	i32 67, ; 176
	i32 69, ; 177
	i32 106, ; 178
	i32 61, ; 179
	i32 12, ; 180
	i32 52, ; 181
	i32 51, ; 182
	i32 139, ; 183
	i32 101, ; 184
	i32 126, ; 185
	i32 14, ; 186
	i32 42, ; 187
	i32 8, ; 188
	i32 94, ; 189
	i32 134, ; 190
	i32 18, ; 191
	i32 168, ; 192
	i32 130, ; 193
	i32 164, ; 194
	i32 56, ; 195
	i32 41, ; 196
	i32 13, ; 197
	i32 162, ; 198
	i32 37, ; 199
	i32 10, ; 200
	i32 111, ; 201
	i32 58, ; 202
	i32 134, ; 203
	i32 167, ; 204
	i32 169, ; 205
	i32 59, ; 206
	i32 133, ; 207
	i32 144, ; 208
	i32 11, ; 209
	i32 103, ; 210
	i32 155, ; 211
	i32 154, ; 212
	i32 129, ; 213
	i32 160, ; 214
	i32 45, ; 215
	i32 20, ; 216
	i32 101, ; 217
	i32 142, ; 218
	i32 81, ; 219
	i32 15, ; 220
	i32 56, ; 221
	i32 147, ; 222
	i32 165, ; 223
	i32 116, ; 224
	i32 112, ; 225
	i32 39, ; 226
	i32 152, ; 227
	i32 148, ; 228
	i32 74, ; 229
	i32 158, ; 230
	i32 76, ; 231
	i32 21, ; 232
	i32 60, ; 233
	i32 61, ; 234
	i32 97, ; 235
	i32 27, ; 236
	i32 63, ; 237
	i32 6, ; 238
	i32 79, ; 239
	i32 19, ; 240
	i32 97, ; 241
	i32 62, ; 242
	i32 38, ; 243
	i32 168, ; 244
	i32 48, ; 245
	i32 98, ; 246
	i32 138, ; 247
	i32 114, ; 248
	i32 110, ; 249
	i32 83, ; 250
	i32 34, ; 251
	i32 90, ; 252
	i32 170, ; 253
	i32 108, ; 254
	i32 12, ; 255
	i32 57, ; 256
	i32 64, ; 257
	i32 152, ; 258
	i32 118, ; 259
	i32 66, ; 260
	i32 145, ; 261
	i32 91, ; 262
	i32 161, ; 263
	i32 77, ; 264
	i32 123, ; 265
	i32 7, ; 266
	i32 55, ; 267
	i32 131, ; 268
	i32 82, ; 269
	i32 92, ; 270
	i32 24, ; 271
	i32 156, ; 272
	i32 80, ; 273
	i32 169, ; 274
	i32 94, ; 275
	i32 3, ; 276
	i32 46, ; 277
	i32 43, ; 278
	i32 167, ; 279
	i32 11, ; 280
	i32 109, ; 281
	i32 171, ; 282
	i32 24, ; 283
	i32 23, ; 284
	i32 156, ; 285
	i32 58, ; 286
	i32 163, ; 287
	i32 31, ; 288
	i32 136, ; 289
	i32 66, ; 290
	i32 124, ; 291
	i32 86, ; 292
	i32 28, ; 293
	i32 91, ; 294
	i32 42, ; 295
	i32 128, ; 296
	i32 171, ; 297
	i32 33, ; 298
	i32 54, ; 299
	i32 90, ; 300
	i32 72, ; 301
	i32 127, ; 302
	i32 113, ; 303
	i32 78, ; 304
	i32 105, ; 305
	i32 106, ; 306
	i32 153, ; 307
	i32 44, ; 308
	i32 146, ; 309
	i32 135, ; 310
	i32 32, ; 311
	i32 104, ; 312
	i32 80, ; 313
	i32 70, ; 314
	i32 164, ; 315
	i32 93, ; 316
	i32 75, ; 317
	i32 70, ; 318
	i32 27, ; 319
	i32 9, ; 320
	i32 125, ; 321
	i32 60, ; 322
	i32 143, ; 323
	i32 141, ; 324
	i32 161, ; 325
	i32 62, ; 326
	i32 117, ; 327
	i32 140, ; 328
	i32 22, ; 329
	i32 17, ; 330
	i32 43, ; 331
	i32 121, ; 332
	i32 143, ; 333
	i32 29, ; 334
	i32 121, ; 335
	i32 150, ; 336
	i32 88, ; 337
	i32 113, ; 338
	i32 71, ; 339
	i32 59, ; 340
	i32 148, ; 341
	i32 88, ; 342
	i32 47 ; 343
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
