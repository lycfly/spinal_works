" ----------------------------------------------------------------------------------------------------
" SmartKeys:
" Syntax-Smart VHDL Code-Entry Tool
" Version 1.1
" ----------------------------------------------------------------------------------------------------
"
" Filename:  .exrc
" Purpose:   Setup File for VHDL-Smart "vi" Editing
" Editor:    Standard UNIX "vi" (SVR3.1)
" Author:    Charles Dancak (cdancak@synopsys.com)
" Copyright: March 1994
"
"                              "I, wisdom, dwell with prudence, and
"                               find out knowledge of witty inventions."
"                                                        Proverbs 8:12
"                                                        ca. 1000 B.C.
" ----------------------------------------------------------------------------------------------------
" DESCRIPTION:
" ----------------------------------------------------------------------------------------------------
" SmartKeys automates VHDL code entry, modification, and error checking.
"
" To install, copy this file into your home directory, naming it ".exrc". The "vi" editor,
" on invocation, looks for a setup file named ".exrc", and reads the macros defined there.
"  
" Here's what the SmartKeys setup file contains:
"
"  1. keyboard macros to accelerate VHDL-specific editing tasks (e.g., quoting literals);
"  2. abbreviations for VHDL keywords (like "process") that expand into the correct code;
"  3. object-oriented editing, which lets you focus on VHDL object names, not UNIX files;
"  4. in-place VHDL error-checking capability, based on the Synopsys "vhdlan" command.
"
" SmartKeys includes several utility scripts to support these more advanced features. In-place
" error checking, for example, uses the script "vhdl_check". Running this script requires that
" your UNIX system include the "nawk" command. This new version of "awk" is now widely available.
" 
" ----------------------------------------------------------------------------------------------------
" LIMITATIONS:
" ----------------------------------------------------------------------------------------------------
" The "vi" editor supports up to 32 keyboard macros, with a total character count of 512. 
" Exceeding these limits results in the error message "Too much macro text." In addition,
" "vi" allows about 20 abbreviations. Exact limitations may be installation-dependent.
" 
" To comment out any macro, simply insert a double-quote character at the beginning of the line.
" Macro customization should be undertaken only by proficient "vi" users, to avoid side effects.
"
" Several features of the SmartKeys package are specific to Synopsys software. SmartKeys, however,
" is not part of the Synopsys product line. It is positioned as unsupported SNUGware, provided to
" Synopsys customers as is. Neither the author, SNUG, nor Synopsys offer warranties of any kind.
"
" ----------------------------------------------------------------------------------------------------
" HDL-INDEPENDENT OPTIONS AND MACROS:
" ----------------------------------------------------------------------------------------------------
" HDL-INDEPENDENT OPTIONS
  set number
  set wrapscan
  set wrapmargin=1
  set shell=/bin/sh
"
" HDL-INDEPENDENT MACROS
"
" Escape to command mode (an alternative for hard-to-reach Esc keys):
  map!   
"
" Go to line 1:
  map g  1G
"
" Find next SPACE character on current line:
"[Note!  Remaps s, S (substitute) keys.]
  map s  f 
  map S  F 
"
" Report number of current line (for use by other macros):
"[Note!  Remaps ^G key; instead use :file command.]
  map  :.=
"
" Find first character of any multicharacter word (for use by other macros):
"[Note!  Unmaps keyboard equivalent of :e # command; instead type full command.]
  map  /\>/b
"
" Replace an entire multicharacter word:
"[Note!  Remaps R (overwrite characters) key.]
  map R  cw
"
" Erase an entire multicharacter word:
"[Note!  Remaps X (erase previous character) key.]
  map X  dw
"
" ----------------------------------------------------------------------------------------------------
" VHDL-SPECIFIC MACROS AND ABBREVIATIONS:
" ----------------------------------------------------------------------------------------------------
" VHDL OPERATOR SYMBOLS
" Signal assignment:
  map v  a <= EXPR;hR
" Port mapping:
  map V  a => WIRE,hR
" ----------------------------------------------------------------------------------------------------
" INDENTATION OPTIONS & MACROS
  set noautoindent
" Set a relative indent of 2 spaces:
  set shiftwidth=2
"
" Indent VHDL statement by one shiftwidth:
"[Note!  Remaps } (move to next paragraph) key.]
  map }  >/;$/
