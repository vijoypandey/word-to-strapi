# Word to Strapi Converter

A Python application that converts Word documents following a specific blog template into Strapi layouts.

## Features

- **GUI Interface**: User-friendly graphical interface for easy document selection and conversion
- **Template Recognition**: Automatically extracts data from Word documents following the blog template
- **Strapi Integration**: Generates properly formatted JSON for Strapi CMS
- **Preview**: Shows extracted data and generated Strapi layout before saving
- **File Export**: Saves the Strapi layout as a JSON file

## Blog Template Fields

The application expects Word documents to contain a table with the following fields:

- Working Title
- Author
- Topic
- Blog Category
- Target Keywords
- Target Audience
- Funnel Stage
- CTA
- Working Meta Description

The content draft should follow this table.

## Installation

1. **Install Python dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

2. **Run the application**:
   ```bash
   python word_to_strapi.py
   ```

## Usage

1. **Launch the application**: Run `python word_to_strapi.py`
2. **Select a Word document**: Click "Browse" to select your Word document (.docx)
3. **Convert**: Click "Convert to Strapi Layout" to process the document
4. **Review**: The application will display:
   - Extracted table data
   - Content preview
   - Generated Strapi JSON
5. **Save**: The Strapi layout will be automatically saved as a JSON file in the same directory as your Word document

## Output

The application generates a JSON file with the following structure:

```json
{
  "data": {
    "title": "Working Title from document",
    "author": "Author name",
    "topic": "Blog topic",
    "blogCategory": "Category",
    "targetKeywords": "Keywords",
    "targetAudience": "Target audience",
    "funnelStage": "Funnel stage",
    "cta": "Call to action",
    "metaDescription": "Meta description",
    "content": "Full blog content",
    "publishedAt": "2024-01-01T00:00:00",
    "createdAt": "2024-01-01T00:00:00",
    "updatedAt": "2024-01-01T00:00:00"
  }
}
```

## Requirements

- Python 3.6+
- python-docx
- tkinter (usually included with Python)

## Troubleshooting

- **File not found**: Ensure the Word document exists and is accessible
- **No data extracted**: Check that your Word document follows the expected template format
- **Import errors**: Make sure all dependencies are installed with `pip install -r requirements.txt`

## Example Word Document Structure

Your Word document should have:

1. A table at the beginning with the template fields
2. The blog content following the table

Example table structure:
```
| Field              | Value                    |
|-------------------|--------------------------|
| Working Title     | How to Build a Website   |
| Author            | John Doe                 |
| Topic             | Web Development          |
| Blog Category     | Technology               |
| Target Keywords   | website, development     |
| Target Audience   | Beginners                |
| Funnel Stage      | Awareness                |
| CTA               | Start Building Today     |
| Working Meta Description | Learn how to build... |
```

Followed by the blog content... 