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

#ifndef __GTK_DROP_TARGET_H__
#define __GTK_DROP_TARGET_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtktypes.h>


/* Zeile entfernt */

typedef struct _GtkDropTarget GtkDropTarget;


#define GTK_TYPE_DROP_TARGET         (gtk_drop_target_get_type ())
#define GTK_DROP_TARGET(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GTK_TYPE_DROP_TARGET, GtkDropTarget))
#define GTK_DROP_TARGET_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST ((k), GTK_TYPE_DROP_TARGET, GtkDropTargetClass))
#define GTK_IS_DROP_TARGET(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GTK_TYPE_DROP_TARGET))
#define GTK_IS_DROP_TARGET_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GTK_TYPE_DROP_TARGET))
#define GTK_DROP_TARGET_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GTK_TYPE_DROP_TARGET, GtkDropTargetClass))

typedef struct _GtkDropTargetClass GtkDropTargetClass;

/* Zeile entfernt */
GType                   gtk_drop_target_get_type         (void) ;

/* Zeile entfernt */
GtkDropTarget *         gtk_drop_target_new              (GType                  type,
                                                          GdkDragAction          actions);

/* Zeile entfernt */
void                    gtk_drop_target_set_gtypes       (GtkDropTarget         *self,
                                                          GType                 *types,
                                                          gsize                  n_types);
/* Zeile entfernt */
const GType *           gtk_drop_target_get_gtypes       (GtkDropTarget         *self,
                                                          gsize                 *n_types);
/* Zeile entfernt */
GdkContentFormats *     gtk_drop_target_get_formats      (GtkDropTarget         *self);

/* Zeile entfernt */
void                    gtk_drop_target_set_actions      (GtkDropTarget         *self,
                                                          GdkDragAction          actions);
/* Zeile entfernt */
GdkDragAction           gtk_drop_target_get_actions      (GtkDropTarget         *self);

/* Zeile entfernt */
void                    gtk_drop_target_set_preload      (GtkDropTarget         *self,
                                                          gboolean               preload);
/* Zeile entfernt */
gboolean                gtk_drop_target_get_preload      (GtkDropTarget         *self);

GDK_DEPRECATED_IN_4_4_FOR(gtk_drop_target_get_current_drop)
GdkDrop *               gtk_drop_target_get_drop         (GtkDropTarget         *self);

/* Zeile entfernt */
GdkDrop *               gtk_drop_target_get_current_drop (GtkDropTarget         *self);

/* Zeile entfernt */
const GValue *          gtk_drop_target_get_value        (GtkDropTarget         *self);

/* Zeile entfernt */
void                    gtk_drop_target_reject           (GtkDropTarget         *self);


/* Zeile entfernt */

#endif /* __GTK_DROP_TARGET_H__ */