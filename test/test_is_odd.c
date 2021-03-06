#include <assert.h>

#include "../src/is_odd.h"


void test_is_odd(void) {
    for(int i = -20; i < 20; ++i) {
        assert((is_odd(i) != 0) == (i % 2 != 0));
    }
}

int main(void)
{
    test_is_odd();
    return 0;
}
