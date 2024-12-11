#include <sys/types.h>
#include <stdio.h>
#include <psxgte.h>
#include <psxgpu.h>

// So data from tim.s can be accessed
extern u_long tim_image[];

int main() {

	DISPENV		disp;
	TIM_IMAGE	tim;
	
	// Reset GPU
	ResetGraph(0);
	
	// Setup 640x480 24-bit video mode
	SetDefDispEnv(&disp, 0, 0, 640, 480);

	// Apply and enable display
	PutDispEnv(&disp);
	SetDispMask(1);
	
	// Upload image to VRAM
	GetTimInfo(tim_image, &tim);
	LoadImage(tim.prect, tim.paddr);
	DrawSync(0);
	
	while(1) {
	}
	
	return 0;
}