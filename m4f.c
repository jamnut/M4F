#include <stdio.h>

#ifndef GIT_SHA
#define GIT_SHA "unknown"
#endif

int main(int argc, char **argv) {
    (void) argc;
    (void) argv;

    printf("M4F Git SHA: %s\n", GIT_SHA);
    printf("sizeof(int) = %lu\n", sizeof(int));
    printf("sizeof(pointer) = %lu\n", sizeof(void *));

    return 0;
}


