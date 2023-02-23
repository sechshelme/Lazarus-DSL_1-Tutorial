/*
 * SPDX-License-Identifier: LGPL-2.1-or-later
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

#pragma once

#include <gtk/gtklayoutmanager.h>

/* Zeile entfernt */

#define GTK_TYPE_CENTER_LAYOUT (gtk_center_layout_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkLayoutManager *      gtk_center_layout_new                   (void);
/* Zeile entfernt */
void                    gtk_center_layout_set_orientation       (GtkCenterLayout     *self,
                                                                 GtkOrientation       orientation);
/* Zeile entfernt */
GtkOrientation          gtk_center_layout_get_orientation       (GtkCenterLayout     *self);
/* Zeile entfernt */
void                    gtk_center_layout_set_baseline_position (GtkCenterLayout     *self,
                                                                 GtkBaselinePosition  baseline_position);
/* Zeile entfernt */
GtkBaselinePosition     gtk_center_layout_get_baseline_position (GtkCenterLayout     *self);
/* Zeile entfernt */
void                    gtk_center_layout_set_start_widget      (GtkCenterLayout     *self,
                                                                 GtkWidget           *widget);
/* Zeile entfernt */
GtkWidget *             gtk_center_layout_get_start_widget      (GtkCenterLayout     *self);
/* Zeile entfernt */
void                    gtk_center_layout_set_center_widget     (GtkCenterLayout     *self,
                                                                 GtkWidget           *widget);
/* Zeile entfernt */
GtkWidget *             gtk_center_layout_get_center_widget     (GtkCenterLayout     *self);
/* Zeile entfernt */
void                    gtk_center_layout_set_end_widget        (GtkCenterLayout     *self,
                                                                 GtkWidget           *widget);
/* Zeile entfernt */
GtkWidget *             gtk_center_layout_get_end_widget        (GtkCenterLayout     *self);


/* Zeile entfernt */