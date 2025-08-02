# Word to Strapi Converter - Project Summary

## What Was Built

A complete Python application that converts Word documents following a specific blog template into Strapi CMS layouts. The application includes:

### Features
- **GUI Interface**: User-friendly graphical interface for easy document selection and conversion
- **Command-line Interface**: Script-based conversion for automation and batch processing
- **Template Recognition**: Automatically extracts data from Word documents following the blog template
- **Strapi Integration**: Generates properly formatted JSON for Strapi CMS
- **Preview**: Shows extracted data and generated Strapi layout before saving
- **File Export**: Saves the Strapi layout as a JSON file

### Files Created
1. **`word_to_strapi.py`** - Main GUI application
2. **`cli_converter.py`** - Command-line version
3. **`sample_template.py`** - Script to generate sample Word documents
4. **`requirements.txt`** - Python dependencies
5. **`README.md`** - Complete documentation
6. **`sample_blog_template.docx`** - Example Word document for testing

## Blog Template Structure

The application expects Word documents to contain:

1. **A table at the beginning** with these fields:
   - Working Title
   - Author
   - Topic
   - Blog Category
   - Target Keywords
   - Target Audience
   - Funnel Stage
   - CTA
   - Working Meta Description

2. **Content draft** that follows the table

## Usage

### GUI Version
```bash
python3 word_to_strapi.py
```

### Command-line Version
```bash
python3 cli_converter.py input_document.docx -v
```

### Generate Sample Document
```bash
python3 sample_template.py
```

## Output Format

The application generates a JSON file with this structure:

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

## Installation

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

2. Run the application:
   ```bash
   python3 word_to_strapi.py
   ```

## Testing

The application has been tested with the sample document and successfully:
- Extracts all 9 template fields from the table
- Extracts 2570 characters of content
- Generates properly formatted Strapi JSON
- Saves output to `sample_blog_template_strapi.json`

## Key Technical Features

- **Robust Content Extraction**: Handles various document structures and formats
- **Error Handling**: Graceful error handling for missing files or malformed documents
- **Flexible Output**: Supports both GUI and command-line interfaces
- **Template Validation**: Ensures documents follow the expected template format
- **Unicode Support**: Properly handles special characters and formatting

## Future Enhancements

- Support for different template formats
- Batch processing of multiple documents
- Integration with Strapi API for direct upload
- Support for different content types (not just blogs)
- Enhanced error reporting and validation 