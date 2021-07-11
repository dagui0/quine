#include <stdio.h>
char S[] = "#include <stdio.h>%cchar S[] = %c%s%c;%cint main() { printf(S, 10, 34, S, 34, 10, 10); return 0; }%c";
int main() { printf(S, 10, 34, S, 34, 10, 10); return 0; }
