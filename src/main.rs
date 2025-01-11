use std::io;

fn main() {
    println!("Welcome!\nPlease input a username:");
    let mut user = String::new(); 
    io::stdin()
            .read_line(&mut user)
            .expect("Could not read input.");
    outter(user);
}

fn outter(x: String) {
    println!("User: {}", x);
}
