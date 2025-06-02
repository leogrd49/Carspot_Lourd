; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [172 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [344 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 53
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 62
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 122
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 78
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 95
	i64 464346026994987652, ; 6: System.Reactive.dll => 0x671b04057e67284 => 72
	i64 545109961164950392, ; 7: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 8: System.Reflection.Primitives => 0x7c6829760de3975 => 145
	i64 683390398661839228, ; 9: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 47
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 159
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 110
	i64 849051935479314978, ; 12: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 83
	i64 1010599046655515943, ; 14: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 145
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 99
	i64 1121665720830085036, ; 16: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 17: System.Drawing.dll => 0x119be62002c19ebb => 117
	i64 1369545283391376210, ; 18: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 91
	i64 1404195534211153682, ; 19: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 121
	i64 1476839205573959279, ; 20: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 130
	i64 1486715745332614827, ; 21: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 59
	i64 1513467482682125403, ; 22: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 23: System.Threading.Thread.dll => 0x15551e8a954ae0df => 159
	i64 1556147632182429976, ; 24: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 25: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 76
	i64 1628611045998245443, ; 26: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 88
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 65
	i64 1743969030606105336, ; 28: System.Memory.dll => 0x1833d297e88f2af8 => 125
	i64 1767386781656293639, ; 29: System.Private.Uri.dll => 0x188704e9f5582107 => 140
	i64 1776954265264967804, ; 30: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 58
	i64 1795316252682057001, ; 31: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 75
	i64 1835311033149317475, ; 32: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 33: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 95
	i64 1875417405349196092, ; 34: System.Drawing.Primitives => 0x1a06d2319b6c713c => 116
	i64 1881198190668717030, ; 35: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 36: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 60
	i64 1959996714666907089, ; 37: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 38: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 87
	i64 1983698669889758782, ; 39: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 40: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 41: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 116
	i64 2133195048986300728, ; 42: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 65
	i64 2152408820173588167, ; 43: Supabase.Functions.dll => 0x1ddee46b01dd46c7 => 35
	i64 2262844636196693701, ; 44: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 83
	i64 2287834202362508563, ; 45: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 104
	i64 2295368378960711535, ; 46: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 40
	i64 2302323944321350744, ; 47: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 48: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 86
	i64 2335503487726329082, ; 49: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 155
	i64 2470498323731680442, ; 50: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 79
	i64 2497223385847772520, ; 51: System.Runtime => 0x22a7eb7046413568 => 151
	i64 2547086958574651984, ; 52: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 74
	i64 2602673633151553063, ; 53: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2612152650457191105, ; 54: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 57
	i64 2632269733008246987, ; 55: System.Net.NameResolution => 0x2487b36034f808cb => 127
	i64 2656907746661064104, ; 56: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 43
	i64 2662981627730767622, ; 57: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2706075432581334785, ; 58: System.Net.WebSockets => 0x258de944be6c0701 => 137
	i64 2781169761569919449, ; 59: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 58
	i64 2789714023057451704, ; 60: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 55
	i64 2895129759130297543, ; 61: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 2926123043691605432, ; 62: Websocket.Client.dll => 0x289bad67ac52adb8 => 73
	i64 3017704767998173186, ; 63: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 99
	i64 3289520064315143713, ; 64: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 85
	i64 3311221304742556517, ; 65: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 138
	i64 3325875462027654285, ; 66: System.Runtime.Numerics => 0x2e27e21c8958b48d => 148
	i64 3328853167529574890, ; 67: System.Net.Sockets.dll => 0x2e327651a008c1ea => 134
	i64 3344514922410554693, ; 68: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 101
	i64 3396143930648122816, ; 69: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 45
	i64 3402534845034375023, ; 70: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 71
	i64 3429672777697402584, ; 71: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 62
	i64 3494946837667399002, ; 72: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 41
	i64 3508450208084372758, ; 73: System.Net.Ping => 0x30b084e02d03ad16 => 129
	i64 3522470458906976663, ; 74: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 96
	i64 3551103847008531295, ; 75: System.Private.CoreLib.dll => 0x31480e226177735f => 168
	i64 3567343442040498961, ; 76: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 77: System.Runtime.dll => 0x319037675df7e556 => 151
	i64 3638003163729360188, ; 78: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 42
	i64 3647754201059316852, ; 79: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 164
	i64 3655542548057982301, ; 80: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 41
	i64 3716579019761409177, ; 81: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 82: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 94
	i64 3753897248517198740, ; 83: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 39
	i64 3869221888984012293, ; 84: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 50
	i64 3889433610606858880, ; 85: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 48
	i64 3890352374528606784, ; 86: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 60
	i64 3933965368022646939, ; 87: System.Net.Requests => 0x369840a8bfadc09b => 131
	i64 3966267475168208030, ; 88: System.Memory => 0x370b03412596249e => 125
	i64 4009997192427317104, ; 89: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 150
	i64 4073500526318903918, ; 90: System.Private.Xml.dll => 0x3887fb25779ae26e => 142
	i64 4084167866418059728, ; 91: Supabase.Postgrest.dll => 0x38ade10920e9d9d0 => 66
	i64 4120493066591692148, ; 92: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 93: System.ComponentModel => 0x39a7562737acb67e => 110
	i64 4167269041631776580, ; 94: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 160
	i64 4168469861834746866, ; 95: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 152
	i64 4187479170553454871, ; 96: System.Linq.Expressions => 0x3a1cea1e912fa117 => 122
	i64 4205801962323029395, ; 97: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 109
	i64 4356591372459378815, ; 98: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4477672992252076438, ; 99: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 162
	i64 4587170409256197213, ; 100: CarspotLourd.dll => 0x3fa8e72eefe61c5d => 102
	i64 4672453897036726049, ; 101: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 121
	i64 4679594760078841447, ; 102: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 103: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 74
	i64 4795410492532947900, ; 104: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 96
	i64 4809057822547766521, ; 105: System.Drawing => 0x42bd349c3145ecf9 => 117
	i64 4814660307502931973, ; 106: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 127
	i64 4853321196694829351, ; 107: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 147
	i64 5103417709280584325, ; 108: System.Collections.Specialized => 0x46d2fb5e161b6285 => 106
	i64 5182934613077526976, ; 109: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 106
	i64 5197073077358930460, ; 110: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 38
	i64 5290786973231294105, ; 111: System.Runtime.Loader => 0x496ca6b869b72699 => 147
	i64 5471532531798518949, ; 112: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 113: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 114: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 119
	i64 5573260873512690141, ; 115: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 153
	i64 5692067934154308417, ; 116: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 98
	i64 5748194408492950188, ; 117: Supabase.Storage.dll => 0x4fc5b05bfa1be2ac => 70
	i64 5979151488806146654, ; 118: System.Formats.Asn1 => 0x52fa3699a489d25e => 118
	i64 6068057819846744445, ; 119: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6200764641006662125, ; 120: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 121: System.Text.Json.dll => 0x565a67a0ffe264a7 => 156
	i64 6284145129771520194, ; 122: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 143
	i64 6357457916754632952, ; 123: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 86
	i64 6478287442656530074, ; 125: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 126: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 82
	i64 6560151584539558821, ; 127: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 52
	i64 6724398223859243234, ; 128: Supabase.Postgrest => 0x5d51dc8ea565d8e2 => 66
	i64 6743165466166707109, ; 129: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 130: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 131: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 115
	i64 6814185388980153342, ; 132: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 165
	i64 6876862101832370452, ; 133: System.Xml.Linq => 0x5f6f85a57d108914 => 163
	i64 6894844156784520562, ; 134: System.Numerics.Vectors => 0x5faf683aead1ad72 => 138
	i64 6920570528939222495, ; 135: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 39
	i64 7083547580668757502, ; 136: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 141
	i64 7220009545223068405, ; 137: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 138: System.Linq => 0x64e71ccf51a90a5a => 124
	i64 7377312882064240630, ; 139: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 109
	i64 7488575175965059935, ; 140: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 163
	i64 7489048572193775167, ; 141: System.ObjectModel => 0x67ee71ff6b419e3f => 139
	i64 7496222613193209122, ; 142: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 71
	i64 7602111570124318452, ; 143: System.Reactive => 0x698020320025a6f4 => 72
	i64 7654504624184590948, ; 144: System.Net.Http => 0x6a3a4366801b8264 => 126
	i64 7708790323521193081, ; 145: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 146: System.Private.CoreLib => 0x6b0ff375198b9c17 => 168
	i64 7735176074855944702, ; 147: Microsoft.CSharp => 0x6b58dda848e391fe => 103
	i64 7735352534559001595, ; 148: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 100
	i64 7836164640616011524, ; 149: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 76
	i64 7868980864444657808, ; 150: Supabase.Realtime.dll => 0x6d343c679191f090 => 67
	i64 8064050204834738623, ; 151: System.Collections.dll => 0x6fe942efa61731bf => 107
	i64 8083354569033831015, ; 152: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 85
	i64 8087206902342787202, ; 153: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 113
	i64 8167236081217502503, ; 154: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 169
	i64 8185542183669246576, ; 155: System.Collections => 0x7198e33f4794aa70 => 107
	i64 8246048515196606205, ; 156: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 63
	i64 8368701292315763008, ; 157: System.Security.Cryptography => 0x7423997c6fd56140 => 153
	i64 8400357532724379117, ; 158: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 93
	i64 8410671156615598628, ; 159: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 144
	i64 8563666267364444763, ; 160: System.Private.Uri => 0x76d841191140ca5b => 140
	i64 8614108721271900878, ; 161: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 162: Java.Interop => 0x77b654e585b55834 => 169
	i64 8638972117149407195, ; 163: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 103
	i64 8639588376636138208, ; 164: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 92
	i64 8677882282824630478, ; 165: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 166: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 113
	i64 8758604146903086415, ; 167: Supabase.Realtime => 0x798cd011086bf54f => 67
	i64 8941376889969657626, ; 168: System.Xml.XDocument => 0x7c1626e87187471a => 165
	i64 9045785047181495996, ; 169: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 170: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 98
	i64 9324707631942237306, ; 171: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 75
	i64 9427266486299436557, ; 172: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 56
	i64 9659729154652888475, ; 173: System.Text.RegularExpressions => 0x860e407c9991dd9b => 157
	i64 9667360217193089419, ; 174: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 114
	i64 9678050649315576968, ; 175: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 79
	i64 9702891218465930390, ; 176: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 105
	i64 9808709177481450983, ; 177: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9933555792566666578, ; 178: System.Linq.Queryable.dll => 0x89db145cf475c552 => 123
	i64 9956195530459977388, ; 179: Microsoft.Maui => 0x8a2b8315b36616ac => 61
	i64 9991543690424095600, ; 180: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 181: System.Net.Http.dll => 0x8b50e941206af13b => 126
	i64 10051358222726253779, ; 182: System.Private.Xml => 0x8b7d990c97ccccd3 => 142
	i64 10078727084704864206, ; 183: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 136
	i64 10092835686693276772, ; 184: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 59
	i64 10143853363526200146, ; 185: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 186: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 82
	i64 10236703004850800690, ; 187: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 133
	i64 10245369515835430794, ; 188: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 144
	i64 10347464889647514442, ; 189: Supabase.Gotrue => 0x8f99947e7144434a => 36
	i64 10364469296367737616, ; 190: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 143
	i64 10406448008575299332, ; 191: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 101
	i64 10430153318873392755, ; 192: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 80
	i64 10506226065143327199, ; 193: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10734191584620811116, ; 194: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 47
	i64 10785150219063592792, ; 195: System.Net.Primitives => 0x95ac8cfb68830758 => 130
	i64 10822644899632537592, ; 196: System.Linq.Queryable => 0x9631c23204ca5ff8 => 123
	i64 11002576679268595294, ; 197: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 51
	i64 11009005086950030778, ; 198: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 61
	i64 11051904132540108364, ; 199: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 46
	i64 11103970607964515343, ; 200: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 201: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 97
	i64 11218356222449480316, ; 202: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 37
	i64 11220793807500858938, ; 203: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 204: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 52
	i64 11340910727871153756, ; 205: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 81
	i64 11485890710487134646, ; 206: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 146
	i64 11517440453979132662, ; 207: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 54
	i64 11518296021396496455, ; 208: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 209: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 97
	i64 11530571088791430846, ; 210: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 50
	i64 11597940890313164233, ; 211: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11705530742807338875, ; 212: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11868377108928577036, ; 213: MimeMapping.dll => 0xa4b4f2196610be0c => 64
	i64 12040886584167504988, ; 214: System.Net.ServicePoint => 0xa719d28d8e121c5c => 133
	i64 12048689113179125827, ; 215: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 48
	i64 12058074296353848905, ; 216: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 49
	i64 12145679461940342714, ; 217: System.Text.Json => 0xa88e1f1ebcb62fba => 156
	i64 12201331334810686224, ; 218: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 150
	i64 12439275739440478309, ; 219: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 55
	i64 12451044538927396471, ; 220: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 84
	i64 12466513435562512481, ; 221: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 89
	i64 12475113361194491050, ; 222: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 223: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 115
	i64 12538491095302438457, ; 224: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 77
	i64 12550732019250633519, ; 225: System.IO.Compression => 0xae2d28465e8e1b2f => 120
	i64 12681088699309157496, ; 226: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12699999919562409296, ; 227: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 114
	i64 12700543734426720211, ; 228: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 78
	i64 12708922737231849740, ; 229: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 154
	i64 12808066478489537992, ; 230: Websocket.Client => 0xb1bf649a25f50dc8 => 73
	i64 12823819093633476069, ; 231: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12843321153144804894, ; 232: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 53
	i64 12859557719246324186, ; 233: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 135
	i64 12888876061296924636, ; 234: Supabase.Core.dll => 0xb2de7c7d53a397dc => 68
	i64 13003699287675270979, ; 235: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 40
	i64 13068258254871114833, ; 236: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 149
	i64 13221551921002590604, ; 237: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 238: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13310112861600168646, ; 239: Supabase.Storage => 0xb8b70520ac093ac6 => 70
	i64 13343850469010654401, ; 240: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13381594904270902445, ; 241: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 242: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 100
	i64 13467053111158216594, ; 243: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 244: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 245: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13550417756503177631, ; 246: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 45
	i64 13572454107664307259, ; 247: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 94
	i64 13717397318615465333, ; 248: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 108
	i64 13755568601956062840, ; 249: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 250: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 251: System.Console.dll => 0xc0a5f3cade5c6774 => 111
	i64 13959074834287824816, ; 252: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 84
	i64 14100563506285742564, ; 253: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 254: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 77
	i64 14125464355221830302, ; 255: System.Threading.dll => 0xc407bafdbc707a9e => 161
	i64 14254574811015963973, ; 256: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 154
	i64 14346402571976470310, ; 257: System.Net.Ping.dll => 0xc718a920f3686f26 => 129
	i64 14461014870687870182, ; 258: System.Net.Requests.dll => 0xc8afd8683afdece6 => 131
	i64 14464374589798375073, ; 259: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 260: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 261: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 155
	i64 14622043554576106986, ; 262: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 149
	i64 14625816794512409936, ; 263: Supabase.Gotrue.dll => 0xcaf956e23adac550 => 36
	i64 14669215534098758659, ; 264: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 43
	i64 14690985099581930927, ; 265: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 162
	i64 14705122255218365489, ; 266: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 267: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14744453227118192070, ; 268: MimeMapping => 0xcc9ed21731bde5c6 => 64
	i64 14832630590065248058, ; 269: System.Security.Claims => 0xcdd816ef5d6e873a => 152
	i64 14852515768018889994, ; 270: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 81
	i64 14892012299694389861, ; 271: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 272: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 273: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 44
	i64 14984936317414011727, ; 274: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 135
	i64 14987728460634540364, ; 275: System.IO.Compression.dll => 0xcfff1ba06622494c => 120
	i64 15015154896917945444, ; 276: System.Net.Security.dll => 0xd0608bd33642dc64 => 132
	i64 15076659072870671916, ; 277: System.ObjectModel.dll => 0xd13b0d8c1620662c => 139
	i64 15111608613780139878, ; 278: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 279: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 119
	i64 15133485256822086103, ; 280: System.Linq.dll => 0xd204f0a9127dd9d7 => 124
	i64 15138356091203993725, ; 281: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 54
	i64 15154054061132759083, ; 282: Supabase => 0xd24e03e104e2402b => 69
	i64 15227001540531775957, ; 283: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 42
	i64 15370334346939861994, ; 284: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 80
	i64 15391712275433856905, ; 285: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 44
	i64 15427448221306938193, ; 286: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 38
	i64 15481710163200268842, ; 287: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 46
	i64 15527772828719725935, ; 288: System.Console => 0xd77dbb1e38cd3d6f => 111
	i64 15536481058354060254, ; 289: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 290: System.Net.Sockets => 0xd7e790fe7a6dc536 => 134
	i64 15582737692548360875, ; 291: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 88
	i64 15609085926864131306, ; 292: System.dll => 0xd89e9cf3334914ea => 166
	i64 15661133872274321916, ; 293: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 164
	i64 15664356999916475676, ; 294: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 295: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 296: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 297: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 158
	i64 16018552496348375205, ; 298: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 128
	i64 16154507427712707110, ; 299: System => 0xe03056ea4e39aa26 => 166
	i64 16219561732052121626, ; 300: System.Net.Security => 0xe1177575db7c781a => 132
	i64 16288847719894691167, ; 301: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 302: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 51
	i64 16454459195343277943, ; 303: System.Net.NetworkInformation => 0xe459fb756d988f77 => 128
	i64 16649148416072044166, ; 304: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 63
	i64 16677317093839702854, ; 305: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 93
	i64 16856067890322379635, ; 306: System.Data.Common.dll => 0xe9ecc87060889373 => 112
	i64 16890310621557459193, ; 307: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 157
	i64 16942731696432749159, ; 308: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 309: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 91
	i64 17008137082415910100, ; 310: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 105
	i64 17031351772568316411, ; 311: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 90
	i64 17062143951396181894, ; 312: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 108
	i64 17079998892748052666, ; 313: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 37
	i64 17089008752050867324, ; 314: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17118171214553292978, ; 315: System.Threading.Channels => 0xed8ff6060fc420b2 => 158
	i64 17137864900836977098, ; 316: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 57
	i64 17205988430934219272, ; 317: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 49
	i64 17230721278011714856, ; 318: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 141
	i64 17260702271250283638, ; 319: System.Data.Common => 0xef8a5543bba6bc76 => 112
	i64 17338386382517543202, ; 320: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 136
	i64 17342750010158924305, ; 321: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 322: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17509662556995089465, ; 323: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 137
	i64 17514990004910432069, ; 324: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17576078694130054946, ; 325: Supabase.dll => 0xf3eac67343eef722 => 69
	i64 17623389608345532001, ; 326: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 327: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 328: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 89
	i64 17710060891934109755, ; 329: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 87
	i64 17712670374920797664, ; 330: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 146
	i64 17777860260071588075, ; 331: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 148
	i64 17790600151040787804, ; 332: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 56
	i64 18025913125965088385, ; 333: System.Threading => 0xfa28e87b91334681 => 161
	i64 18099568558057551825, ; 334: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18099689198537119569, ; 335: Supabase.Functions => 0xfb2f036e07c79751 => 35
	i64 18121036031235206392, ; 336: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 90
	i64 18146411883821974900, ; 337: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 118
	i64 18203438397569563077, ; 338: CarspotLourd => 0xfc9f9ac6d1d6f9c5 => 102
	i64 18225059387460068507, ; 339: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 160
	i64 18226465428055663763, ; 340: Supabase.Core => 0xfcf169bd26322493 => 68
	i64 18245806341561545090, ; 341: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 104
	i64 18305135509493619199, ; 342: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 92
	i64 18324163916253801303 ; 343: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [344 x i32] [
	i32 53, ; 0
	i32 171, ; 1
	i32 62, ; 2
	i32 122, ; 3
	i32 78, ; 4
	i32 95, ; 5
	i32 72, ; 6
	i32 7, ; 7
	i32 145, ; 8
	i32 47, ; 9
	i32 159, ; 10
	i32 110, ; 11
	i32 10, ; 12
	i32 83, ; 13
	i32 145, ; 14
	i32 99, ; 15
	i32 18, ; 16
	i32 117, ; 17
	i32 91, ; 18
	i32 121, ; 19
	i32 130, ; 20
	i32 59, ; 21
	i32 170, ; 22
	i32 159, ; 23
	i32 16, ; 24
	i32 76, ; 25
	i32 88, ; 26
	i32 65, ; 27
	i32 125, ; 28
	i32 140, ; 29
	i32 58, ; 30
	i32 75, ; 31
	i32 6, ; 32
	i32 95, ; 33
	i32 116, ; 34
	i32 28, ; 35
	i32 60, ; 36
	i32 28, ; 37
	i32 87, ; 38
	i32 2, ; 39
	i32 20, ; 40
	i32 116, ; 41
	i32 65, ; 42
	i32 35, ; 43
	i32 83, ; 44
	i32 104, ; 45
	i32 40, ; 46
	i32 24, ; 47
	i32 86, ; 48
	i32 155, ; 49
	i32 79, ; 50
	i32 151, ; 51
	i32 74, ; 52
	i32 27, ; 53
	i32 57, ; 54
	i32 127, ; 55
	i32 43, ; 56
	i32 2, ; 57
	i32 137, ; 58
	i32 58, ; 59
	i32 55, ; 60
	i32 7, ; 61
	i32 73, ; 62
	i32 99, ; 63
	i32 85, ; 64
	i32 138, ; 65
	i32 148, ; 66
	i32 134, ; 67
	i32 101, ; 68
	i32 45, ; 69
	i32 71, ; 70
	i32 62, ; 71
	i32 41, ; 72
	i32 129, ; 73
	i32 96, ; 74
	i32 168, ; 75
	i32 22, ; 76
	i32 151, ; 77
	i32 42, ; 78
	i32 164, ; 79
	i32 41, ; 80
	i32 167, ; 81
	i32 94, ; 82
	i32 39, ; 83
	i32 50, ; 84
	i32 48, ; 85
	i32 60, ; 86
	i32 131, ; 87
	i32 125, ; 88
	i32 150, ; 89
	i32 142, ; 90
	i32 66, ; 91
	i32 33, ; 92
	i32 110, ; 93
	i32 160, ; 94
	i32 152, ; 95
	i32 122, ; 96
	i32 109, ; 97
	i32 30, ; 98
	i32 162, ; 99
	i32 102, ; 100
	i32 121, ; 101
	i32 0, ; 102
	i32 74, ; 103
	i32 96, ; 104
	i32 117, ; 105
	i32 127, ; 106
	i32 147, ; 107
	i32 106, ; 108
	i32 106, ; 109
	i32 38, ; 110
	i32 147, ; 111
	i32 26, ; 112
	i32 29, ; 113
	i32 119, ; 114
	i32 153, ; 115
	i32 98, ; 116
	i32 70, ; 117
	i32 118, ; 118
	i32 23, ; 119
	i32 23, ; 120
	i32 156, ; 121
	i32 143, ; 122
	i32 34, ; 123
	i32 86, ; 124
	i32 11, ; 125
	i32 82, ; 126
	i32 52, ; 127
	i32 66, ; 128
	i32 19, ; 129
	i32 22, ; 130
	i32 115, ; 131
	i32 165, ; 132
	i32 163, ; 133
	i32 138, ; 134
	i32 39, ; 135
	i32 141, ; 136
	i32 26, ; 137
	i32 124, ; 138
	i32 109, ; 139
	i32 163, ; 140
	i32 139, ; 141
	i32 71, ; 142
	i32 72, ; 143
	i32 126, ; 144
	i32 17, ; 145
	i32 168, ; 146
	i32 103, ; 147
	i32 100, ; 148
	i32 76, ; 149
	i32 67, ; 150
	i32 107, ; 151
	i32 85, ; 152
	i32 113, ; 153
	i32 169, ; 154
	i32 107, ; 155
	i32 63, ; 156
	i32 153, ; 157
	i32 93, ; 158
	i32 144, ; 159
	i32 140, ; 160
	i32 21, ; 161
	i32 169, ; 162
	i32 103, ; 163
	i32 92, ; 164
	i32 21, ; 165
	i32 113, ; 166
	i32 67, ; 167
	i32 165, ; 168
	i32 31, ; 169
	i32 98, ; 170
	i32 75, ; 171
	i32 56, ; 172
	i32 157, ; 173
	i32 114, ; 174
	i32 79, ; 175
	i32 105, ; 176
	i32 171, ; 177
	i32 123, ; 178
	i32 61, ; 179
	i32 6, ; 180
	i32 126, ; 181
	i32 142, ; 182
	i32 136, ; 183
	i32 59, ; 184
	i32 3, ; 185
	i32 82, ; 186
	i32 133, ; 187
	i32 144, ; 188
	i32 36, ; 189
	i32 143, ; 190
	i32 101, ; 191
	i32 80, ; 192
	i32 1, ; 193
	i32 47, ; 194
	i32 130, ; 195
	i32 123, ; 196
	i32 51, ; 197
	i32 61, ; 198
	i32 46, ; 199
	i32 12, ; 200
	i32 97, ; 201
	i32 37, ; 202
	i32 15, ; 203
	i32 52, ; 204
	i32 81, ; 205
	i32 146, ; 206
	i32 54, ; 207
	i32 13, ; 208
	i32 97, ; 209
	i32 50, ; 210
	i32 167, ; 211
	i32 9, ; 212
	i32 64, ; 213
	i32 133, ; 214
	i32 48, ; 215
	i32 49, ; 216
	i32 156, ; 217
	i32 150, ; 218
	i32 55, ; 219
	i32 84, ; 220
	i32 89, ; 221
	i32 34, ; 222
	i32 115, ; 223
	i32 77, ; 224
	i32 120, ; 225
	i32 14, ; 226
	i32 114, ; 227
	i32 78, ; 228
	i32 154, ; 229
	i32 73, ; 230
	i32 27, ; 231
	i32 53, ; 232
	i32 135, ; 233
	i32 68, ; 234
	i32 40, ; 235
	i32 149, ; 236
	i32 1, ; 237
	i32 15, ; 238
	i32 70, ; 239
	i32 170, ; 240
	i32 9, ; 241
	i32 100, ; 242
	i32 29, ; 243
	i32 30, ; 244
	i32 13, ; 245
	i32 45, ; 246
	i32 94, ; 247
	i32 108, ; 248
	i32 8, ; 249
	i32 11, ; 250
	i32 111, ; 251
	i32 84, ; 252
	i32 3, ; 253
	i32 77, ; 254
	i32 161, ; 255
	i32 154, ; 256
	i32 129, ; 257
	i32 131, ; 258
	i32 24, ; 259
	i32 5, ; 260
	i32 155, ; 261
	i32 149, ; 262
	i32 36, ; 263
	i32 43, ; 264
	i32 162, ; 265
	i32 16, ; 266
	i32 32, ; 267
	i32 64, ; 268
	i32 152, ; 269
	i32 81, ; 270
	i32 33, ; 271
	i32 0, ; 272
	i32 44, ; 273
	i32 135, ; 274
	i32 120, ; 275
	i32 132, ; 276
	i32 139, ; 277
	i32 17, ; 278
	i32 119, ; 279
	i32 124, ; 280
	i32 54, ; 281
	i32 69, ; 282
	i32 42, ; 283
	i32 80, ; 284
	i32 44, ; 285
	i32 38, ; 286
	i32 46, ; 287
	i32 111, ; 288
	i32 4, ; 289
	i32 134, ; 290
	i32 88, ; 291
	i32 166, ; 292
	i32 164, ; 293
	i32 4, ; 294
	i32 12, ; 295
	i32 5, ; 296
	i32 158, ; 297
	i32 128, ; 298
	i32 166, ; 299
	i32 132, ; 300
	i32 18, ; 301
	i32 51, ; 302
	i32 128, ; 303
	i32 63, ; 304
	i32 93, ; 305
	i32 112, ; 306
	i32 157, ; 307
	i32 25, ; 308
	i32 91, ; 309
	i32 105, ; 310
	i32 90, ; 311
	i32 108, ; 312
	i32 37, ; 313
	i32 32, ; 314
	i32 158, ; 315
	i32 57, ; 316
	i32 49, ; 317
	i32 141, ; 318
	i32 112, ; 319
	i32 136, ; 320
	i32 10, ; 321
	i32 25, ; 322
	i32 137, ; 323
	i32 8, ; 324
	i32 69, ; 325
	i32 20, ; 326
	i32 31, ; 327
	i32 89, ; 328
	i32 87, ; 329
	i32 146, ; 330
	i32 148, ; 331
	i32 56, ; 332
	i32 161, ; 333
	i32 19, ; 334
	i32 35, ; 335
	i32 90, ; 336
	i32 118, ; 337
	i32 102, ; 338
	i32 160, ; 339
	i32 68, ; 340
	i32 104, ; 341
	i32 92, ; 342
	i32 14 ; 343
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
