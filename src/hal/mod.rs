pub mod gpio;
pub mod can;
pub mod flash;
pub mod uart;

pub fn init() {
    // Initialize all hardware peripherals
    gpio::init();
    can::init();
    flash::init();
    uart::init();
} 
