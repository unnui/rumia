use std::io;
use gtk4 as gtk;

fn main() {

    println!("Welcome!\nPlease input a username:");
    let mut user = String::from("user"); 
    io::stdin()
            .read_line(&mut user)
            .expect("Could not read input.");
    
}
