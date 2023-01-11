#include <stdio.h>
#include <string.h>

int main(int argc, char **argv){
  printf("Shellcode Length: %ld\n", strlen(argv[1]));
  int (*ret)();
  ret = (int (*)()) argv[1];
  (int)(*ret)();
}
