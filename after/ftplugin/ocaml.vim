" Useful OCaml concealments
" TODO: Make it toggle
function! s:OCamlConcealments()
	syntax keyword type type conceal cchar=T
	syntax keyword module module conceal cchar=M
	syntax keyword include include conceal cchar=∋
	"syntax keyword fun fun conceal cchar=ƒ
	syntax keyword fun fun conceal cchar=λ
	syntax match div "//" conceal cchar=÷
	syntax match mul "*" conceal cchar=×
	syntax match eq "==" conceal cchar=≣
	syntax match neq "!=" conceal cchar=≠
	syntax match neq "<>" conceal cchar=≠
	syntax match arrow "->" conceal cchar=→
	syntax match rpipe "|>" conceal cchar=⊳
	syntax match lpipe "<|" conceal cchar=⊲
	syntax match rcomp ">>" conceal cchar=»
	syntax match lcom "<<" conceal cchar=«
	syntax match cons "::" conceal cchar=∷
	syntax match parse1 "|=" conceal cchar=⊧

	syntax match and "&&" conceal cchar=∧
	syntax match or "||" conceal cchar=∨
	syntax keyword not not conceal cchar=¬
	syntax keyword none None conceal cchar=∅
	syntax keyword some Some conceal cchar=☐
	syntax keyword true true conceal cchar=⊤
	syntax keyword false false conceal cchar=⊥

	syntax keyword bool bool conceal cchar=𝔹
	syntax keyword char char conceal cchar=∁
	syntax keyword string string conceal cchar=𝐒
	" TODO: Find out the symbol for bytes
	syntax keyword unsigned unsigned conceal cchar=ℕ
	syntax keyword int int conceal cchar=ℤ
	syntax keyword float float conceal cchar=ℝ
	syntax keyword complex complex conceal cchar=ℂ

	" For ppx extensions
	syntax match derive "@@deriving\>" conceal cchar=D
	syntax match derive "@value\>" conceal cchar==
	syntax match derive "@len " conceal cchar=#

	" Disable concealment different color
	" We just mask it as an operator
	hi clear Conceal
	hi link Conceal Operator
endfunction

" OCaml concealments
map <silent><buffer> <LocalLeader>c :call <SID>OCamlConcealments()<return>
