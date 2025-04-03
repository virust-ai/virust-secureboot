SECTIONS
{
    /* The startup code goes first into internal flash */
    .interrupts :
    {
        __VECTOR_TABLE = .;
        __interrupts_start__ = .;
        . = ALIGN(4);
        KEEP(*(.isr_vector))     /* Startup code */
        __interrupts_end__ = .;
        . = ALIGN(4);
    } > m_interrupts

    .flash_config :
    {
        . = ALIGN(4);
        KEEP(*(.FlashConfig))    /* Flash Configuration Field (FCF) */
        . = ALIGN(4);
    } > m_flash_config

    /* The program code and other data goes into internal flash */
    .text :
    {
        . = ALIGN(4);
        *(.text)                 /* .text sections (code) */
        *(.text*)                /* .text* sections (code) */
        *(.rodata)               /* .rodata sections (constants, strings, etc.) */
        *(.rodata*)              /* .rodata* sections (constants, strings, etc.) */
        . = ALIGN(4);
    } > m_text

    .data : AT(__DATA_ROM)
    {
        . = ALIGN(4);
        __DATA_RAM = .;
        __data_start__ = .;
        *(.data)
        *(.data*)
        . = ALIGN(4);
        __data_end__ = .;
    } > m_data

    .bss :
    {
        . = ALIGN(4);
        __BSS_START = .;
        __bss_start__ = .;
        *(.bss)
        *(.bss*)
        *(COMMON)
        . = ALIGN(4);
        __bss_end__ = .;
        __BSS_END = .;
    } > m_data_2

    .heap :
    {
        . = ALIGN(8);
        __end__ = .;
        __heap_start__ = .;
        . = . + HEAP_SIZE;
        __heap_end__ = .;
    } > m_data_2

    .stack :
    {
        . = ALIGN(8);
        . = . + STACK_SIZE;
        __StackTop = .;
    } > m_data_2
} 
