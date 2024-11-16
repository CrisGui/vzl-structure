#include "list.h"
#include <stddef.h>
#include <stdlib.h>

typedef struct list_t {
  list_t *next;
  /*list_t *previous;*/
  size_t data_size;
  void *data;
} list_t;

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

list_t *list_copy(list_t *source) {
  list_t *copy = list_create(source->data_size);
  list_t *current = source;
  while (NULL != current) {
    list_insert_last(&(*copy), &current->data);
    current = current->next;
  }
  return copy;
}

int list_swap(list_t *source, list_t *destination) {
  list_t *tmp = source;
  source = destination;
  destination = tmp;
  return LIST_SUCCESS;
}

int list_insert_first(list_t **list, void *item) {
  list_t *first = list_create((*list)->data_size);
  first->data = item;
  first->next = *list;
  *list = first;
  return LIST_SUCCESS;
}

int list_insert_last(list_t *list, void *item) {
  list_t *current = list;
  while (NULL != current->next) {
    current->data = item;
    current = current->next;
  }
  current->next = list_create(list->data_size);
  current->data = item;
  return LIST_SUCCESS;
}

int list_insert_at(list_t **list, size_t index, void *item) {
  return LIST_ERROR;
}

int list_fill(list_t *list, void *item) {
  list_t *current = list;
  while (NULL != current) {
    current->data = item;
    current = current->next;
  }
  return LIST_SUCCESS;
}
