use cortex_m_rt::exception;

#[link_section = ".isr_vector"]
#[no_mangle]
pub static __isr_vector: [Option<unsafe extern "C" fn()>; 214] = [
    Some(__StackTop),           // Top of Stack
    Some(Reset_Handler),        // Reset Handler
    Some(NMI_Handler),          // NMI Handler
    Some(HardFault_Handler),    // Hard Fault Handler
    Some(MemManage_Handler),    // MPU Fault Handler
    Some(BusFault_Handler),     // Bus Fault Handler
    Some(UsageFault_Handler),   // Usage Fault Handler
    None,                       // Reserved
    None,                       // Reserved
    None,                       // Reserved
    None,                       // Reserved
    Some(SVC_Handler),          // SVCall Handler
    Some(DebugMon_Handler),     // Debug Monitor Handler
    None,                       // Reserved
    Some(PendSV_Handler),       // PendSV Handler
    Some(SysTick_Handler),      // SysTick Handler
    // ... (all other interrupt vectors)
];

#[exception]
fn Reset() -> ! {
    // Initialize .data section
    r0::zero_bss(&mut _sbss, &mut _ebss);
    r0::init_data(&mut _sdata, &mut _edata, &_sidata);

    // Initialize FPU
    fpu::init();

    // Call main
    main()
}

#[exception]
fn NMI() {
    // Handle NMI
}

#[exception]
fn HardFault() {
    // Handle hard fault
}

#[exception]
fn MemManage() {
    // Handle memory management fault
}

#[exception]
fn BusFault() {
    // Handle bus fault
}

#[exception]
fn UsageFault() {
    // Handle usage fault
}

#[exception]
fn SVCall() {
    // Handle supervisor call
}

#[exception]
fn DebugMon() {
    // Handle debug monitor
}

#[exception]
fn PendSV() {
    // Handle pending service call
}

#[exception]
fn SysTick() {
    // Handle system tick
} 
