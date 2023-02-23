/*
 * Copyright © 2020 Benjamin Otte
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Benjamin Otte <otte@gnome.org>
 */


#ifndef __GTK_BITSET_H__
#define __GTK_BITSET_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktypes.h>

/* Zeile entfernt */

#define GTK_TYPE_BITSET (gtk_bitset_get_type ())

/* Zeile entfernt */
GType                   gtk_bitset_get_type                     (void) ;

/* Zeile entfernt */
GtkBitset *             gtk_bitset_ref                          (GtkBitset              *self);
/* Zeile entfernt */
void                    gtk_bitset_unref                        (GtkBitset              *self);
/* Zeile entfernt */

/* Zeile entfernt */
gboolean                gtk_bitset_contains                     (const GtkBitset        *self,
                                                                 guint                   value);
/* Zeile entfernt */
gboolean                gtk_bitset_is_empty                     (const GtkBitset        *self);
/* Zeile entfernt */
gboolean                gtk_bitset_equals                       (const GtkBitset        *self,
                                                                 const GtkBitset        *other);
/* Zeile entfernt */
guint64                 gtk_bitset_get_size                     (const GtkBitset        *self);
/* Zeile entfernt */
guint64                 gtk_bitset_get_size_in_range            (const GtkBitset        *self,
                                                                 guint                   first,
                                                                 guint                   last);
/* Zeile entfernt */
guint                   gtk_bitset_get_nth                      (const GtkBitset        *self,
                                                                 guint                   nth);
/* Zeile entfernt */
guint                   gtk_bitset_get_minimum                  (const GtkBitset        *self);
/* Zeile entfernt */
guint                   gtk_bitset_get_maximum                  (const GtkBitset        *self);

/* Zeile entfernt */
GtkBitset *             gtk_bitset_new_empty                    (void);
/* Zeile entfernt */
GtkBitset *             gtk_bitset_copy                         (const GtkBitset        *self);
/* Zeile entfernt */
GtkBitset *             gtk_bitset_new_range                    (guint                   start,
                                                                 guint                   n_items);

/* Zeile entfernt */
void                    gtk_bitset_remove_all                   (GtkBitset              *self);
/* Zeile entfernt */
gboolean                gtk_bitset_add                          (GtkBitset              *self,
                                                                 guint                   value);
/* Zeile entfernt */
gboolean                gtk_bitset_remove                       (GtkBitset              *self,
                                                                 guint                   value);
/* Zeile entfernt */
void                    gtk_bitset_add_range                    (GtkBitset              *self,
                                                                 guint                   start,
                                                                 guint                   n_items);
/* Zeile entfernt */
void                    gtk_bitset_remove_range                 (GtkBitset              *self,
                                                                 guint                   start,
                                                                 guint                   n_items);
/* Zeile entfernt */
void                    gtk_bitset_add_range_closed             (GtkBitset              *self,
                                                                 guint                   first,
                                                                 guint                   last);
/* Zeile entfernt */
void                    gtk_bitset_remove_range_closed          (GtkBitset              *self,
                                                                 guint                   first,
                                                                 guint                   last);
/* Zeile entfernt */
void                    gtk_bitset_add_rectangle                (GtkBitset              *self,
                                                                 guint                   start,
                                                                 guint                   width,
                                                                 guint                   height,
                                                                 guint                   stride);
/* Zeile entfernt */
void                    gtk_bitset_remove_rectangle             (GtkBitset              *self,
                                                                 guint                   start,
                                                                 guint                   width,
                                                                 guint                   height,
                                                                 guint                   stride);

/* Zeile entfernt */
void                    gtk_bitset_union                        (GtkBitset              *self,
                                                                 const GtkBitset        *other);
/* Zeile entfernt */
void                    gtk_bitset_intersect                    (GtkBitset              *self,
                                                                 const GtkBitset        *other);
/* Zeile entfernt */
void                    gtk_bitset_subtract                     (GtkBitset              *self,
                                                                 const GtkBitset        *other);
/* Zeile entfernt */
void                    gtk_bitset_difference                   (GtkBitset              *self,
                                                                 const GtkBitset        *other);
/* Zeile entfernt */
void                    gtk_bitset_shift_left                   (GtkBitset              *self,
                                                                 guint                   amount);
/* Zeile entfernt */
void                    gtk_bitset_shift_right                  (GtkBitset              *self,
                                                                 guint                   amount);
/* Zeile entfernt */
void                    gtk_bitset_splice                       (GtkBitset              *self,
                                                                 guint                   position,
                                                                 guint                   removed,
                                                                 guint                   added);

/**
 * GtkBitsetIter:
 *
 * An opaque, stack-allocated struct for iterating
 * over the elements of a `GtkBitset`.
 *
 * Before a `GtkBitsetIter` can be used, it needs to be initialized with
 * [func@Gtk.BitsetIter.init_first], [func@Gtk.BitsetIter.init_last]
 * or [func@Gtk.BitsetIter.init_at].
 */
typedef struct _GtkBitsetIter GtkBitsetIter;

struct _GtkBitsetIter
{
  /*< private >*/
  gpointer private_data[10];
};

/* Zeile entfernt */
GType                   gtk_bitset_iter_get_type                (void) ;

/* Zeile entfernt */
gboolean                gtk_bitset_iter_init_first              (GtkBitsetIter          *iter,
                                                                 const GtkBitset        *set,
                                                                 guint                  *value);
/* Zeile entfernt */
gboolean                gtk_bitset_iter_init_last               (GtkBitsetIter          *iter,
                                                                 const GtkBitset        *set,
                                                                 guint                  *value);
/* Zeile entfernt */
gboolean                gtk_bitset_iter_init_at                 (GtkBitsetIter          *iter,
                                                                 const GtkBitset        *set,
                                                                 guint                   target,
                                                                 guint                  *value);
/* Zeile entfernt */
gboolean                gtk_bitset_iter_next                    (GtkBitsetIter          *iter,
                                                                 guint                  *value);
/* Zeile entfernt */
gboolean                gtk_bitset_iter_previous                (GtkBitsetIter          *iter,
                                                                 guint                  *value);
/* Zeile entfernt */
guint                   gtk_bitset_iter_get_value               (const GtkBitsetIter    *iter);
/* Zeile entfernt */
gboolean                gtk_bitset_iter_is_valid                (const GtkBitsetIter    *iter);

/* Zeile entfernt */

#endif /* __GTK_BITSET_H__ */