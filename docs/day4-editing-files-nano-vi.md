# Day 4 — Editing Files on a Server (nano + vi)

## nano (recommended for beginners)
- Open: nano <file>
- Save: Ctrl+O, Enter
- Exit: Ctrl+X
- Search: Ctrl+W
- Show line numbers: nano -l <file>

## vi (emergency minimum)
- Open: vi <file>
- Insert mode: i
- Back to normal mode: Esc
- Save + exit: :wq
- Exit without saving: :q!

## Safety checklist before saving configs
1) Double-check the file path (pwd + ls).
2) Make small changes, one at a time.
3) Re-open the file and verify (cat / less).
4) Commit changes with a clear message.
