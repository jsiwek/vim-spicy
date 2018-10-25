syn keyword spicyTodo contained TODO XXX FIXME NOTE BUG
syn region spicyComment start="#" end="$"
syn keyword spicyImport module import public export
syn match spicyHook '%\(init\|done\|confirmed\|disabled\|error\|gap\|overlap\|skip\|synced\|undelivered\|debug\|sync\)'
syn match spicyUnitProps '%\(byteorder\|description\|mimetype\|port\|sync-after\|sync-at\|synchronize-after\|synchronize-at\|skip-pre\|skip-post\)'
syn keyword spicyKeyword
    \ type
    \ if
    \ foreach
    \ for
    \ else
    \ switch
    \ on
    \ new
    \ delete
    \ in
    \ return
    \ call
    \ mod
syn match spicyId 'self\|\$\$'
syn keyword spicyBuiltin cast
syn keyword spicyStorageClass global local const auto var
syn match spicyStatement "print[ ]\+"
syn keyword spicyType
    \ void
    \ object
    \ addr
    \ bitfield
    \ bool
    \ bytes
    \ double
    \ enum
    \ function
    \ uint
    \ uint8
    \ uint16
    \ uint32
    \ uint64
    \ int
    \ int8
    \ int16
    \ int32
    \ int64
    \ interval
    \ iterator
    \ list
    \ map
    \ set
    \ sink
    \ string
    \ time
    \ tuple
    \ unit
    \ vector
syn keyword spicyBoolean True False T F
syn match spicyPatternLiteral '/.*/'
syn region spicyStringLiteral start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,cFormat,@Spell,spicyEscape
syn match spicyEscape         "\\x\x\{2}" contained
syn match spicyHexadecimalInt "\<0x\x\+\>"
syn match spicyNumber "\<\d\+\>"
syn match spicyAddr4 "\(\<\d\+\>\.\)\{3}\<\d\+\>"
" TODO: the IPv6 regex is basic, not 100% correct
syn match spicyAddr6 "\[\([0-9a-fA-F]\{0,4}:\)\{2,7}\([0-9a-fA-F]\{0,4}\)\]"
syn match spicyPort          "\d\{1,5}\/\(tcp\|udp\|icmp\)"
syn match spicyAttribute '&\(length\|byteorder\|bitorder\|convert_back\|convertback\|convert\|default\|chunked\|eod\|ipv4\|ipv6\|parse\|transient\|synchronize\|try\|count\|until_including\|until\|while\|raw\|hide\|precision\)'

" Set highlights
hi def link spicyTodo Todo
hi def link spicyComment Comment
hi def link spicyImport Include
hi def link spicyKeyword Keyword
hi def link spicyType Type
hi def link spicyStatement Statement
hi def link spicyBoolean Boolean
hi def link spicyHexadecimalInt Number
hi def link spicyAttribute StorageClass
hi def link spicyStorageClass StorageClass
hi def link spicyHook Macro
hi def link spicyBuiltin Macro
hi def link spicyUnitProps Macro
hi def link spicyId Macro
hi def link spicyStringLiteral String
hi def link spicyPatternLiteral String
hi def link spicyNumber Number
hi def link spicyAddr4 Number
hi def link spicyAddr6 Number
hi def link spicyPort Number
hi def link spicyEscape Special
" TODO: addr/subnet, try/catch/throw?
