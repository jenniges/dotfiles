


# -- German --

/\[-- Automatische Anzeige mittels .* --]/d
/\[-- Typ: .* --]/d
/\[-- .* wird nicht unterstützt .* --]/d
/\[-- Anhang #[0-9]\+ --]/d
s/Anhang #[0-9]\+ //g



# -- English --

/\[-- Autoview using .* --]/d
/\[-- Type: .* --]/d
/\[-- .* is unsupported .* --]/d
/\[-- Attachment #[0-9]+ --]/d
s/Attachment #[0-9]\+: //g
#/--]/,/\[--/{/^[ \t]*$/d}
#/--\]/!b;:a;/\[--/bb;$!{N;ba};:b;s/(--\].*)[ \t\n]+(.*\[--)/\1\2/;tb


