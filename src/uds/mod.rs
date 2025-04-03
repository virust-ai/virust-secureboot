pub mod protocol;
pub mod services;
pub mod session;

pub fn process_messages() {
    // Process incoming UDS messages
    protocol::process_messages();
    session::handle_sessions();
} 
