# pdf-compress

Welcome to the PDF Compression Shell Scripts repository! Here, you'll find shell scripts designed to compress PDF files efficiently. These scripts are tailored to help you reduce the size of your PDF documents while preserving quality and readability.

## Usage

### Prerequisites

Before using these scripts, ensure you have the following prerequisites installed on your system:

- Ghostscript

### Installation

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/interdevel/pdf-compress.git
    ```

2. Navigate to the cloned directory:

    ```bash
    cd pdf-compress
    ```

### Running the Scripts

#### Basic Compression

To compress a single PDF file, run:

```bash
./compress-pdf-single.sh input_file.pdf output_file.pdf
```

Replace `input_file.pdf` with the path to your input PDF file and `output_file.pdf` with the desired name for the compressed PDF.
If no `output_file.pdf` is given, the script will create the output file appending the suffix "-compressed-TIMESTAMP" to the original file name.

#### Batch Compression

To compress multiple PDF files in a directory, run:

```bash
./compress-pdf-multiple.sh input_directory/ output_directory/
```

Replace `input_directory/` with the path to the directory containing the input PDF files and `output_directory/` with the desired directory for the compressed PDF files.

### Options

These scripts will offer customizable options in future versions:

- `-q <quality>`: Specify the compression quality (default is 80). Higher quality results in better readability but larger file sizes.
- `-d <dpi>`: Set the DPI (dots per inch) for the output PDF (default is 300).
- `-f`: Overwrite the output file if it already exists.

### Example

```bash
./compress-pdf-single.sh -q 70 -d 150 input.pdf output.pdf
```

This command compresses the `input.pdf` file with quality set to 70 and DPI set to 150, saving the compressed PDF as `output.pdf`.

## Contributing

Contributions are welcome! If you have any suggestions or improvements for these scripts, feel free to open an issue or submit a pull request.

## License

This project is licensed under the GPL License - see the LICENSE file for details.

---

**Note**: Always make sure to back up your original PDF files before using these compression scripts to avoid any data loss.
