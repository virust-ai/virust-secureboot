/* S32K148 Memory Configuration */
MEMORY
{
    /* Flash */
    m_interrupts          (RX)  : ORIGIN = 0x00000000, LENGTH = 0x00000400
    m_flash_config        (RX)  : ORIGIN = 0x00000400, LENGTH = 0x00000010
    m_text                (RX)  : ORIGIN = 0x00000410, LENGTH = 0x00017BF0

    /* SRAM_L */
    m_data                (RW)  : ORIGIN = 0x1FFE0000, LENGTH = 0x00020000

    /* SRAM_U */
    m_data_2              (RW)  : ORIGIN = 0x20000000, LENGTH = 0x0001F000
}

/* Stack and Heap sizes */
HEAP_SIZE  = DEFINED(__heap_size__)  ? __heap_size__  : 0x00001000;
STACK_SIZE = DEFINED(__stack_size__) ? __stack_size__ : 0x00001000;

/* Vector table size */
M_VECTOR_RAM_SIZE = DEFINED(__flash_vector_table__) ? 0x0 : 0x0400;

/* Entry point */
ENTRY(Reset_Handler) 
