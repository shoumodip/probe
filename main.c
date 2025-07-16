#include <stdio.h>

extern int x;

int main(void) {
    fprintf(stderr, "%d\n", x);
}
