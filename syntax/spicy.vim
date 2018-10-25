syn keyword spicyTodo contained TODO XXX FIXME NOTE BUG
syn region spicyComment start="#" end="$"
syn keyword spicyImport module import
syn keyword spicyKeyword
	\ type
	\ public
	\ if
	\ switch
	\ on
	\ var
syn keyword spicyStatement print
syn keyword spicyType
	\ addr
	\ bitfield
	\ bool
	\ bytes
	\ double
	\ enum
	\ function
	\ int
	\ uint8
	\ uint16
	\ uint32
	\ uint64
	\ interval
	\ iterator
	\ list
	\ map
	\ set
	\ sink
	\ time
	\ tuple
	\ unit
	\ vector
syn keyword spicyBoolean True False
syn match spicyHexadecimalInt "\<0x\x\+\>"
syn match spicyAttribute '&\(length\|byteorder\|bitorder\|convert\|convertback\|default\|chunked\|eod\|ipv4\|ipv6\|parse\|transient\|synchronize\|try\|count\|until\|while\)'

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
