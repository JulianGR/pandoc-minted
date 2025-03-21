# Pandoc Lua Filter: Replace Listings with Minted

This Lua filter for Pandoc replaces `lstlisting` environments (generated by Pandoc's `--listings` option) with `minted` environments in LaTeX output. It also ensures that code blocks without a specified language use a default language (e.g., `text`).

## Features

- Handles both code blocks with and without a specified language.
- Uses a default language (`text`) for code blocks without a specified language.
- Compatible with Pandoc's `--listings` option.

## Installation

1. **Install Pandoc**: Make sure you have Pandoc installed. You can download it from [pandoc.org](https://pandoc.org/installing.html).

2. **Install Pygments**: The `minted` package requires Pygments for syntax highlighting. Install it using pip:

```bash
pip install pygments
```
   
3. **Download the Filter**: Clone this repository or download the minted.lua file.

## Usage

1. **Run Pandoc with the Filter**:

Use the `--lua-filter` option to apply the filter when converting Markdown to LaTeX:

```bash
pandoc example.md [--listings] --lua-filter=minted.lua -o output.tex
```

2. **Compile the LaTeX Output**:

Compile the generated `output.tex` file with `pdflatex` and the `--shell-escape` option:

```bash
pdflatex -shell-escape output.tex
```

## Example

**Input Markdown** (`example.md`)


`````markdown
  ```javascript
  function helloWorld() {
      console.log("Hello, world!");
  }
  ```

  ```
  function helloWorld() {
      console.log("Hello, world!");
  }
  ```
`````

**Output LaTeX** (`output.tex`)

```latex
\begin{minted}{javascript}
function helloWorld() {
    console.log("Hello, world!");
}
\end{minted}

\begin{minted}{text}
 function helloWorld() {
      console.log("Hello, world!");
  }
\end{minted}

```


**Compile the LaTeX File**

```bash
pdflatex -shell-escape output.tex
```


