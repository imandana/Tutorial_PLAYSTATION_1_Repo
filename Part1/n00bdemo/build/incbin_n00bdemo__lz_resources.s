.section .data._lz_resources
.balign 4

.global _lz_resources
.type _lz_resources, @object
_lz_resources:
	.incbin "D:/Imandana/TutorialJM/PS1/Project/n00bdemo/build/data.lzp"

.local _lz_resources_end
_lz_resources_end:

.balign 4
.balign 4

.global _lz_resources_size
.type _lz_resources_size, @object
_lz_resources_size:
	.int (_lz_resources_end - _lz_resources)

.size _lz_resources, (_lz_resources_end - _lz_resources)
.size _lz_resources_size, 4
