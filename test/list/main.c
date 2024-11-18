#include "../../source/list/list.h"
#include <assert.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

int main(void) {
  struct dummy {
    char name[10];
    unsigned int age;
    unsigned long crashes;
    _Bool alive;
  } my_dummy = {.name = "Tommy DJ", .age = 83, .crashes = 23352, .alive = 1};

  /*Constructor*/
  list_t *my_list = list_create(sizeof(int));
  assert(my_list != NULL);

  /*Destructor*/
  assert(0 == list_destroy(&my_list));
  assert(NULL == my_list);

  printf("[LIST]: All tests ran successfully\n");
  return 0;
}
