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

@assembly_image_cache = dso_local local_unnamed_addr global [123 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [246 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 114
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 109
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 56
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 75
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 93
	i32 280992041, ; 9: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 10: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 11: Xamarin.AndroidX.Activity.dll => 0x13031348 => 51
	i32 336156722, ; 12: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 13: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 63
	i32 356389973, ; 14: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 15: System.Threading.Thread.dll => 0x16a510e1 => 114
	i32 385762202, ; 16: System.Memory.dll => 0x16fe439a => 101
	i32 395744057, ; 17: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 419244643, ; 18: Plugin.FirebaseAuth.dll => 0x18fd2a63 => 50
	i32 435591531, ; 19: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 90
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 62
	i32 465846621, ; 22: mscorlib => 0x1bc4415d => 118
	i32 469710990, ; 23: System.dll => 0x1bff388e => 117
	i32 498788369, ; 24: System.ObjectModel => 0x1dbae811 => 106
	i32 500358224, ; 25: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 26: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 27: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 539058512, ; 28: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 592146354, ; 29: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 608859720, ; 30: Aplikacja Treningowa => 0x244a7648 => 87
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 60
	i32 627931235, ; 32: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 33: System.Collections.Concurrent => 0x2814a96c => 88
	i32 688181140, ; 34: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 35: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 36: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 37: System.Runtime.Loader.dll => 0x2b15ed29 => 110
	i32 759454413, ; 38: System.Net.Requests => 0x2d445acd => 104
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 98
	i32 777317022, ; 40: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 42: System.Private.Uri.dll => 0x311247b5 => 107
	i32 830298997, ; 43: System.IO.Compression.Brotli => 0x317d5b75 => 97
	i32 904024072, ; 44: System.ComponentModel.Primitives.dll => 0x35e25008 => 91
	i32 912572698, ; 45: Xamarin.AndroidX.Biometric => 0x3664c11a => 54
	i32 926902833, ; 46: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 957807352, ; 47: Plugin.CurrentActivity => 0x3916faf8 => 48
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 63
	i32 992768348, ; 49: System.Collections.dll => 0x3b2c715c => 90
	i32 1012816738, ; 50: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 73
	i32 1028951442, ; 51: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1029334545, ; 52: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 52
	i32 1044663988, ; 54: System.Linq.Expressions.dll => 0x3e444eb4 => 99
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 65
	i32 1082857460, ; 56: System.ComponentModel.TypeConverter => 0x408b17f4 => 92
	i32 1084122840, ; 57: Xamarin.Kotlin.StdLib => 0x409e66d8 => 85
	i32 1098259244, ; 58: System => 0x41761b2c => 117
	i32 1110581358, ; 59: Xamarin.Firebase.Auth => 0x4232206e => 78
	i32 1118262833, ; 60: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 61: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 62: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 70
	i32 1203215381, ; 63: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 64: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 65: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 66: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 61
	i32 1324164729, ; 67: System.Linq => 0x4eed2679 => 100
	i32 1333047053, ; 68: Xamarin.Firebase.Common => 0x4f74af0d => 80
	i32 1373134921, ; 69: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 70: Xamarin.AndroidX.SavedState => 0x52114ed3 => 73
	i32 1406073936, ; 71: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 57
	i32 1411702249, ; 72: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 79
	i32 1430672901, ; 73: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 74: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 75: System.IO.Compression.dll => 0x57261233 => 98
	i32 1469204771, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 53
	i32 1470490898, ; 77: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 78: System.IO.Compression.Brotli.dll => 0x583e844f => 97
	i32 1493001747, ; 79: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 80: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 81: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 113
	i32 1551623176, ; 82: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 83: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 67
	i32 1624863272, ; 84: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 77
	i32 1636350590, ; 85: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 59
	i32 1639515021, ; 86: System.Net.Http.dll => 0x61b9038d => 102
	i32 1639986890, ; 87: System.Text.RegularExpressions => 0x61c036ca => 113
	i32 1657153582, ; 88: System.Runtime => 0x62c6282e => 111
	i32 1658251792, ; 89: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 82
	i32 1677501392, ; 90: System.Net.Primitives.dll => 0x63fca3d0 => 103
	i32 1679769178, ; 91: System.Security.Cryptography => 0x641f3e5a => 112
	i32 1729485958, ; 92: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 55
	i32 1736233607, ; 93: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 94: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 75
	i32 1770582343, ; 96: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1776026572, ; 97: System.Core.dll => 0x69dc03cc => 95
	i32 1780572499, ; 98: Mono.Android.Runtime.dll => 0x6a216153 => 121
	i32 1782862114, ; 99: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 100: Xamarin.AndroidX.Fragment => 0x6a96652d => 62
	i32 1793755602, ; 101: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 102: Xamarin.AndroidX.Loader => 0x6bcd3296 => 67
	i32 1813058853, ; 103: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 85
	i32 1813201214, ; 104: Xamarin.Google.Android.Material => 0x6c13413e => 82
	i32 1818569960, ; 105: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 71
	i32 1828688058, ; 106: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1842015223, ; 107: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 108: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 109: System.Linq.Expressions => 0x6ec71a65 => 99
	i32 1875053220, ; 110: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 79
	i32 1875935024, ; 111: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1908813208, ; 112: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 83
	i32 1910275211, ; 113: System.Collections.NonGeneric.dll => 0x71dc7c8b => 89
	i32 1961813231, ; 114: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 74
	i32 1968388702, ; 115: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 116: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 117: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 65
	i32 2025202353, ; 118: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 119: System.Private.Xml => 0x79eb68ee => 108
	i32 2055257422, ; 120: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 64
	i32 2066184531, ; 121: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 122: System.Runtime.dll => 0x7bf8cdab => 111
	i32 2090596640, ; 123: System.Numerics.Vectors => 0x7c9bf920 => 105
	i32 2127167465, ; 124: System.Console => 0x7ec9ffe9 => 94
	i32 2159891885, ; 125: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 126: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 127: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 128: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 129: System.ObjectModel.dll => 0x82b6c85e => 106
	i32 2201107256, ; 130: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 86
	i32 2201231467, ; 131: System.Net.Http => 0x8334206b => 102
	i32 2207618523, ; 132: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 133: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2270573516, ; 134: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 135: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 72
	i32 2303942373, ; 136: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 137: System.Private.CoreLib.dll => 0x896b7878 => 119
	i32 2353062107, ; 138: System.Net.Primitives => 0x8c40e0db => 103
	i32 2368005991, ; 139: System.Xml.ReaderWriter.dll => 0x8d24e767 => 116
	i32 2371007202, ; 140: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2382033717, ; 141: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 78
	i32 2395872292, ; 142: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 143: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2428790861, ; 144: Plugin.Fingerprint => 0x90c4684d => 49
	i32 2435356389, ; 145: System.Console.dll => 0x912896e5 => 94
	i32 2458236876, ; 146: Aplikacja Treningowa.dll => 0x9285b7cc => 87
	i32 2475788418, ; 147: Java.Interop.dll => 0x93918882 => 120
	i32 2480646305, ; 148: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2483946094, ; 149: Plugin.Fingerprint.dll => 0x940e026e => 49
	i32 2526443681, ; 150: Xamarin.AndroidX.Biometric.dll => 0x969678a1 => 54
	i32 2550873716, ; 151: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2593496499, ; 152: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 153: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 86
	i32 2617129537, ; 154: System.Private.Xml.dll => 0x9bfe3a41 => 108
	i32 2620871830, ; 155: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 59
	i32 2626831493, ; 156: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 157: System.Runtime.Loader => 0x9ec4cf01 => 110
	i32 2732626843, ; 158: Xamarin.AndroidX.Activity => 0xa2e0939b => 51
	i32 2737747696, ; 159: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 53
	i32 2752995522, ; 160: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 161: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 162: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 163: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 76
	i32 2785988530, ; 164: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 165: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2804607052, ; 166: Xamarin.Firebase.Components.dll => 0xa72ae84c => 81
	i32 2806116107, ; 167: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2806986428, ; 168: Plugin.CurrentActivity.dll => 0xa74f36bc => 48
	i32 2810250172, ; 169: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 57
	i32 2831556043, ; 170: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 171: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 76
	i32 2861189240, ; 172: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2905242038, ; 173: mscorlib.dll => 0xad2a79b6 => 118
	i32 2909740682, ; 174: System.Private.CoreLib => 0xad6f1e8a => 119
	i32 2916838712, ; 175: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 77
	i32 2919462931, ; 176: System.Numerics.Vectors.dll => 0xae037813 => 105
	i32 2959614098, ; 177: System.ComponentModel.dll => 0xb0682092 => 93
	i32 2978675010, ; 178: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 61
	i32 2987532451, ; 179: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 74
	i32 3038032645, ; 180: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 181: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 68
	i32 3058099980, ; 182: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 84
	i32 3059408633, ; 183: Mono.Android.Runtime => 0xb65adef9 => 121
	i32 3059793426, ; 184: System.ComponentModel.Primitives => 0xb660be12 => 91
	i32 3071899978, ; 185: Xamarin.Firebase.Common.dll => 0xb719794a => 80
	i32 3077302341, ; 186: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 187: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 69
	i32 3220365878, ; 188: System.Threading => 0xbff2e236 => 115
	i32 3230466174, ; 189: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 83
	i32 3258312781, ; 190: Xamarin.AndroidX.CardView => 0xc235e84d => 55
	i32 3305363605, ; 191: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 192: System.Net.Requests.dll => 0xc5b097e4 => 104
	i32 3317135071, ; 193: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 60
	i32 3346324047, ; 194: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 70
	i32 3357674450, ; 195: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 196: Xamarin.AndroidX.Core => 0xc86c06e3 => 58
	i32 3366347497, ; 197: Java.Interop => 0xc8a662e9 => 120
	i32 3374999561, ; 198: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 72
	i32 3381016424, ; 199: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 200: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3463511458, ; 201: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 202: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 92
	i32 3476120550, ; 203: Mono.Android => 0xcf3163e6 => 122
	i32 3479583265, ; 204: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 205: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 206: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 207: System.Linq.dll => 0xd715a361 => 100
	i32 3641597786, ; 208: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 64
	i32 3643446276, ; 209: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 210: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 69
	i32 3657292374, ; 211: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 212: Mono.Android.dll => 0xdae8aa5e => 122
	i32 3697841164, ; 213: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 214: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 68
	i32 3748608112, ; 215: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 96
	i32 3786282454, ; 216: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 56
	i32 3792276235, ; 217: System.Collections.NonGeneric => 0xe2098b0b => 89
	i32 3823082795, ; 218: System.Security.Cryptography.dll => 0xe3df9d2b => 112
	i32 3841636137, ; 219: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 220: System.Runtime.InteropServices.dll => 0xe56ef253 => 109
	i32 3889960447, ; 221: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 222: System.Collections.Concurrent.dll => 0xe839deed => 88
	i32 3896760992, ; 223: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 58
	i32 3928044579, ; 224: System.Xml.ReaderWriter => 0xea213423 => 116
	i32 3931092270, ; 225: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 71
	i32 3955647286, ; 226: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 52
	i32 3970018735, ; 227: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 84
	i32 3980434154, ; 228: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 229: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 230: System.Memory => 0xeff49a63 => 101
	i32 4046471985, ; 231: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4073602200, ; 232: System.Threading.dll => 0xf2ce3c98 => 115
	i32 4094352644, ; 233: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4100113165, ; 234: System.Private.Uri => 0xf462c30d => 107
	i32 4102112229, ; 235: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 236: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 237: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 238: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4151237749, ; 239: System.Core => 0xf76edc75 => 95
	i32 4182413190, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 66
	i32 4200179444, ; 241: Plugin.FirebaseAuth => 0xfa59a6f4 => 50
	i32 4213026141, ; 242: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 96
	i32 4271975918, ; 243: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4284549794, ; 244: Xamarin.Firebase.Components => 0xff610aa2 => 81
	i32 4292120959 ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 66
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [246 x i32] [
	i32 114, ; 0
	i32 33, ; 1
	i32 47, ; 2
	i32 109, ; 3
	i32 56, ; 4
	i32 75, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 93, ; 8
	i32 2, ; 9
	i32 30, ; 10
	i32 51, ; 11
	i32 15, ; 12
	i32 63, ; 13
	i32 14, ; 14
	i32 114, ; 15
	i32 101, ; 16
	i32 34, ; 17
	i32 50, ; 18
	i32 26, ; 19
	i32 90, ; 20
	i32 62, ; 21
	i32 118, ; 22
	i32 117, ; 23
	i32 106, ; 24
	i32 13, ; 25
	i32 7, ; 26
	i32 42, ; 27
	i32 39, ; 28
	i32 21, ; 29
	i32 87, ; 30
	i32 60, ; 31
	i32 19, ; 32
	i32 88, ; 33
	i32 1, ; 34
	i32 16, ; 35
	i32 4, ; 36
	i32 110, ; 37
	i32 104, ; 38
	i32 98, ; 39
	i32 25, ; 40
	i32 41, ; 41
	i32 107, ; 42
	i32 97, ; 43
	i32 91, ; 44
	i32 54, ; 45
	i32 28, ; 46
	i32 48, ; 47
	i32 63, ; 48
	i32 90, ; 49
	i32 73, ; 50
	i32 38, ; 51
	i32 3, ; 52
	i32 52, ; 53
	i32 99, ; 54
	i32 65, ; 55
	i32 92, ; 56
	i32 85, ; 57
	i32 117, ; 58
	i32 78, ; 59
	i32 16, ; 60
	i32 22, ; 61
	i32 70, ; 62
	i32 20, ; 63
	i32 18, ; 64
	i32 2, ; 65
	i32 61, ; 66
	i32 100, ; 67
	i32 80, ; 68
	i32 32, ; 69
	i32 73, ; 70
	i32 57, ; 71
	i32 79, ; 72
	i32 0, ; 73
	i32 6, ; 74
	i32 98, ; 75
	i32 53, ; 76
	i32 42, ; 77
	i32 97, ; 78
	i32 10, ; 79
	i32 5, ; 80
	i32 113, ; 81
	i32 25, ; 82
	i32 67, ; 83
	i32 77, ; 84
	i32 59, ; 85
	i32 102, ; 86
	i32 113, ; 87
	i32 111, ; 88
	i32 82, ; 89
	i32 103, ; 90
	i32 112, ; 91
	i32 55, ; 92
	i32 23, ; 93
	i32 1, ; 94
	i32 75, ; 95
	i32 39, ; 96
	i32 95, ; 97
	i32 121, ; 98
	i32 17, ; 99
	i32 62, ; 100
	i32 9, ; 101
	i32 67, ; 102
	i32 85, ; 103
	i32 82, ; 104
	i32 71, ; 105
	i32 40, ; 106
	i32 29, ; 107
	i32 26, ; 108
	i32 99, ; 109
	i32 79, ; 110
	i32 8, ; 111
	i32 83, ; 112
	i32 89, ; 113
	i32 74, ; 114
	i32 35, ; 115
	i32 5, ; 116
	i32 65, ; 117
	i32 0, ; 118
	i32 108, ; 119
	i32 64, ; 120
	i32 4, ; 121
	i32 111, ; 122
	i32 105, ; 123
	i32 94, ; 124
	i32 45, ; 125
	i32 12, ; 126
	i32 41, ; 127
	i32 40, ; 128
	i32 106, ; 129
	i32 86, ; 130
	i32 102, ; 131
	i32 14, ; 132
	i32 36, ; 133
	i32 8, ; 134
	i32 72, ; 135
	i32 18, ; 136
	i32 119, ; 137
	i32 103, ; 138
	i32 116, ; 139
	i32 35, ; 140
	i32 78, ; 141
	i32 13, ; 142
	i32 10, ; 143
	i32 49, ; 144
	i32 94, ; 145
	i32 87, ; 146
	i32 120, ; 147
	i32 43, ; 148
	i32 49, ; 149
	i32 54, ; 150
	i32 11, ; 151
	i32 20, ; 152
	i32 86, ; 153
	i32 108, ; 154
	i32 59, ; 155
	i32 15, ; 156
	i32 110, ; 157
	i32 51, ; 158
	i32 53, ; 159
	i32 21, ; 160
	i32 44, ; 161
	i32 45, ; 162
	i32 76, ; 163
	i32 27, ; 164
	i32 47, ; 165
	i32 81, ; 166
	i32 6, ; 167
	i32 48, ; 168
	i32 57, ; 169
	i32 19, ; 170
	i32 76, ; 171
	i32 46, ; 172
	i32 118, ; 173
	i32 119, ; 174
	i32 77, ; 175
	i32 105, ; 176
	i32 93, ; 177
	i32 61, ; 178
	i32 74, ; 179
	i32 34, ; 180
	i32 68, ; 181
	i32 84, ; 182
	i32 121, ; 183
	i32 91, ; 184
	i32 80, ; 185
	i32 12, ; 186
	i32 69, ; 187
	i32 115, ; 188
	i32 83, ; 189
	i32 55, ; 190
	i32 7, ; 191
	i32 104, ; 192
	i32 60, ; 193
	i32 70, ; 194
	i32 24, ; 195
	i32 58, ; 196
	i32 120, ; 197
	i32 72, ; 198
	i32 3, ; 199
	i32 37, ; 200
	i32 11, ; 201
	i32 92, ; 202
	i32 122, ; 203
	i32 24, ; 204
	i32 23, ; 205
	i32 31, ; 206
	i32 100, ; 207
	i32 64, ; 208
	i32 28, ; 209
	i32 69, ; 210
	i32 36, ; 211
	i32 122, ; 212
	i32 33, ; 213
	i32 68, ; 214
	i32 96, ; 215
	i32 56, ; 216
	i32 89, ; 217
	i32 112, ; 218
	i32 38, ; 219
	i32 109, ; 220
	i32 32, ; 221
	i32 88, ; 222
	i32 58, ; 223
	i32 116, ; 224
	i32 71, ; 225
	i32 52, ; 226
	i32 84, ; 227
	i32 27, ; 228
	i32 9, ; 229
	i32 101, ; 230
	i32 44, ; 231
	i32 115, ; 232
	i32 46, ; 233
	i32 107, ; 234
	i32 22, ; 235
	i32 17, ; 236
	i32 37, ; 237
	i32 29, ; 238
	i32 95, ; 239
	i32 66, ; 240
	i32 50, ; 241
	i32 96, ; 242
	i32 43, ; 243
	i32 81, ; 244
	i32 66 ; 245
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
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
