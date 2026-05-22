from scripts import harmonized_system

def main():
    print("Starting harmonization suite...")
    harmonized_system.parse_hs_world_2022(
        "raw_data/harmonized_system/hs_world_2022/harmonized-system.csv",
        "data/harmonized_system/hs_world_2022.csv")
    
    print(f"Finished.")

if __name__ == "__main__":
    main()