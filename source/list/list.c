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
int list_insert_first(list_t **list, void *item) {
  list_t *first = list_create((*list)->data_size);
  first->data = item;
  first->next = *list;
  *list = first;
}

int list_insert_last(list_t *list, void *item) {
  list_t *current = list;
  while (NULL != current->next) {
    current->data = item;
    current = current->next;
  }
  current->next = list_create(list->data_size);
  current->data = item;
}

int list_insert_at(list_t **list, size_t index, void *item) {}

int list_fill(list_t *list, void *item) {
  list_t *current = list;
  while (NULL != current) {
    current->data = item;
    current = current->next;
  }
}
