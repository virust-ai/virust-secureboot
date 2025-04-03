/* S32K148 Memory Configuration */
MEMORY
{
    /* Flash */
    FLASH : ORIGIN = 0x00000000, LENGTH = 0x00017C00  /* 97KB */
    FLASH_CONFIG : ORIGIN = 0x00000400, LENGTH = 0x00000010  /* 16B */
    
    /* SRAM */
    SRAM_L : ORIGIN = 0x1FFE0000, LENGTH = 0x00020000  /* 128KB */
    SRAM_U : ORIGIN = 0x20000000, LENGTH = 0x0001F000  /* 124KB */
}

/* Stack and Heap sizes */
_stack_size = 0x4000;  /* 16KB */
_heap_size = 0x1000;   /* 4KB */

/* Entry point */
ENTRY(Reset_Handler) 
