#include "list.h"
#include <stddef.h>
#include <stdlib.h>

list_t *list_create(size_t data_size) {
  list_t *l = (list_t *)malloc(sizeof(list_t));
  l->data_size = data_size;
  l->next = NULL;
  l->data = malloc(l->data_size);
  return l;
}

int list_destroy(list_t **list) {
  list_t *next = NULL;
  while (NULL != *list) {
    next = (*list)->next;
    free(*list);
    *list = next;
  }
  return LIST_SUCCESS;
}
