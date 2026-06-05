use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct HscodeEntry {
    pub code: String,        // e.g., "010121" or "8471.30.00A"
    pub description: String, // e.g., "Horses; live, pure-bred breeding animals"
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct FabricatedIR {
    pub entries: Vec<HscodeEntry>,
}