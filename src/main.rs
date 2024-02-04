// main.rs

#![no_std]
#![no_main]

mod vga_buffer;

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop{}
}

#[no_mangle]
pub extern "C" fn _start() -> ! {
    use core::fmt::Write;

    vga_buffer::WRITER.lock().write_str("hello world!").unwrap();
    write!(vga_buffer::WRITER.lock(), " some numbers: {} and {}", 21, 9.81).unwrap();
    
    loop {}
}

