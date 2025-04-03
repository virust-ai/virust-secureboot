use cortex_m::register::cpacr;

pub fn init() {
    // Enable FPU
    unsafe {
        // Set CP10 and CP11 Full Access
        cpacr::write(cpacr::read() | 0x00F0_0000);
    }
} 
