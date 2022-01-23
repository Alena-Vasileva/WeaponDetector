	.arch	armv7-a
	.syntax unified
	.eabi_attribute 67, "2.09"	@ Tag_conformance
	.eabi_attribute 6, 10	@ Tag_CPU_arch
	.eabi_attribute 7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute 8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute 9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute 16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute 17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute 20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute 38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 14, 0	@ Tag_ABI_PCS_R9_use
	.file	"environment.armeabi-v7a.armeabi-v7a.s"
	.section	.rodata.env.str.1,"aMS",%progbits,1
	.type	.L.env.str.1, %object
.L.env.str.1:
	.asciz	"com.companyname.weapondetector"
	.size	.L.env.str.1, 31
	.section	.data.application_config,"aw",%progbits
	.type	application_config, %object
	.p2align	2
	.global	application_config
application_config:
	/* uses_mono_llvm */
	.byte	0
	/* uses_mono_aot */
	.byte	0
	/* uses_assembly_preload */
	.byte	1
	/* is_a_bundled_app */
	.byte	0
	/* broken_exception_transitions */
	.byte	0
	/* instant_run_enabled */
	.byte	0
	/* jni_add_native_method_registration_attribute_present */
	.byte	0
	/* have_runtime_config_blob */
	.byte	0
	/* bound_exception_type */
	.byte	1
	/* package_naming_policy */
	.zero	3
	.long	3
	/* environment_variable_count */
	.long	12
	/* system_property_count */
	.long	0
	/* number_of_assemblies_in_apk */
	.long	91
	/* bundled_assembly_name_width */
	.long	63
	/* android_package_name */
	.long	.L.env.str.1
	.size	application_config, 36
	.section	.rodata.env.str.2,"aMS",%progbits,1
	.type	.L.env.str.2, %object
.L.env.str.2:
	.asciz	"none"
	.size	.L.env.str.2, 5
	.section	.data.mono_aot_mode_name,"aw",%progbits
	.global	mono_aot_mode_name
mono_aot_mode_name:
	.long	.L.env.str.2
	.section	.rodata.env.str.3,"aMS",%progbits,1
	.type	.L.env.str.3, %object
.L.env.str.3:
	.asciz	"MONO_GC_PARAMS"
	.size	.L.env.str.3, 15
	.section	.rodata.env.str.4,"aMS",%progbits,1
	.type	.L.env.str.4, %object
.L.env.str.4:
	.asciz	"major=marksweep-conc"
	.size	.L.env.str.4, 21
	.section	.rodata.env.str.5,"aMS",%progbits,1
	.type	.L.env.str.5, %object
.L.env.str.5:
	.asciz	"MONO_LOG_LEVEL"
	.size	.L.env.str.5, 15
	.section	.rodata.env.str.6,"aMS",%progbits,1
	.type	.L.env.str.6, %object
.L.env.str.6:
	.asciz	"info"
	.size	.L.env.str.6, 5
	.section	.rodata.env.str.7,"aMS",%progbits,1
	.type	.L.env.str.7, %object
.L.env.str.7:
	.asciz	"XAMARIN_BUILD_ID"
	.size	.L.env.str.7, 17
	.section	.rodata.env.str.8,"aMS",%progbits,1
	.type	.L.env.str.8, %object
.L.env.str.8:
	.asciz	"94075ae4-1d80-4cae-bcdf-eaf9e9a56370"
	.size	.L.env.str.8, 37
	.section	.rodata.env.str.9,"aMS",%progbits,1
	.type	.L.env.str.9, %object
.L.env.str.9:
	.asciz	"XA_HTTP_CLIENT_HANDLER_TYPE"
	.size	.L.env.str.9, 28
	.section	.rodata.env.str.10,"aMS",%progbits,1
	.type	.L.env.str.10, %object
.L.env.str.10:
	.asciz	"Xamarin.Android.Net.AndroidClientHandler"
	.size	.L.env.str.10, 41
	.section	.rodata.env.str.11,"aMS",%progbits,1
	.type	.L.env.str.11, %object
.L.env.str.11:
	.asciz	"XA_TLS_PROVIDER"
	.size	.L.env.str.11, 16
	.section	.rodata.env.str.12,"aMS",%progbits,1
	.type	.L.env.str.12, %object
.L.env.str.12:
	.asciz	"btls"
	.size	.L.env.str.12, 5
	.section	.rodata.env.str.13,"aMS",%progbits,1
	.type	.L.env.str.13, %object
.L.env.str.13:
	.asciz	"__XA_PACKAGE_NAMING_POLICY__"
	.size	.L.env.str.13, 29
	.section	.rodata.env.str.14,"aMS",%progbits,1
	.type	.L.env.str.14, %object
.L.env.str.14:
	.asciz	"LowercaseCrc64"
	.size	.L.env.str.14, 15
	.section	.data.app_environment_variables,"aw",%progbits
	.type	app_environment_variables, %object
	.p2align	2
	.global	app_environment_variables
app_environment_variables:
	.long	.L.env.str.3
	.long	.L.env.str.4
	.long	.L.env.str.5
	.long	.L.env.str.6
	.long	.L.env.str.7
	.long	.L.env.str.8
	.long	.L.env.str.9
	.long	.L.env.str.10
	.long	.L.env.str.11
	.long	.L.env.str.12
	.long	.L.env.str.13
	.long	.L.env.str.14
	.size	app_environment_variables, 48
	.section	.data.app_system_properties,"aw",%progbits
	.type	app_system_properties, %object
	.p2align	2
	.global	app_system_properties
