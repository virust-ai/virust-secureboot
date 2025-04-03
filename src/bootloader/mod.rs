pub mod sequence;
pub mod memory;
pub mod security;

pub fn init() {
    // Initialize bootloader components
    sequence::init();
    memory::init();
    security::init();
}

pub fn run_tasks() {
    // Run periodic bootloader tasks
    sequence::run_tasks();
    security::run_tasks();
} 
