function CodeBlock(block)
    local language = block.classes[1] or "text"
    local code_lines = type(block.text) == "table" and block.text or {block.text}
    local code = table.concat(code_lines, "\n")
    return pandoc.RawBlock('latex', '\\begin{minted}{' .. language .. '}\n' .. code .. '\n\\end{minted}')
end
