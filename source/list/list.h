/// @file list.h
#ifndef VZL_STRUCTURE_LIST_H
#define VZL_STRUCTURE_LIST_H

#define LIST_SUCCESS 0
#define LIST_ERROR -1

#include <stddef.h>

/**
 * Generic list type
 */
typedef struct list_t {
  list_t *next;
  /*list_t *previous;*/
  size_t data_size;
  void *data;
} list_t;

/**
 * Constructor
 */
list_t *list_create(size_t data_size);

/**
 * Destructor
 */
int list_destroy(list_t **list);
/*INSERTION*/
int list_insert_first(list_t **list, void *item);
int list_insert_last(list_t *list, void *item);
int list_insert_at(list_t **list, size_t index, void *item);
int list_fill(list_t *list, void *item);
#endif // VZL_STRUCTURE_LIST_H
