VARIABLE	[a-zA-Z_][0-9a-zA-Z_]*
ENTERO		[+-]?[0-9]+
DECIMAL		{ENTERO}"."[0-9]+
REAL		{ENTERO}|{DECIMAL}
POTENCIA	{ENTERO}"^"{ENTERO}
MODULO		[mM][oO][dD]"("{REAL}","{REAL}")"
OPERADOR	"+"|"-"|"*"|"\\"
ASIGNACION	{VARIABLE}"="{ENTERO}
OPERACION	(({VARIABLE}|{REAL}){OPERADOR}{REAL})|{MODULO}
ASIGNACION	{VARIABLE}"="{ENTERO}
%%
{VARIABLE}	{printf("\nVariable\n");}
{ENTERO}	{printf("\nNumero entero\n");}
{DECIMAL}	{printf("\nNumero decimal\n");}
{POTENCIA}	{printf("\nPotencia entera\n");}
{OPERACION}	{printf("\nOperacion");}
{ASIGNACION} {printf("\nAsignacion\n");}