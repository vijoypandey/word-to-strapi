# Quick Installation Guide

## Prerequisites
- Python 3.6 or higher
- pip (Python package installer)

## Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/word-to-strapi.git
   cd word-to-strapi
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the application:**
   
   **GUI Version:**
   ```bash
   python3 word_to_strapi.py
   ```
   
   **Command-line Version:**
   ```bash
   python3 cli_converter.py sample_blog_template.docx -v
   ```

## Generate Sample Document
```bash
python3 sample_template.py
```

## Usage
1. Create a Word document following the blog template format
2. Use the GUI or command-line tool to convert it to Strapi JSON
3. The output will be saved as `[filename]_strapi.json`

## Blog Template Format
Your Word document should contain:
- A table with fields: Working Title, Author, Topic, Blog Category, Target Keywords, Target Audience, Funnel Stage, CTA, Working Meta Description
- Content draft following the table

See `README.md` for detailed documentation. 