" Exdent VHDL statement by one shiftwidth:
"[Note!  Remaps { (move to last paragraph) key.]
  map {  </;$/
"
" Find next line of code at 0th indent level:
  map 0  /^[A-z(:)]/
" Find next line at 1st indent level:
  map 1  /^  [A-z(:)]/
"
" Expand all tabs in the source code into spaces:
"[Note!  Resets all text markers.]
  map  :%! expandg
"
" ----------------------------------------------------------------------------------------------------
" VHDL QUOTATION MACROS
" Single-quote any character literal:
  map q  i'ea'
"
" Double-quote any multicharacter bit-string literal:
  map Q  i"ea"
"
" ----------------------------------------------------------------------------------------------------
" VHDL CASE-CHANGE MACROS
" Change an identifier to all upper-case:
  map =  i:s/[A-z_0-9]*/\U&\E/xe
"
" Change an identifier to all lower-case:
  map _  i:s/[A-z_0-9]*/\L&\E/xe
"
" ----------------------------------------------------------------------------------------------------
" VHDL STATEMENT-ORIENTED MACROS
" Replicate entire VHDL statement, up to first terminal semicolon:
"[Note!  Resets text markers l, m, n.]
  map *  mm/;$/mn:'m,'nt.'nmlj
"
" Replicate VHDL statement, incrementing all embedded digits:
"[Note!  Resets text markers l, m, n.]
  map #  *mm/;$/mn:'m,'n!tr 0-89 1-90'lj
"
" Delete entire VHDL statement, up to first terminal semicolon:
"[Note!  Resets text markers l, m, n.]
"[Note!  Remaps @ (invoke buffer macro) key.]
  map @  mm/;$/mn:'m,'nd^
"
" ----------------------------------------------------------------------------------------------------
" VHDL COMMENT MACROS
" Put a single dashed line beneath current line:
"[Note!  Affects - (go to line . - 1 ) key performance.]
"[Note!  Remaps -- (go to line . - 2 ) key sequence.]
  map -- o25i--0
"
" Put a revision block above first line of file:
"[Note!  Remaps ^R (screen refresh) key; instead use ^L.]
  map  gO25I--o-- DESIGN NAME  1.0 15A--o--:r!echo %I-- File: :r!pwdI-- Path: --
"
" ----------------------------------------------------------------------------------------------------
" VHDL KEYWORD ABBREVIATIONS
"[Note!  The "vi" editor has a limit of about 20 abbreviations.]
"[Note!  To temporarily suppress expansion of an abbreviation, append ^V.]
"
  ab architecture_  architecture NAME of ENTITY isbeginend NAME;
  ab case_          case OBJ is  when VAL =>    null;   when OTHERS =>    null; end case;
  ab component_     component NAME  generic( CONST:TYPE );   port( PORT:MODE TYPE ); end component;
  ab configuration_ configuration NAME of ENTITY is  for ARCH    null;   end for; end NAME;
  ab constant_      constant NAME:TYPE := VAL;
"
  ab entity_    entity NAME is  generic( CONST:TYPE );   port( NAME:MODE TYPE ); end NAME;
  ab for_       for INDEX in M to N loop  null; end loop;
  ab function_  function NAME( ARG:TYPE ) return TYPE isbegin  null;   return RESULT; end NAME;
  ab generate_  LABEL:for INDEX in M to N generate  null; end generate LABEL;
  ab if_        if TEST then  null; elsif TEST then  null; else  null; end if;
"
  ab instance_  U0: PART  generic map ( VAL )  port map ( PIN => WIRE );
  ab package_   package [body] NAME is  null; end NAME;
  ab process_   LABEL:process( LIST )begin  null; end process;
  ab signal_    signal NAME:TYPE := VAL;
"
  ab variable_  variable NAME:TYPE := VAL;
  ab when_      TARGET <= WAVEFORM when TEST else WAVEFORM;
  ab while_     while TEST loop  null; end loop;
"
" SYNOPSYS COMPILER PRAGMATICS
  ab pragma_    --  pragma translate_off;   null; --  pragma translate_on;
"
" SYNOPSYS PACKAGE ABBREVIATIONS
  ab library_   library IEEE;use IEEE.STD_LOGIC_1164.all;use IEEE.STD_LOGIC_UNSIGNED.all;
"
" ----------------------------------------------------------------------------------------------------
" OBJECT-ORIENTED EDITING OPTIONS AND MACROS:
" ----------------------------------------------------------------------------------------------------
" Set options for "vi -t" command:
"[Note!  Requires a user-generated "tags" file.]
"[Note!  Run "vtags" script on VHDL files to generate "tags_vhdl".]
"[Note!  Run "ltags" script on Synopsys-specific library files to generate "tags_lib".]
  set tagstack
  set taglength=3
  set tags=tags\ tags_vhdl\ tags_lib
  set autowrite
  map  
"
" ----------------------------------------------------------------------------------------------------
" FILE-ORIENTED MACROS:
" ----------------------------------------------------------------------------------------------------
" Spool the current source-code file to the local printer:
"[Note!  Refers to PRINTER environment variable for name of printer.]
"[Note!  Remaps ^P (go to previous line) key.]
  map  :!vhdl_print %
"
" Write a backup version of the current file to the disk:
"[Note!  Creates a backup of "filename", called "filename-".]
  map  :w! %-
"
" ----------------------------------------------------------------------------------------------------
" IN-PLACE VHDL ERROR CHECKING:
" ----------------------------------------------------------------------------------------------------
" Run VHDL error check on the code in the "vi" buffer:
"[Note!  Requires the Synopsys "vhdlan" command.]
"[Note!  Remaps ^E (scroll down one line) key.]
"[Note!  Resets all text markers.]
  map  :%!vhdl_check?^\*\*?z.mlfv
"
" Put away error message and resume editing:
"[Note!  Remaps ^Y (scroll up one line) key.]
  map  u'l2j
"
" ---------------------------------------------------------------------------------------------------
" End .exrc.
