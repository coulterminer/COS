void printf(char* str)
{
    static unsigned short* VideoMemory=(unsigned short*)0xb8000;
    
    for(int i=0; str[i]!='\0';++i){
        VideoMemory[i]=(VideoMemory[i] & 0xFF00)|str[i];
    }  
}

int kernel_boot(){
	printf("COS 1.0\n");
}

extern "C" void kernel_main(void* multiboot_structure, uint32_t magicnumber)
{
	kernel_boot();
}