// Just reading the book of Rust
// I guess this will help and stop me from being so nervous about architecure

use std::io;
use std::cmp::Ordering;
use rand::Rng;

fn main() {
    let secret_number = rand::thread_rng().gen_range(1..=100);

    loop {
    
        println!("Guess number");
        println!("Input: ");

        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };
    
        // The entire line is:
        // io::stdin().read_line(&mut guess).expect("Failed to read line");
        println!("Your guess: {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small!"),
            Ordering::Greater => println!("Too big!"),
            Ordering::Equal => {
                println!("Winner!");
                break;
            }
        }    
    }
}
