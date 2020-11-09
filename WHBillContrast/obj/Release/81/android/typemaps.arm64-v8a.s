	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	9
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	320
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	82
/* java_name_width: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 9be55709-42a8-4d23-beb1-ac913cf23965 */
	.byte	0x09, 0x57, 0xe5, 0x9b, 0xa8, 0x42, 0x23, 0x4d, 0xbe, 0xb1, 0xac, 0x91, 0x3c, 0xf2, 0x39, 0x65
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.Core.Utils */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 2f138f11-2e6e-40d2-adfd-4c388d590f98 */
	.byte	0x11, 0x8f, 0x13, 0x2f, 0x6e, 0x2e, 0xd2, 0x40, 0xad, 0xfd, 0x4c, 0x38, 0x8d, 0x59, 0x0f, 0x98
	/* entry_count */
	.word	241
	/* duplicate_count */
	.word	39
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 9c2c211b-acb8-4884-a208-f9c6ddef7afe */
	.byte	0x1b, 0x21, 0x2c, 0x9c, 0xb8, 0xac, 0x84, 0x48, 0xa2, 0x08, 0xf9, 0xc6, 0xdd, 0xef, 0x7a, 0xfe
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 7b1f6d27-ecce-4a72-9e70-3c679103fd15 */
	.byte	0x27, 0x6d, 0x1f, 0x7b, 0xce, 0xec, 0x72, 0x4a, 0x9e, 0x70, 0x3c, 0x67, 0x91, 0x03, 0xfd, 0x15
	/* entry_count */
	.word	17
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 47646b5c-2820-42d5-a2d2-6bad6b0e8c61 */
	.byte	0x5c, 0x6b, 0x64, 0x47, 0x20, 0x28, 0xd5, 0x42, 0xa2, 0xd2, 0x6b, 0xad, 0x6b, 0x0e, 0x8c, 0x61
	/* entry_count */
	.word	30
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1f825777-11b6-416c-8ea9-aed3e8e53b08 */
	.byte	0x77, 0x57, 0x82, 0x1f, 0xb6, 0x11, 0x6c, 0x41, 0x8e, 0xa9, 0xae, 0xd3, 0xe8, 0xe5, 0x3b, 0x08
	/* entry_count */
	.word	11
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	module5_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: a4dd75a7-2c82-44ad-8bdb-a54b31441bb5 */
	.byte	0xa7, 0x75, 0xdd, 0xa4, 0x82, 0x2c, 0xad, 0x44, 0x8b, 0xdb, 0xa5, 0x4b, 0x31, 0x44, 0x1b, 0xb5
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: AndHUD */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 15f234ab-c237-4f03-88b8-7d128d831faf */
	.byte	0xab, 0x34, 0xf2, 0x15, 0x37, 0xc2, 0x03, 0x4f, 0x88, 0xb8, 0x7d, 0x12, 0x8d, 0x83, 0x1f, 0xaf
	/* entry_count */
	.word	7
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: WHBillContrast */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: bbadf2c9-5f02-404a-b6ec-8da53427dac7 */
	.byte	0xc9, 0xf2, 0xad, 0xbb, 0x02, 0x5f, 0x4a, 0x40, 0xb6, 0xec, 0x8d, 0xa5, 0x34, 0x27, 0xda, 0xc7
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.Core.UI */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 648
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	56

	/* #1 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554668
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	39

	/* #2 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554670
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	34

	/* #3 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554679
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	41

	/* #4 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554682
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	48

	/* #5 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554671
	/* java_name */
	.ascii	"android/animation/ValueAnimator"
	.zero	51

	/* #6 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554673
	/* java_name */
	.ascii	"android/animation/ValueAnimator$AnimatorUpdateListener"
	.zero	28

	/* #7 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554684
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	62

	/* #8 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	59

	/* #9 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554686
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	51

	/* #10 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554687
	/* java_name */
	.ascii	"android/app/Application"
	.zero	59

	/* #11 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554688
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	64

	/* #12 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554694
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	57

	/* #13 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	50

	/* #14 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	44

	/* #15 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	42

	/* #16 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	45

	/* #17 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554702
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	48

	/* #18 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554704
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	47

	/* #19 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554698
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	53

	/* #20 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"android/content/Context"
	.zero	59

	/* #21 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554700
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	52

	/* #22 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554713
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	51

	/* #23 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554706
	/* java_name */
	.ascii	"android/content/DialogInterface$OnCancelListener"
	.zero	34

	/* #24 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554709
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	35

	/* #25 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554696
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	60

	/* #26 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554714
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	54

	/* #27 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554716
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	52

	/* #28 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554718
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	49

	/* #29 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554721
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	48

	/* #30 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554722
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	49

	/* #31 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554723
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	53

	/* #32 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554724
	/* java_name */
	.ascii	"android/content/res/Resources$Theme"
	.zero	47

	/* #33 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	50

	/* #34 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554648
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	59

	/* #35 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554651
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	54

	/* #36 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554652
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	59

	/* #37 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554653
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	60

	/* #38 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554654
	/* java_name */
	.ascii	"android/graphics/Paint$Style"
	.zero	54

	/* #39 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554655
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	60

	/* #40 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554656
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	55

	/* #41 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554657
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	50

	/* #42 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554658
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	61

	/* #43 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554659
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	60

	/* #44 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554660
	/* java_name */
	.ascii	"android/graphics/Shader"
	.zero	59

	/* #45 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/graphics/drawable/ColorDrawable"
	.zero	43

	/* #46 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554661
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	48

	/* #47 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554663
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	39

	/* #48 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554645
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	67

	/* #49 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554632
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	61

	/* #50 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554633
	/* java_name */
	.ascii	"android/os/Build"
	.zero	66

	/* #51 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554634
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	58

	/* #52 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554636
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	65

	/* #53 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554630
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	64

	/* #54 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554641
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	65

	/* #55 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554631
	/* java_name */
	.ascii	"android/os/Message"
	.zero	64

	/* #56 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554642
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	65

	/* #57 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554640
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	61

	/* #58 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554638
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	53

	/* #59 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554644
	/* java_name */
	.ascii	"android/os/PersistableBundle"
	.zero	54

	/* #60 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554770
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	48

	/* #61 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	45

	/* #62 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	10

	/* #63 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	20

	/* #64 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	6

	/* #65 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	51

	/* #66 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	40

	/* #67 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	43

	/* #68 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	44

	/* #69 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	29

	/* #70 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	17

	/* #71 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	17

	/* #72 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	40

	/* #73 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	46

	/* #74 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	30

	/* #75 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	38

	/* #76 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	8

	/* #77 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	43

	/* #78 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	25

	/* #79 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	42

	/* #80 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	49

	/* #81 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	26

	/* #82 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	26

	/* #83 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	38

	/* #84 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	34

	/* #85 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	44

	/* #86 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	20

	/* #87 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	25

	/* #88 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	32

	/* #89 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	30

	/* #90 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	24

	/* #91 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	44

	/* #92 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	29

	/* #93 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	50

	/* #94 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	37

	/* #95 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	25

	/* #96 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	29

	/* #97 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	46

	/* #98 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	38

	/* #99 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	38

	/* #100 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554481
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	29

	/* #101 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554483
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	21

	/* #102 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	42

	/* #103 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	42

	/* #104 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554485
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	42

	/* #105 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	26

	/* #106 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	48

	/* #107 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	39

	/* #108 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	42

	/* #109 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	33

	/* #110 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	41

	/* #111 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	40

	/* #112 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	31

	/* #113 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	45

	/* #114 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	39

	/* #115 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	44

	/* #116 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	31

	/* #117 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	8

	/* #118 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	49

	/* #119 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	25

	/* #120 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	16

	/* #121 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554612
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	61

	/* #122 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554615
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	61

	/* #123 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554618
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	58

	/* #124 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554620
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	59

	/* #125 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554622
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	60

	/* #126 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554625
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	62

	/* #127 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554628
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	58

	/* #128 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554605
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	57

	/* #129 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554603
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	55

	/* #130 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554601
	/* java_name */
	.ascii	"android/util/Log"
	.zero	66

	/* #131 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	58

	/* #132 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554607
	/* java_name */
	.ascii	"android/util/TypedValue"
	.zero	59

	/* #133 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554536
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	59

	/* #134 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554538
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	50

	/* #135 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554541
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	55

	/* #136 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554550
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	58

	/* #137 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554548
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	42

	/* #138 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554543
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	50

	/* #139 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554544
	/* java_name */
	.ascii	"android/view/Display"
	.zero	62

	/* #140 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554559
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	59

	/* #141 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554521
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	61

	/* #142 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554523
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	52

	/* #143 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554524
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	55

	/* #144 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554526
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	47

	/* #145 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554528
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	46

	/* #146 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554552
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	65

	/* #147 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554575
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	57

	/* #148 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554558
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	61

	/* #149 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	38

	/* #150 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554556
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	37

	/* #151 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554529
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	58

	/* #152 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554578
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	58

	/* #153 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554562
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	62

	/* #154 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554507
	/* java_name */
	.ascii	"android/view/View"
	.zero	65

	/* #155 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554509
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	49

	/* #156 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554512
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	37

	/* #157 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554514
	/* java_name */
	.ascii	"android/view/View$OnKeyListener"
	.zero	51

	/* #158 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554582
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	60

	/* #159 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554583
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	47

	/* #160 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554584
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	41

	/* #161 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554564
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	58

	/* #162 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554566
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	59

	/* #163 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554586
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	49

	/* #164 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554530
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	53

	/* #165 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554532
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	35

	/* #166 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554533
	/* java_name */
	.ascii	"android/view/Window"
	.zero	63

	/* #167 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554535
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	54

	/* #168 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554569
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	56

	/* #169 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554567
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	43

	/* #170 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554594
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	37

	/* #171 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554600
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	31

	/* #172 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554595
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	36

	/* #173 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554590
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	50

	/* #174 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554593
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	47

	/* #175 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554499
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	60

	/* #176 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	56

	/* #177 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554491
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	33

	/* #178 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554494
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	61

	/* #179 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554495
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	59

	/* #180 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554496
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	56

	/* #181 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554497
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	47

	/* #182 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554500
	/* java_name */
	.ascii	"android/widget/ImageView"
	.zero	58

	/* #183 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554503
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	55

	/* #184 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554504
	/* java_name */
	.ascii	"android/widget/ProgressBar"
	.zero	56

	/* #185 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554502
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	53

	/* #186 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554492
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	59

	/* #187 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554505
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	62

	/* #188 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"androidhud/ProgressWheel"
	.zero	58

	/* #189 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"androidhud/ProgressWheel_SpinHandler"
	.zero	46

	/* #190 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc649277f2aa71c8a6d8/LoginActivity"
	.zero	47

	/* #191 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"crc649277f2aa71c8a6d8/MainActivity"
	.zero	48

	/* #192 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"crc649277f2aa71c8a6d8/Main_BarCodeActivity"
	.zero	40

	/* #193 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"crc649277f2aa71c8a6d8/Main_QtyActivity"
	.zero	44

	/* #194 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"crc649277f2aa71c8a6d8/NaviActivity"
	.zero	48

	/* #195 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"crc649277f2aa71c8a6d8/SplashActivity"
	.zero	46

	/* #196 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"crc649277f2aa71c8a6d8/tabtestActivity"
	.zero	45

	/* #197 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554913
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	65

	/* #198 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554909
	/* java_name */
	.ascii	"java/io/File"
	.zero	70

	/* #199 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554910
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	60

	/* #200 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554911
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	59

	/* #201 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554915
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	65

	/* #202 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	63

	/* #203 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554916
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	63

	/* #204 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554921
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	62

	/* #205 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554923
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	63

	/* #206 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	62

	/* #207 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554924
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	62

	/* #208 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554925
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	68

	/* #209 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554878
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	62

	/* #210 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554854
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	65

	/* #211 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554855
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	68

	/* #212 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554879
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	60

	/* #213 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554856
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	63

	/* #214 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554857
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	67

	/* #215 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554873
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	54

	/* #216 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554858
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	50

	/* #217 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554882
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	63

	/* #218 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554884
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	62

	/* #219 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554859
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	66

	/* #220 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554874
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	68

	/* #221 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554876
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	67

	/* #222 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554860
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	63

	/* #223 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554861
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	67

	/* #224 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554887
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	48

	/* #225 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554888
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	51

	/* #226 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554889
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	47

	/* #227 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554863
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	65

	/* #228 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554886
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	64

	/* #229 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554892
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	60

	/* #230 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554864
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	68

	/* #231 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554893
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	52

	/* #232 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554894
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	52

	/* #233 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554895
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	66

	/* #234 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554865
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	66

	/* #235 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554897
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	44

	/* #236 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554891
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	64

	/* #237 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554866
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	56

	/* #238 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554867
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	67

	/* #239 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554868
	/* java_name */
	.ascii	"java/lang/String"
	.zero	66

	/* #240 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554870
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	66

	/* #241 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554872
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	63

	/* #242 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554898
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	43

	/* #243 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554900
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	51

	/* #244 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554902
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	48

	/* #245 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554904
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	46

	/* #246 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554906
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	60

	/* #247 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554908
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	52

	/* #248 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554794
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	57

	/* #249 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554796
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	56

	/* #250 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554798
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	56

	/* #251 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554799
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	68

	/* #252 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554800
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	63

	/* #253 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554801
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	60

	/* #254 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554803
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	60

	/* #255 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554805
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	58

	/* #256 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554806
	/* java_name */
	.ascii	"java/net/URI"
	.zero	70

	/* #257 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554807
	/* java_name */
	.ascii	"java/net/URL"
	.zero	70

	/* #258 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554808
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	60

	/* #259 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554830
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	67

	/* #260 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554832
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	63

	/* #261 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	53

	/* #262 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	57

	/* #263 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554834
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	53

	/* #264 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554841
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	44

	/* #265 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554843
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	44

	/* #266 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554845
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	45

	/* #267 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554847
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	43

	/* #268 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554849
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	45

	/* #269 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554851
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	45

	/* #270 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554852
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	32

	/* #271 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554817
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	60

	/* #272 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554819
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	41

	/* #273 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554821
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	40

	/* #274 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554816
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	59

	/* #275 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554822
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	56

	/* #276 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554823
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	52

	/* #277 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554825
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	45

	/* #278 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554828
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	48

	/* #279 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554827
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	50

	/* #280 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554762
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	63

	/* #281 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554751
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	62

	/* #282 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554811
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	61

	/* #283 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554753
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	65

	/* #284 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554771
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	65

	/* #285 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554813
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	64

	/* #286 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554814
	/* java_name */
	.ascii	"java/util/Random"
	.zero	66

	/* #287 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	59

	/* #288 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	52

	/* #289 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	50

	/* #290 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	58

	/* #291 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	51

	/* #292 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554481
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	58

	/* #293 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	58

	/* #294 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	51

	/* #295 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	52

	/* #296 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554477
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	56

	/* #297 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	49

	/* #298 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	52

	/* #299 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	51

	/* #300 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	47

	/* #301 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554948
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	58

	/* #302 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554675
	/* java_name */
	.ascii	"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor"
	.zero	12

	/* #303 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554707
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnCancelListenerImplementor"
	.zero	18

	/* #304 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554711
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	19

	/* #305 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554747
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	43

	/* #306 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	52

	/* #307 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554768
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	51

	/* #308 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554786
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	42

	/* #309 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	1

	/* #310 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	4

	/* #311 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	9

	/* #312 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	13

	/* #313 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	9

	/* #314 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	9

	/* #315 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554610
	/* java_name */
	.ascii	"mono/android/text/TextWatcherImplementor"
	.zero	42

	/* #316 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554510
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	33

	/* #317 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554516
	/* java_name */
	.ascii	"mono/android/view/View_OnKeyListenerImplementor"
	.zero	35

	/* #318 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554871
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	48

	/* #319 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	36

	.size	map_java, 28800
/* Java to managed map: END */

