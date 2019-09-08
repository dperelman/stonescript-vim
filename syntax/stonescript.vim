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
" TODO More precise highlighting for print
syn match     ssPrintLine     />.*/
syn match     ssBoolOperator  /[!&|][ a-z]/he=e-1,me=e-1
syn match     ssCompOperator  /[><=][ a-z0-9*]/he=e-1,me=e-1

syn match     ssNumber        '\<\d\+\>'
syn match     ssEnchantLvl    '[+]\(\d\|1[0-6]\)\>'
syn match     ssStarLvl       '[*]\(\d\|10\)\>'

syn keyword   ssLocation      rocky deadwood cave caves shroom haunted crypt
\                             bronze icy temple nagaraj nagaraja halls
syn keyword   ssElement       fire ice aether vigor poison
syn keyword   ssItemKind      sword shield crossbow rune wand hammer staff
\                             ouroboros shovel hatchet grap
syn keyword   ssItemModifier  big repeating dashing
syn match     ssItemVariant   '\<[DdAa]\?[FfIiPpHLU]\?\>'
syn keyword   ssFoeName       morel bolesh
syn keyword   ssFoeProperty   arachnid serpent insect machine
\                             humanoid elemental
\                             boss spawner flying slow ranged
\                             unpushable undamageable
\                             magic_resist magic_vulnerability
\                             immune_to_stun immune_to_ranged
\                             immune_to_debuff_damage immune_to_physical

syn match     ssFoeVar        'foe\(\.\(hp\|maxhp\|count\|armor\|distance\|debuffs\.count\)\)\?'
syn match     ssSelfVar       '\(hp\|maxhp\|armor\|maxarmor\|loc\|time\|pickup\|pickup\.distance\|pos\.x\|face\|debuffs\.count\)'

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

hi def link   ssPrintLine     String

hi def link   ssUnknown       Error

let b:current_syntax = 'stonescript'
