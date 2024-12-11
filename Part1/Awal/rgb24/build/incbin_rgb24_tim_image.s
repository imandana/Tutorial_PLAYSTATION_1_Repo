.section .data.tim_image
.balign 4

.global tim_image
.type tim_image, @object
tim_image:
	.incbin "D:/Imandana/TutorialJM/PS1/Project/Awal/rgb24/jenggotmalam.tim"

.local tim_image_end
tim_image_end:

.balign 4
.balign 4

.global tim_image_size
.type tim_image_size, @object
tim_image_size:
	.int (tim_image_end - tim_image)

.size tim_image, (tim_image_end - tim_image)
.size tim_image_size, 4
