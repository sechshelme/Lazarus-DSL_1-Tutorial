/* GTK - The GIMP Toolkit
 * gtksizegroup.h:
 * Copyright (C) 2000 Red Hat Software
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef __GTK_SIZE_GROUP_H__
#define __GTK_SIZE_GROUP_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>

/* Zeile entfernt */

#define GTK_TYPE_SIZE_GROUP            (gtk_size_group_get_type ())
#define GTK_SIZE_GROUP(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_SIZE_GROUP, GtkSizeGroup))
#define GTK_IS_SIZE_GROUP(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_SIZE_GROUP))

typedef struct _GtkSizeGroup              GtkSizeGroup;

struct _GtkSizeGroup
{
  GObject parent_instance;
};

/* Zeile entfernt */
GType            gtk_size_group_get_type      (void) ;

/* Zeile entfernt */
GtkSizeGroup *   gtk_size_group_new           (GtkSizeGroupMode  mode);
/* Zeile entfernt */
void             gtk_size_group_set_mode      (GtkSizeGroup     *size_group,
					       GtkSizeGroupMode  mode);
/* Zeile entfernt */
GtkSizeGroupMode gtk_size_group_get_mode      (GtkSizeGroup     *size_group);
/* Zeile entfernt */
void             gtk_size_group_add_widget    (GtkSizeGroup     *size_group,
					       GtkWidget        *widget);
/* Zeile entfernt */
void             gtk_size_group_remove_widget (GtkSizeGroup     *size_group,
					       GtkWidget        *widget);
/* Zeile entfernt */
GSList *         gtk_size_group_get_widgets   (GtkSizeGroup     *size_group);

/* Zeile entfernt */

#endif /* __GTK_SIZE_GROUP_H__ */