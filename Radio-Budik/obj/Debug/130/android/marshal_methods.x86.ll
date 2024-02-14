; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [178 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 43
	i32 33939330, ; 1: Microsoft.Threading.Tasks => 0x205df82 => 7
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 61
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 11
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 52
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 86
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 52
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 30
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 53
	i32 185010651, ; 9: System.Net.Http.Primitives => 0xb0709db => 16
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 28
	i32 220171995, ; 11: System.Diagnostics.Debug => 0xd1f8edb => 83
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 40
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 84
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 69
	i32 280482487, ; 15: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 38
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 21
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 17
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 41
	i32 442521989, ; 19: Xamarin.Essentials => 0x1a605985 => 59
	i32 442565967, ; 20: System.Collections => 0x1a61054f => 70
	i32 450948140, ; 21: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 37
	i32 459347974, ; 22: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 75
	i32 465846621, ; 23: mscorlib => 0x1bc4415d => 10
	i32 469710990, ; 24: System.dll => 0x1bff388e => 13
	i32 476646585, ; 25: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 38
	i32 486930444, ; 26: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 47
	i32 498788369, ; 27: System.ObjectModel => 0x1dbae811 => 65
	i32 545304856, ; 28: System.Runtime.Extensions => 0x2080b118 => 79
	i32 627609679, ; 29: Xamarin.AndroidX.CustomView => 0x2568904f => 34
	i32 643868501, ; 30: System.Net => 0x2660a755 => 1
	i32 663517072, ; 31: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 57
	i32 666292255, ; 32: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 25
	i32 690569205, ; 33: System.Xml.Linq.dll => 0x29293ff5 => 74
	i32 809851609, ; 34: System.Drawing.Common.dll => 0x30455ad9 => 63
	i32 843511501, ; 35: Xamarin.AndroidX.Print => 0x3246f6cd => 49
	i32 877678880, ; 36: System.Globalization.dll => 0x34505120 => 69
	i32 928116545, ; 37: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 61
	i32 955402788, ; 38: Newtonsoft.Json => 0x38f24a24 => 11
	i32 967690846, ; 39: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 41
	i32 975874589, ; 40: System.Xml.XDocument => 0x3a2aaa1d => 73
	i32 987214855, ; 41: System.Diagnostics.Tools => 0x3ad7b407 => 3
	i32 992768348, ; 42: System.Collections.dll => 0x3b2c715c => 70
	i32 1012816738, ; 43: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 51
	i32 1035644815, ; 44: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 24
	i32 1044663988, ; 45: System.Linq.Expressions.dll => 0x3e444eb4 => 66
	i32 1052210849, ; 46: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 44
	i32 1098259244, ; 47: System => 0x41761b2c => 13
	i32 1175144683, ; 48: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 55
	i32 1204270330, ; 49: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 25
	i32 1245772053, ; 50: FireSharp.dll => 0x4a40f915 => 4
	i32 1267360935, ; 51: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 56
	i32 1293217323, ; 52: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 36
	i32 1324164729, ; 53: System.Linq => 0x4eed2679 => 81
	i32 1364015309, ; 54: System.IO => 0x514d38cd => 68
	i32 1365406463, ; 55: System.ServiceModel.Internals.dll => 0x516272ff => 77
	i32 1376866003, ; 56: Xamarin.AndroidX.SavedState => 0x52114ed3 => 51
	i32 1406073936, ; 57: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 31
	i32 1453312822, ; 58: System.Diagnostics.Tools.dll => 0x569fcb36 => 3
	i32 1457743152, ; 59: System.Runtime.Extensions.dll => 0x56e36530 => 79
	i32 1469204771, ; 60: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 23
	i32 1532633726, ; 61: Radio-Budik => 0x5b5a227e => 0
	i32 1543031311, ; 62: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 71
	i32 1550322496, ; 63: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1582372066, ; 64: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 35
	i32 1592978981, ; 65: System.Runtime.Serialization.dll => 0x5ef2ee25 => 76
	i32 1622152042, ; 66: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 46
	i32 1622358360, ; 67: System.Dynamic.Runtime => 0x60b33958 => 64
	i32 1636350590, ; 68: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 33
	i32 1639515021, ; 69: System.Net.Http.dll => 0x61b9038d => 14
	i32 1639986890, ; 70: System.Text.RegularExpressions => 0x61c036ca => 71
	i32 1657153582, ; 71: System.Runtime => 0x62c6282e => 19
	i32 1658251792, ; 72: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 60
	i32 1677501392, ; 73: System.Net.Primitives.dll => 0x63fca3d0 => 87
	i32 1701541528, ; 74: System.Diagnostics.Debug.dll => 0x656b7698 => 83
	i32 1703690872, ; 75: Microsoft.Threading.Tasks.Extensions.dll => 0x658c4278 => 8
	i32 1726116996, ; 76: System.Reflection.dll => 0x66e27484 => 78
	i32 1729485958, ; 77: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 29
	i32 1765942094, ; 78: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 79: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 53
	i32 1776026572, ; 80: System.Core.dll => 0x69dc03cc => 12
	i32 1788241197, ; 81: Xamarin.AndroidX.Fragment => 0x6a96652d => 37
	i32 1808609942, ; 82: Xamarin.AndroidX.Loader => 0x6bcd3296 => 46
	i32 1813201214, ; 83: Xamarin.Google.Android.Material => 0x6c13413e => 60
	i32 1824175904, ; 84: System.Text.Encoding.Extensions => 0x6cbab720 => 80
	i32 1858542181, ; 85: System.Linq.Expressions => 0x6ec71a65 => 66
	i32 1867746548, ; 86: Xamarin.Essentials.dll => 0x6f538cf4 => 59
	i32 1885316902, ; 87: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 26
	i32 1919157823, ; 88: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 48
	i32 1992724309, ; 89: FlexLayout.dll => 0x76c68f55 => 5
	i32 1999708768, ; 90: Radio-Budik.dll => 0x77312260 => 0
	i32 2004783961, ; 91: FireSharp => 0x777e9359 => 4
	i32 2019465201, ; 92: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 44
	i32 2055257422, ; 93: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 42
	i32 2079903147, ; 94: System.Runtime.dll => 0x7bf8cdab => 19
	i32 2090596640, ; 95: System.Numerics.Vectors => 0x7c9bf920 => 18
	i32 2097448633, ; 96: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 39
	i32 2193016926, ; 97: System.ObjectModel.dll => 0x82b6c85e => 65
	i32 2201231467, ; 98: System.Net.Http => 0x8334206b => 14
	i32 2217644978, ; 99: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 55
	i32 2244775296, ; 100: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 47
	i32 2256548716, ; 101: Xamarin.AndroidX.MultiDex => 0x8680336c => 48
	i32 2279755925, ; 102: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 50
	i32 2315684594, ; 103: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 22
	i32 2353062107, ; 104: System.Net.Primitives => 0x8c40e0db => 87
	i32 2368005991, ; 105: System.Xml.ReaderWriter.dll => 0x8d24e767 => 72
	i32 2454642406, ; 106: System.Text.Encoding.dll => 0x924edee6 => 67
	i32 2475788418, ; 107: Java.Interop.dll => 0x93918882 => 6
	i32 2505896520, ; 108: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 43
	i32 2562349572, ; 109: Microsoft.CSharp => 0x98ba5a04 => 84
	i32 2581819634, ; 110: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 56
	i32 2585220780, ; 111: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 80
	i32 2620871830, ; 112: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 33
	i32 2629600743, ; 113: System.Net.Http.Extensions.dll => 0x9cbc85e7 => 15
	i32 2664396074, ; 114: System.Xml.XDocument.dll => 0x9ecf752a => 73
	i32 2693849962, ; 115: System.IO.dll => 0xa090e36a => 68
	i32 2715334215, ; 116: System.Threading.Tasks.dll => 0xa1d8b647 => 62
	i32 2732626843, ; 117: Xamarin.AndroidX.Activity => 0xa2e0939b => 21
	i32 2737747696, ; 118: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 23
	i32 2778768386, ; 119: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 58
	i32 2810250172, ; 120: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 31
	i32 2819470561, ; 121: System.Xml.dll => 0xa80db4e1 => 20
	i32 2853208004, ; 122: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 58
	i32 2855708567, ; 123: Xamarin.AndroidX.Transition => 0xaa36a797 => 54
	i32 2887636118, ; 124: System.Net.dll => 0xac1dd496 => 1
	i32 2900621748, ; 125: System.Dynamic.Runtime.dll => 0xace3f9b4 => 64
	i32 2901442782, ; 126: System.Reflection => 0xacf080de => 78
	i32 2903344695, ; 127: System.ComponentModel.Composition => 0xad0d8637 => 88
	i32 2905242038, ; 128: mscorlib.dll => 0xad2a79b6 => 10
	i32 2919462931, ; 129: System.Numerics.Vectors.dll => 0xae037813 => 18
	i32 2978675010, ; 130: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 36
	i32 3024354802, ; 131: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 40
	i32 3075834255, ; 132: System.Threading.Tasks => 0xb755818f => 62
	i32 3111772706, ; 133: System.Runtime.Serialization => 0xb979e222 => 76
	i32 3202900353, ; 134: Microsoft.Threading.Tasks.Extensions => 0xbee86181 => 8
	i32 3211777861, ; 135: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 35
	i32 3220365878, ; 136: System.Threading => 0xbff2e236 => 82
	i32 3247949154, ; 137: Mono.Security => 0xc197c562 => 85
	i32 3258312781, ; 138: Xamarin.AndroidX.CardView => 0xc235e84d => 29
	i32 3267021929, ; 139: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 27
	i32 3299363146, ; 140: System.Text.Encoding => 0xc4a8494a => 67
	i32 3317135071, ; 141: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 34
	i32 3340431453, ; 142: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 26
	i32 3353484488, ; 143: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 39
	i32 3362522851, ; 144: Xamarin.AndroidX.Core => 0xc86c06e3 => 32
	i32 3366347497, ; 145: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 146: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 50
	i32 3404865022, ; 147: System.ServiceModel.Internals => 0xcaf21dfe => 77
	i32 3429136800, ; 148: System.Xml => 0xcc6479a0 => 20
	i32 3476120550, ; 149: Mono.Android => 0xcf3163e6 => 9
	i32 3501239056, ; 150: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 27
	i32 3509114376, ; 151: System.Xml.Linq => 0xd128d608 => 74
	i32 3522916314, ; 152: System.Net.Http.Extensions => 0xd1fb6fda => 15
	i32 3567349600, ; 153: System.ComponentModel.Composition.dll => 0xd4a16f60 => 88
	i32 3608519521, ; 154: System.Linq.dll => 0xd715a361 => 81
	i32 3627220390, ; 155: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 49
	i32 3641597786, ; 156: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 42
	i32 3672681054, ; 157: Mono.Android.dll => 0xdae8aa5e => 9
	i32 3682565725, ; 158: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 28
	i32 3689375977, ; 159: System.Drawing.Common => 0xdbe768e9 => 63
	i32 3718780102, ; 160: Xamarin.AndroidX.Annotation => 0xdda814c6 => 22
	i32 3786282454, ; 161: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 30
	i32 3798658073, ; 162: System.Net.Http.Primitives.dll => 0xe26aec19 => 16
	i32 3829621856, ; 163: System.Numerics.dll => 0xe4436460 => 17
	i32 3849253459, ; 164: System.Runtime.InteropServices.dll => 0xe56ef253 => 86
	i32 3885922214, ; 165: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 54
	i32 3896760992, ; 166: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 32
	i32 3903996561, ; 167: FlexLayout => 0xe8b24291 => 5
	i32 3921031405, ; 168: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 57
	i32 3928044579, ; 169: System.Xml.ReaderWriter => 0xea213423 => 72
	i32 3955647286, ; 170: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 24
	i32 4073602200, ; 171: System.Threading.dll => 0xf2ce3c98 => 82
	i32 4105002889, ; 172: Mono.Security.dll => 0xf4ad5f89 => 85
	i32 4136602218, ; 173: Microsoft.Threading.Tasks.dll => 0xf68f8a6a => 7
	i32 4151237749, ; 174: System.Core => 0xf76edc75 => 12
	i32 4181436372, ; 175: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 75
	i32 4182413190, ; 176: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 45
	i32 4292120959 ; 177: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 45
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [178 x i32] [
	i32 43, i32 7, i32 61, i32 11, i32 52, i32 86, i32 52, i32 30, ; 0..7
	i32 53, i32 16, i32 28, i32 83, i32 40, i32 84, i32 69, i32 38, ; 8..15
	i32 21, i32 17, i32 41, i32 59, i32 70, i32 37, i32 75, i32 10, ; 16..23
	i32 13, i32 38, i32 47, i32 65, i32 79, i32 34, i32 1, i32 57, ; 24..31
	i32 25, i32 74, i32 63, i32 49, i32 69, i32 61, i32 11, i32 41, ; 32..39
	i32 73, i32 3, i32 70, i32 51, i32 24, i32 66, i32 44, i32 13, ; 40..47
	i32 55, i32 25, i32 4, i32 56, i32 36, i32 81, i32 68, i32 77, ; 48..55
	i32 51, i32 31, i32 3, i32 79, i32 23, i32 0, i32 71, i32 2, ; 56..63
	i32 35, i32 76, i32 46, i32 64, i32 33, i32 14, i32 71, i32 19, ; 64..71
	i32 60, i32 87, i32 83, i32 8, i32 78, i32 29, i32 2, i32 53, ; 72..79
	i32 12, i32 37, i32 46, i32 60, i32 80, i32 66, i32 59, i32 26, ; 80..87
	i32 48, i32 5, i32 0, i32 4, i32 44, i32 42, i32 19, i32 18, ; 88..95
	i32 39, i32 65, i32 14, i32 55, i32 47, i32 48, i32 50, i32 22, ; 96..103
	i32 87, i32 72, i32 67, i32 6, i32 43, i32 84, i32 56, i32 80, ; 104..111
	i32 33, i32 15, i32 73, i32 68, i32 62, i32 21, i32 23, i32 58, ; 112..119
	i32 31, i32 20, i32 58, i32 54, i32 1, i32 64, i32 78, i32 88, ; 120..127
	i32 10, i32 18, i32 36, i32 40, i32 62, i32 76, i32 8, i32 35, ; 128..135
	i32 82, i32 85, i32 29, i32 27, i32 67, i32 34, i32 26, i32 39, ; 136..143
	i32 32, i32 6, i32 50, i32 77, i32 20, i32 9, i32 27, i32 74, ; 144..151
	i32 15, i32 88, i32 81, i32 49, i32 42, i32 9, i32 28, i32 63, ; 152..159
	i32 22, i32 30, i32 16, i32 17, i32 86, i32 54, i32 32, i32 5, ; 160..167
	i32 57, i32 72, i32 24, i32 82, i32 85, i32 7, i32 12, i32 75, ; 168..175
	i32 45, i32 45 ; 176..177
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
