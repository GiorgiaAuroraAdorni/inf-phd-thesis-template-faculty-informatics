# Modified Thesis Template

This thesis template was modified by **Giorgia Adorni**.

## 🎯 Purpose of the Modification

The main reasons for modifying the original template were:

- to **fix existing bugs**, especially those affecting the title page commands;
- to enable the use of the **required font**, specifically **Optima**, in line with institutional style guidelines.

---

## ✨ Main Changes

### 📄 Extended Title Page Options

New commands were added to allow for a more complete and flexible title page. These additions make it possible to include:

- a subtitle;
- the name of the program director;
- the month and year of submission;
- the advisor and co-advisor;
- the specialisation of the study program;
- and the members of the evaluation committee.

Some existing commands were also reordered to ensure proper compilation.

---

### 🎨 Font Customization

To improve the document’s visual quality and meet font requirements:

- the **Optima.ttc** font file was added;
- **Optima** was set as the sans-serif font for section titles;
- the `fontspec` package was used to manage system fonts, which requires a modern LaTeX engine.

---

## ⚙️ Compilation Instructions

> ⚠️ **Important**: This template **does not work** with `pdflatex`.

You must compile the document using **XeLaTeX** or **LuaLaTeX**, as these engines support the necessary TrueType and OpenType fonts.

### Example commands:
```bash
xelatex usiinfthesis-sample.tex