app_system_properties:
	.size	app_system_properties, 0
	/* Bundled assembly name buffers, all 63 bytes long */
	.section	.bss.bundled_assembly_names,"aw",%nobits
.L.env.buf.1:
	.zero	63
.L.env.buf.2:
	.zero	63
.L.env.buf.3:
	.zero	63
.L.env.buf.4:
	.zero	63
.L.env.buf.5:
	.zero	63
.L.env.buf.6:
	.zero	63
.L.env.buf.7:
	.zero	63
.L.env.buf.8:
	.zero	63
.L.env.buf.9:
	.zero	63
.L.env.buf.10:
	.zero	63
.L.env.buf.11:
	.zero	63
.L.env.buf.12:
	.zero	63
.L.env.buf.13:
	.zero	63
.L.env.buf.14:
	.zero	63
.L.env.buf.15:
	.zero	63
.L.env.buf.16:
	.zero	63
.L.env.buf.17:
	.zero	63
.L.env.buf.18:
	.zero	63
.L.env.buf.19:
	.zero	63
.L.env.buf.20:
	.zero	63
.L.env.buf.21:
	.zero	63
.L.env.buf.22:
	.zero	63
.L.env.buf.23:
	.zero	63
.L.env.buf.24:
	.zero	63
.L.env.buf.25:
	.zero	63
.L.env.buf.26:
	.zero	63
.L.env.buf.27:
	.zero	63
.L.env.buf.28:
	.zero	63
.L.env.buf.29:
	.zero	63
.L.env.buf.30:
	.zero	63
.L.env.buf.31:
	.zero	63
.L.env.buf.32:
	.zero	63
.L.env.buf.33:
	.zero	63
.L.env.buf.34:
	.zero	63
.L.env.buf.35:
	.zero	63
.L.env.buf.36:
	.zero	63
.L.env.buf.37:
	.zero	63
.L.env.buf.38:
	.zero	63
.L.env.buf.39:
	.zero	63
.L.env.buf.40:
	.zero	63
.L.env.buf.41:
	.zero	63
.L.env.buf.42:
	.zero	63
.L.env.buf.43:
	.zero	63
.L.env.buf.44:
	.zero	63
.L.env.buf.45:
	.zero	63
.L.env.buf.46:
	.zero	63
.L.env.buf.47:
	.zero	63
.L.env.buf.48:
	.zero	63
.L.env.buf.49:
	.zero	63
.L.env.buf.50:
	.zero	63
.L.env.buf.51:
	.zero	63
.L.env.buf.52:
	.zero	63
.L.env.buf.53:
	.zero	63
.L.env.buf.54:
	.zero	63
.L.env.buf.55:
	.zero	63
.L.env.buf.56:
	.zero	63
.L.env.buf.57:
	.zero	63
.L.env.buf.58:
	.zero	63
.L.env.buf.59:
	.zero	63
.L.env.buf.60:
	.zero	63
.L.env.buf.61:
	.zero	63
.L.env.buf.62:
	.zero	63
.L.env.buf.63:
	.zero	63
.L.env.buf.64:
	.zero	63
.L.env.buf.65:
	.zero	63
.L.env.buf.66:
	.zero	63
.L.env.buf.67:
	.zero	63
.L.env.buf.68:
	.zero	63
.L.env.buf.69:
	.zero	63
.L.env.buf.70:
	.zero	63
.L.env.buf.71:
	.zero	63
.L.env.buf.72:
	.zero	63
.L.env.buf.73:
	.zero	63
.L.env.buf.74:
	.zero	63
.L.env.buf.75:
	.zero	63
.L.env.buf.76:
	.zero	63
.L.env.buf.77:
	.zero	63
.L.env.buf.78:
	.zero	63
.L.env.buf.79:
	.zero	63
.L.env.buf.80:
	.zero	63
.L.env.buf.81:
	.zero	63
.L.env.buf.82:
	.zero	63
.L.env.buf.83:
	.zero	63
.L.env.buf.84:
	.zero	63
.L.env.buf.85:
	.zero	63
.L.env.buf.86:
	.zero	63
.L.env.buf.87:
	.zero	63
.L.env.buf.88:
	.zero	63
.L.env.buf.89:
	.zero	63
.L.env.buf.90:
	.zero	63
.L.env.buf.91:
	.zero	63
	/* Bundled assemblies data */
	.section	.data.bundled_assemblies,"aw",%progbits
	.type	bundled_assemblies, %object
	.p2align	2
	.global	bundled_assemblies
bundled_assemblies:
	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.1

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.2

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.3

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.4

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.5

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.6

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.7

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.8

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.9

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.10

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.11

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.12

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.13

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.14

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.15

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.16

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.17

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.18

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.19

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.20

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.21

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.22

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.23

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.24

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.25

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.26

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.27

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.28

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.29

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.30

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.31

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.32

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.33

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.34

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.35

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.36

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.37

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.38

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.39

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.40

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.41

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.42

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.43

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.44

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.45

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.46

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.47

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.48

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.49

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.50

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.51

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.52

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.53

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.54

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.55

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.56

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.57

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.58

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.59

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.60

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.61

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.62

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.63

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.64

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.65

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.66

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.67

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.68

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.69

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.70

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.71

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.72

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.73

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.74

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.75

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.76

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.77

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.78

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.79

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.80

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.81

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.82

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.83

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.84

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.85

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.86

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.87

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.88

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.89

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.90

	/* apk_fd */
	.long	-1
	/* data_offset */
	.long	0
	/* data_size */
	.long	0
	/* data */
	.long	0
	/* name_length */
	.long	0
	/* name */
	.long	.L.env.buf.91

	.size	bundled_assemblies, 2184
