; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [178 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 9
	i64 196720943101637631, ; 1: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 66
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 30
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 51
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 52
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 43
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 63
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 39
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 36
	i64 985332033409892329, ; 9: System.Net.Http.Primitives => 0xdac9a438d35bfe9 => 16
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 85
	i64 1052630936838191544, ; 11: FlexLayout.dll => 0xe9bb2428dd3b9b8 => 5
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 60
	i64 1315114680217950157, ; 13: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 25
	i64 1425944114962822056, ; 14: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 76
	i64 1476839205573959279, ; 15: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 87
	i64 1624659445732251991, ; 16: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 23
	i64 1628611045998245443, ; 17: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 45
	i64 1636321030536304333, ; 18: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 40
	i64 1682513316613008342, ; 19: System.Net.dll => 0x17597cf276952bd6 => 1
	i64 1696201532211667577, ; 20: Microsoft.Threading.Tasks.Extensions.dll => 0x178a1e4e82f32279 => 8
	i64 1731380447121279447, ; 21: Newtonsoft.Json => 0x18071957e9b889d7 => 11
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 24
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 51
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 22
	i64 1981742497975770890, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 44
	i64 2133195048986300728, ; 26: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 11
	i64 2136356949452311481, ; 27: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 48
	i64 2165725771938924357, ; 28: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 28
	i64 2262844636196693701, ; 29: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 36
	i64 2329709569556905518, ; 30: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 42
	i64 2470498323731680442, ; 31: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 31
	i64 2479423007379663237, ; 32: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 55
	i64 2497223385847772520, ; 33: System.Runtime => 0x22a7eb7046413568 => 19
	i64 2547086958574651984, ; 34: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 21
	i64 2592350477072141967, ; 35: System.Xml.dll => 0x23f9e10627330e8f => 20
	i64 2624866290265602282, ; 36: mscorlib.dll => 0x246d65fbde2db8ea => 10
	i64 3017704767998173186, ; 37: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 60
	i64 3289520064315143713, ; 38: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 41
	i64 3311221304742556517, ; 39: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 18
	i64 3522470458906976663, ; 40: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 53
	i64 3531994851595924923, ; 41: System.Numerics => 0x31042a9aade235bb => 17
	i64 3571415421602489686, ; 42: System.Runtime.dll => 0x319037675df7e556 => 19
	i64 3647754201059316852, ; 43: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 72
	i64 3727469159507183293, ; 44: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 50
	i64 3869649043256705283, ; 45: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 3
	i64 4009997192427317104, ; 46: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 75
	i64 4187479170553454871, ; 47: System.Linq.Expressions => 0x3a1cea1e912fa117 => 66
	i64 4389024575735330464, ; 48: FireSharp.dll => 0x3ce8f298fb29f6a0 => 4
	i64 4525561845656915374, ; 49: System.ServiceModel.Internals => 0x3ece06856b710dae => 77
	i64 4636684751163556186, ; 50: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 57
	i64 4782108999019072045, ; 51: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 27
	i64 4794310189461587505, ; 52: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 21
	i64 4795410492532947900, ; 53: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 53
	i64 5203618020066742981, ; 54: Xamarin.Essentials => 0x4836f704f0e652c5 => 59
	i64 5205316157927637098, ; 55: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 47
	i64 5376510917114486089, ; 56: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 55
	i64 5408338804355907810, ; 57: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 54
	i64 5446034149219586269, ; 58: System.Diagnostics.Debug => 0x4b94333452e150dd => 83
	i64 5507995362134886206, ; 59: System.Core.dll => 0x4c705499688c873e => 12
	i64 6319713645133255417, ; 60: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 43
	i64 6401687960814735282, ; 61: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 42
	i64 6504860066809920875, ; 62: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 28
	i64 6548213210057960872, ; 63: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 34
	i64 6659513131007730089, ; 64: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 39
	i64 6814185388980153342, ; 65: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 73
	i64 6876862101832370452, ; 66: System.Xml.Linq => 0x5f6f85a57d108914 => 74
	i64 6894844156784520562, ; 67: System.Numerics.Vectors => 0x5faf683aead1ad72 => 18
	i64 7103753931438454322, ; 68: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 38
	i64 7270811800166795866, ; 69: System.Linq => 0x64e71ccf51a90a5a => 81
	i64 7338192458477945005, ; 70: System.Reflection => 0x65d67f295d0740ad => 78
	i64 7488575175965059935, ; 71: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 74
	i64 7489048572193775167, ; 72: System.ObjectModel => 0x67ee71ff6b419e3f => 65
	i64 7637365915383206639, ; 73: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 59
	i64 7654504624184590948, ; 74: System.Net.Http => 0x6a3a4366801b8264 => 14
	i64 7735176074855944702, ; 75: Microsoft.CSharp => 0x6b58dda848e391fe => 84
	i64 7836164640616011524, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 23
	i64 8044118961405839122, ; 77: System.ComponentModel.Composition => 0x6fa2739369944712 => 88
	i64 8064050204834738623, ; 78: System.Collections.dll => 0x6fe942efa61731bf => 70
	i64 8083354569033831015, ; 79: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 41
	i64 8113615946733131500, ; 80: System.Reflection.Extensions => 0x70995ab73cf916ec => 2
	i64 8167236081217502503, ; 81: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 6
	i64 8185542183669246576, ; 82: System.Collections => 0x7198e33f4794aa70 => 70
	i64 8290740647658429042, ; 83: System.Runtime.Extensions => 0x730ea0b15c929a72 => 79
	i64 8601935802264776013, ; 84: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 54
	i64 8626175481042262068, ; 85: Java.Interop => 0x77b654e585b55834 => 6
	i64 8638972117149407195, ; 86: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 84
	i64 8824813069581120075, ; 87: Microsoft.Threading.Tasks => 0x7a7808bb1d9b724b => 7
	i64 8941376889969657626, ; 88: System.Xml.XDocument => 0x7c1626e87187471a => 73
	i64 9094004549068921173, ; 89: System.Net.Http.Extensions => 0x7e3464f48d0a1955 => 15
	i64 9206864077566324818, ; 90: Microsoft.Threading.Tasks.dll => 0x7fc55a1936a53052 => 7
	i64 9324707631942237306, ; 91: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 24
	i64 9584643793929893533, ; 92: System.IO.dll => 0x85037ebfbbd7f69d => 68
	i64 9659729154652888475, ; 93: System.Text.RegularExpressions => 0x860e407c9991dd9b => 71
	i64 9662334977499516867, ; 94: System.Numerics.dll => 0x8617827802b0cfc3 => 17
	i64 9678050649315576968, ; 95: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 31
	i64 9808709177481450983, ; 96: Mono.Android.dll => 0x881f890734e555e7 => 9
	i64 9998632235833408227, ; 97: Mono.Security => 0x8ac2470b209ebae3 => 85
	i64 10038780035334861115, ; 98: System.Net.Http.dll => 0x8b50e941206af13b => 14
	i64 10229024438826829339, ; 99: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 34
	i64 10360651442923773544, ; 100: System.Text.Encoding => 0x8fc86d98211c1e68 => 67
	i64 10430153318873392755, ; 101: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 32
	i64 10566960649245365243, ; 102: System.Globalization.dll => 0x92a562b96dcd13fb => 69
	i64 10714184849103829812, ; 103: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 79
	i64 10785150219063592792, ; 104: System.Net.Primitives => 0x95ac8cfb68830758 => 87
	i64 10847732767863316357, ; 105: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 25
	i64 11023048688141570732, ; 106: System.Core => 0x98f9bc61168392ac => 12
	i64 11037814507248023548, ; 107: System.Xml => 0x992e31d0412bf7fc => 20
	i64 11162124722117608902, ; 108: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 58
	i64 11340910727871153756, ; 109: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 33
	i64 11392833485892708388, ; 110: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 49
	i64 11485890710487134646, ; 111: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 86
	i64 11529969570048099689, ; 112: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 58
	i64 11580057168383206117, ; 113: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 22
	i64 11672361001936329215, ; 114: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 38
	i64 11743665907891708234, ; 115: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 62
	i64 11991047634523762324, ; 116: System.Net => 0xa668c24ad493ae94 => 1
	i64 12087861172850277412, ; 117: Radio-Budik => 0xa7c0b5b145fa3c24 => 0
	i64 12123043025855404482, ; 118: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 2
	i64 12137774235383566651, ; 119: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 56
	i64 12201331334810686224, ; 120: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 75
	i64 12451044538927396471, ; 121: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 37
	i64 12466513435562512481, ; 122: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 46
	i64 12487638416075308985, ; 123: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 35
	i64 12538491095302438457, ; 124: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 29
	i64 12700543734426720211, ; 125: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 30
	i64 12708238894395270091, ; 126: System.IO => 0xb05cbbf17d3ba3cb => 68
	i64 12708922737231849740, ; 127: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 80
	i64 12963446364377008305, ; 128: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 63
	i64 13370592475155966277, ; 129: System.Runtime.Serialization => 0xb98de304062ea945 => 76
	i64 13401370062847626945, ; 130: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 56
	i64 13454009404024712428, ; 131: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 61
	i64 13491513212026656886, ; 132: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 26
	i64 13572454107664307259, ; 133: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 50
	i64 13702626353344114072, ; 134: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 3
	i64 13713329104121190199, ; 135: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 64
	i64 13959074834287824816, ; 136: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 37
	i64 14124974489674258913, ; 137: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 29
	i64 14125464355221830302, ; 138: System.Threading.dll => 0xc407bafdbc707a9e => 82
	i64 14172845254133543601, ; 139: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 48
	i64 14254574811015963973, ; 140: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 80
	i64 14261073672896646636, ; 141: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 49
	i64 14327695147300244862, ; 142: System.Reflection.dll => 0xc6d632d338eb4d7e => 78
	i64 14644440854989303794, ; 143: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 47
	i64 14792063746108907174, ; 144: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 61
	i64 14852515768018889994, ; 145: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 33
	i64 14988210264188246988, ; 146: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 35
	i64 15037088180954523232, ; 147: System.Net.Http.Extensions.dll => 0xd0ae7807da04e660 => 15
	i64 15076659072870671916, ; 148: System.ObjectModel.dll => 0xd13b0d8c1620662c => 65
	i64 15133318570858120619, ; 149: System.Net.Http.Primitives.dll => 0xd204590f78d205ab => 16
	i64 15133485256822086103, ; 150: System.Linq.dll => 0xd204f0a9127dd9d7 => 81
	i64 15225433546214899323, ; 151: Radio-Budik.dll => 0xd34b9b2479747e7b => 0
	i64 15234786388537674379, ; 152: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 64
	i64 15370334346939861994, ; 153: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 32
	i64 15526743539506359484, ; 154: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 67
	i64 15559045586289472399, ; 155: Microsoft.Threading.Tasks.Extensions => 0xd7ecd5867ee4b38f => 8
	i64 15582737692548360875, ; 156: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 45
	i64 15609085926864131306, ; 157: System.dll => 0xd89e9cf3334914ea => 13
	i64 15628143266694465603, ; 158: FlexLayout => 0xd8e2517fe63c8843 => 5
	i64 15661133872274321916, ; 159: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 72
	i64 15777549416145007739, ; 160: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 52
	i64 15817206913877585035, ; 161: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 62
	i64 16154507427712707110, ; 162: System => 0xe03056ea4e39aa26 => 13
	i64 16565028646146589191, ; 163: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 88
	i64 16833383113903931215, ; 164: mscorlib => 0xe99c30c1484d7f4f => 10
	i64 16890310621557459193, ; 165: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 71
	i64 17037200463775726619, ; 166: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 40
	i64 17544493274320527064, ; 167: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 27
	i64 17627500474728259406, ; 168: System.Globalization => 0xf4a176498a351f4e => 69
	i64 17685921127322830888, ; 169: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 83
	i64 17704177640604968747, ; 170: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 46
	i64 17710060891934109755, ; 171: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 44
	i64 17712670374920797664, ; 172: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 86
	i64 18025913125965088385, ; 173: System.Threading => 0xfa28e87b91334681 => 82
	i64 18116111925905154859, ; 174: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 26
	i64 18129453464017766560, ; 175: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 77
	i64 18380184030268848184, ; 176: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 57
	i64 18442939251584021150 ; 177: FireSharp => 0xfff27b88d0c6329e => 4
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [178 x i32] [
	i32 9, i32 66, i32 30, i32 51, i32 52, i32 43, i32 63, i32 39, ; 0..7
	i32 36, i32 16, i32 85, i32 5, i32 60, i32 25, i32 76, i32 87, ; 8..15
	i32 23, i32 45, i32 40, i32 1, i32 8, i32 11, i32 24, i32 51, ; 16..23
	i32 22, i32 44, i32 11, i32 48, i32 28, i32 36, i32 42, i32 31, ; 24..31
	i32 55, i32 19, i32 21, i32 20, i32 10, i32 60, i32 41, i32 18, ; 32..39
	i32 53, i32 17, i32 19, i32 72, i32 50, i32 3, i32 75, i32 66, ; 40..47
	i32 4, i32 77, i32 57, i32 27, i32 21, i32 53, i32 59, i32 47, ; 48..55
	i32 55, i32 54, i32 83, i32 12, i32 43, i32 42, i32 28, i32 34, ; 56..63
	i32 39, i32 73, i32 74, i32 18, i32 38, i32 81, i32 78, i32 74, ; 64..71
	i32 65, i32 59, i32 14, i32 84, i32 23, i32 88, i32 70, i32 41, ; 72..79
	i32 2, i32 6, i32 70, i32 79, i32 54, i32 6, i32 84, i32 7, ; 80..87
	i32 73, i32 15, i32 7, i32 24, i32 68, i32 71, i32 17, i32 31, ; 88..95
	i32 9, i32 85, i32 14, i32 34, i32 67, i32 32, i32 69, i32 79, ; 96..103
	i32 87, i32 25, i32 12, i32 20, i32 58, i32 33, i32 49, i32 86, ; 104..111
	i32 58, i32 22, i32 38, i32 62, i32 1, i32 0, i32 2, i32 56, ; 112..119
	i32 75, i32 37, i32 46, i32 35, i32 29, i32 30, i32 68, i32 80, ; 120..127
	i32 63, i32 76, i32 56, i32 61, i32 26, i32 50, i32 3, i32 64, ; 128..135
	i32 37, i32 29, i32 82, i32 48, i32 80, i32 49, i32 78, i32 47, ; 136..143
	i32 61, i32 33, i32 35, i32 15, i32 65, i32 16, i32 81, i32 0, ; 144..151
	i32 64, i32 32, i32 67, i32 8, i32 45, i32 13, i32 5, i32 72, ; 152..159
	i32 52, i32 62, i32 13, i32 88, i32 10, i32 71, i32 40, i32 27, ; 160..167
	i32 69, i32 83, i32 46, i32 44, i32 86, i32 82, i32 26, i32 77, ; 168..175
	i32 57, i32 4 ; 176..177
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
