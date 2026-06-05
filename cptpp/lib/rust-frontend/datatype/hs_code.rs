use crate::datatype::ir::{HscodeEntry, FabricatedIR};

pub fn build_hscode_ir(raw_records: Vec<(String, String)>) -> FabricatedIR {
    let mut entries = Vec::with_capacity(raw_records.len());

    for (raw_code, raw_description) in raw_records {
        entries.push(HscodeEntry {
            code: raw_code.trim().to_string(),
            description: raw_description.trim().to_string(),
        });
    }

    FabricatedIR { entries }
}