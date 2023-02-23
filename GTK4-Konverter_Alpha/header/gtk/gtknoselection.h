/*
 * Copyright © 2019 Benjamin Otte
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

#ifndef __GTK_NO_SELECTION_H__
#define __GTK_NO_SELECTION_H__

#include <gtk/gtktypes.h>

/* Zeile entfernt */

#define GTK_TYPE_NO_SELECTION (gtk_no_selection_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkNoSelection *        gtk_no_selection_new                    (GListModel             *model);

/* Zeile entfernt */
GListModel *            gtk_no_selection_get_model              (GtkNoSelection         *self);
/* Zeile entfernt */
void                    gtk_no_selection_set_model              (GtkNoSelection         *self,
                                                                 GListModel             *model);

/* Zeile entfernt */

#endif /* __GTK_NO_SELECTION_H__ */