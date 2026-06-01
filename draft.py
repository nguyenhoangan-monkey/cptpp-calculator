import pdfplumber

with pdfplumber.open("certificate_of_origin.pdf") as pdf:
    for i, page in enumerate(pdf.pages):
        print(f"--- PAGE {i+1} ---")
        
        # 1. Extract and print text that ISN'T in a table
        print("--- FORM METADATA ---")
        print(page.extract_text())
        
        # 2. Extract and print formal tables
        print("\n--- DETECTED TABLES ---")
        tables = page.extract_tables()
        for table in tables:
            for row in table:
                # Cleans up none-values or stray newlines
                print([cell.replace('\n', ' ').strip() if cell else '' for cell in row])