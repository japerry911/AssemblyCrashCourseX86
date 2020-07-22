#include <iostream>
#include <stdio.h>

extern "C" int addition(int a, int b, int c);

int main(int argc, const char * argv[]) {
    int answer = addition(1, 19, 10);
    std::cout << answer << std::endl;
    
    return 0;
}
