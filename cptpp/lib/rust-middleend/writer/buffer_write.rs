use prost::Message;
use std::io::{self, Write};

// Include the generated protobuf code
pub mod proto {
    include!(concat!(env!("OUT_DIR"), "/_.rs"));
}

fn main() -> io::Result<()> {
    // 1. Create the message
    let response = proto::RustResponse {
        text: "hello I am rust".to_string(),
    };

    // 2. Serialize to bytes
    let mut buf = Vec::new();
    response.encode(&mut buf).unwrap();

    // 3. Write bytes safely to stdout
    let mut stdout = io::stdout().lock();
    stdout.write_all(&buf)?;
    stdout.flush()?;

    Ok(())
}