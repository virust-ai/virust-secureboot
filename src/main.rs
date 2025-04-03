#![no_std]
#![no_main]

use panic_halt as _;
use cortex_m_rt::entry;

mod startup;
mod hal;
mod bootloader;
mod uds;
mod utils;

#[entry]
fn main() -> ! {
    // Initialize hardware
    hal::init();
    
    // Initialize bootloader
    bootloader::init();
    
    // Main loop
    loop {
        // Process UDS messages
        uds::process_messages();
        
        // Run bootloader tasks
        bootloader::run_tasks();
    }
} 
