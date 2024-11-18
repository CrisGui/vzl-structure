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

  /*Lookup and insert*/
  // insert Dummy data
  list_insert_last(my_list, "There");
  list_insert_last(my_list, (int *)12);
  list_insert_last(my_list, &my_dummy);
  list_insert_last(my_list, "There");

  assert(0 == list_insert_first(&my_list, "Hello"));
  assert(0 == strcmp("Hello", list_get_first_item(my_list)));

  assert(0 == list_insert_last(my_list, (void *)3455));
  assert(3455 == *(int *)list_get_last_item(my_list));

  size_t index = 3;
  assert(0 == list_insert_at(&my_list, index, (_Bool *)1));
  assert(1 == *(_Bool *)list_get_item(my_list, index));

  printf("[LIST]: All tests ran successfully\n");
  return 0;
}
