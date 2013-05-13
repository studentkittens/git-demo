
#include <stdio.h>
#include <stdlib.h>

#include "is_odd.h"

int main(int argc, char *argv[]) {
    printf("Odd numbers of arguments? %d!\n",
        is_odd(argc - 1) ? "Yes" : "No");
    return EXIT_SUCCESS;
}
