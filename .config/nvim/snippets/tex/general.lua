return {
  s({ trig = 'boldtext', desc = 'bold text' }, fmta([[\textbf{<>}]], { i(1) })),
  s(
    { trig = 'align', desc = 'unnumbered align mode' },
    fmta(
      [[
    \begin{align*}
        <>
    \end{align*}
    ]],
      { i(1) }
    )
  ),
  s(
    { trig = 'Homework' },
    fmta(
      [[
    %! TeX program = lualatex
    \documentclass[12pt]{article}
    \usepackage{silence}
    \WarningFilter{latex}{You have requested package}
    \usepackage{homework}
    \lhead{Mia Bennett}
    \chead{<> - HW}
    \rhead{\today}
    \cfoot{\thepage}

    \begin{document}
    <>
    \end{document}
    ]],
      { i(1), i(0) }
    )
  ),
  s(
    { trig = 'Writeup' },
    fmta(
    [[
    %! TeX program = lualatex
    \documentclass[12pt]{article}
    \usepackage{silence}
    \WarningFilter{latex}{You have requested package}

    %style
    \usepackage{mlmodern}
    \usepackage{libertine}
    \usepackage[margin=1in]{geometry}
    \usepackage{setspace}
    \usepackage{parskip}
    \setstretch{1.1}

    %math
    \usepackage{amsmath, amsthm, amssymb}
    \usepackage{mathtools}

    %enviroments
    \renewcommand\qedsymbol{$\blacksquare$}

    \theoremstyle{plain}
    \newtheorem{theorem}{Theorem}[section]
    \newtheorem{lemma}[theorem]{Lemma}
    \newtheorem{corollary}{Corollary}[theorem]
    \newtheorem{proposition}{Proposition}[section]

    \theoremstyle{definition}
    \newtheorem{definition}{Definition}[section]

    \begin{document}
    <>
    \end{document}
    ]],
      { i(0) }
    )
  ),
  s(
    { trig = 'Prose' },
    fmta(
    [[
    %! TeX program = lualatex
    \documentclass[14pt]{extarticle}
    \usepackage{silence}
    \WarningFilter{latex}{You have requested package}

    %style
    \usepackage{microtype}
    \usepackage{fontspec}
    \setmainfont{EBGaramond}

    \usepackage[margin=1in]{geometry}
    \usepackage{setspace}
    \setstretch{1.1}
    \usepackage[indent=.5in]{parskip}

    \begin{document}
    <>
    \end{document}
    ]],
      { i(0) }
    )
  ),
}
