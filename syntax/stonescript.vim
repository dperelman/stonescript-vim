" Vim syntax file
" Language:     Stonescript (Stone Story RPG's builtin scripting language)
" Maintainer:   Daniel Perelman (https://github.com/dperelman)

" Quit when a (custom) syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

syn match     ssUnknown       '\S*'
syn match     ssComment       '//.*'

syn keyword   ssStatement     equip equipL equipR loadout
syn match     ssStatement     'activate potion'
syn match     ssIf            '?'
syn match     ssBoolOperator  /[!&|][ a-z]/he=e-1,me=e-1
syn match     ssCompOperator  /[><=][ a-z0-9*]/he=e-1,me=e-1

syn match     ssNumber        '\<\d\+\>'
syn match     ssEnchantLvl    '[+]\(\d\|1[0-6]\)\>'
syn match     ssStarLvl       '[*]\(\d\|10\)\>'

syn keyword   ssLocation      nagaraj rocky cave caves deadwood halls
syn keyword   ssElement       fire ice aether vigor poison
syn keyword   ssItemKind      sword shield crossbow rune wand hammer staff
\                             ouroboros shovel hatchet grap
syn keyword   ssItemModifier  big repeating dashing
syn match     ssItemVariant   '\<[DdAa]\?[FfIiPpHLU]\?\>'
syn keyword   ssFoeName       morel serpent bolesh
syn keyword   ssFoeProperty   boss ranged magic_resist 
\                             immune_to_range immune_to_physical

syn match     ssFoeVar        'foe\(.\(hp\|count\|armor\|distance\)\)\?'
syn match     ssSelfVar       '\(hp\|maxhp\|armor\|loc\|time\)'

hi def link   ssComment       Comment

hi def link   ssStatement     Statement
hi def link   ssIf            Conditional

hi def link   ssLocation      Constant
hi def link   ssElement       Type
hi def link   ssItemKind      Type
hi def link   ssItemModifier  Type
hi def link   ssFoeName       Constant
hi def link   ssFoeProperty   Constant

hi def link   ssFoeVar        Identifier
hi def link   ssSelfVar       Identifier

hi def link   ssBoolOperator  Operator
hi def link   ssCompOperator  Operator

hi def link   ssNumber        Number
hi def link   ssEnchantLvl    Type
hi def link   ssStarLvl       Type
hi def link   ssItemVariant   Type

hi def link   ssUnknown       Error

let b:current_syntax = 'stonescript'
