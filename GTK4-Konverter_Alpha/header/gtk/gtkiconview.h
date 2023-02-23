/* gtkiconview.h
 * Copyright (C) 2002, 2004  Anders Carlsson <andersca@gnome.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef __GTK_ICON_VIEW_H__
#define __GTK_ICON_VIEW_H__

#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>
#include <gtk/gtktreemodel.h>
#include <gtk/gtkcellrenderer.h>
#include <gtk/gtkcellarea.h>
#include <gtk/gtktooltip.h>

/* Zeile entfernt */

#define GTK_TYPE_ICON_VIEW            (gtk_icon_view_get_type ())
#define GTK_ICON_VIEW(obj)            (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_ICON_VIEW, GtkIconView))
#define GTK_IS_ICON_VIEW(obj)         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_ICON_VIEW))

typedef struct _GtkIconView           GtkIconView;

/**
 * GtkIconViewForeachFunc:
 * @icon_view: a `GtkIconView`
 * @path: The `GtkTreePath` of a selected row
 * @data: (closure): user data
 *
 * A function used by gtk_icon_view_selected_foreach() to map all
 * selected rows.
 *
 * It will be called on every selected row in the view.
 */
typedef void (* GtkIconViewForeachFunc)     (GtkIconView      *icon_view,
                                             GtkTreePath      *path,
                                             gpointer          data);

/**
 * GtkIconViewDropPosition:
 * @GTK_ICON_VIEW_NO_DROP: no drop possible
 * @GTK_ICON_VIEW_DROP_INTO: dropped item replaces the item
 * @GTK_ICON_VIEW_DROP_LEFT: dropped item is inserted to the left
 * @GTK_ICON_VIEW_DROP_RIGHT: dropped item is inserted to the right
 * @GTK_ICON_VIEW_DROP_ABOVE: dropped item is inserted above
 * @GTK_ICON_VIEW_DROP_BELOW: dropped item is inserted below
 *
 * An enum for determining where a dropped item goes.
 */
typedef enum
{
  GTK_ICON_VIEW_NO_DROP,
  GTK_ICON_VIEW_DROP_INTO,
  GTK_ICON_VIEW_DROP_LEFT,
  GTK_ICON_VIEW_DROP_RIGHT,
  GTK_ICON_VIEW_DROP_ABOVE,
  GTK_ICON_VIEW_DROP_BELOW
} GtkIconViewDropPosition;

/* Zeile entfernt */
GType          gtk_icon_view_get_type          (void) ;
/* Zeile entfernt */
GtkWidget *    gtk_icon_view_new               (void);
/* Zeile entfernt */
GtkWidget *    gtk_icon_view_new_with_area     (GtkCellArea    *area);
/* Zeile entfernt */
GtkWidget *    gtk_icon_view_new_with_model    (GtkTreeModel   *model);

/* Zeile entfernt */
void           gtk_icon_view_set_model         (GtkIconView    *icon_view,
                                                GtkTreeModel   *model);
/* Zeile entfernt */
GtkTreeModel * gtk_icon_view_get_model         (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_text_column   (GtkIconView    *icon_view,
                                                int             column);
/* Zeile entfernt */
int            gtk_icon_view_get_text_column   (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_markup_column (GtkIconView    *icon_view,
                                                int             column);
/* Zeile entfernt */
int            gtk_icon_view_get_markup_column (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_pixbuf_column (GtkIconView    *icon_view,
                                                int             column);
/* Zeile entfernt */
int            gtk_icon_view_get_pixbuf_column (GtkIconView    *icon_view);

/* Zeile entfernt */
void           gtk_icon_view_set_item_orientation (GtkIconView    *icon_view,
                                                   GtkOrientation  orientation);
/* Zeile entfernt */
GtkOrientation gtk_icon_view_get_item_orientation (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_columns       (GtkIconView    *icon_view,
                                                int             columns);
/* Zeile entfernt */
int            gtk_icon_view_get_columns       (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_item_width    (GtkIconView    *icon_view,
                                                int             item_width);
/* Zeile entfernt */
int            gtk_icon_view_get_item_width    (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_spacing       (GtkIconView    *icon_view,
                                                int             spacing);
/* Zeile entfernt */
int            gtk_icon_view_get_spacing       (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_row_spacing   (GtkIconView    *icon_view,
                                                int             row_spacing);
/* Zeile entfernt */
int            gtk_icon_view_get_row_spacing   (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_column_spacing (GtkIconView    *icon_view,
                                                int             column_spacing);
/* Zeile entfernt */
int            gtk_icon_view_get_column_spacing (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_margin        (GtkIconView    *icon_view,
                                                int             margin);
/* Zeile entfernt */
int            gtk_icon_view_get_margin        (GtkIconView    *icon_view);
/* Zeile entfernt */
void           gtk_icon_view_set_item_padding  (GtkIconView    *icon_view,
                                                int             item_padding);
/* Zeile entfernt */
int            gtk_icon_view_get_item_padding  (GtkIconView    *icon_view);

/* Zeile entfernt */
GtkTreePath *  gtk_icon_view_get_path_at_pos   (GtkIconView     *icon_view,
                                                int              x,
                                                int              y);
/* Zeile entfernt */
gboolean       gtk_icon_view_get_item_at_pos   (GtkIconView     *icon_view,
                                                int               x,
                                                int               y,
                                                GtkTreePath     **path,
                                                GtkCellRenderer **cell);
/* Zeile entfernt */
gboolean       gtk_icon_view_get_visible_range (GtkIconView      *icon_view,
                                                GtkTreePath     **start_path,
                                                GtkTreePath     **end_path);
/* Zeile entfernt */
void           gtk_icon_view_set_activate_on_single_click (GtkIconView  *icon_view,
                                                           gboolean      single);
/* Zeile entfernt */
gboolean       gtk_icon_view_get_activate_on_single_click (GtkIconView  *icon_view);

/* Zeile entfernt */
void           gtk_icon_view_selected_foreach   (GtkIconView            *icon_view,
                                                 GtkIconViewForeachFunc  func,
                                                 gpointer                data);
/* Zeile entfernt */
void           gtk_icon_view_set_selection_mode (GtkIconView            *icon_view,
                                                 GtkSelectionMode        mode);
/* Zeile entfernt */
GtkSelectionMode gtk_icon_view_get_selection_mode (GtkIconView            *icon_view);
/* Zeile entfernt */
void             gtk_icon_view_select_path        (GtkIconView            *icon_view,
                                                   GtkTreePath            *path);
/* Zeile entfernt */
void             gtk_icon_view_unselect_path      (GtkIconView            *icon_view,
                                                   GtkTreePath            *path);
/* Zeile entfernt */
gboolean         gtk_icon_view_path_is_selected   (GtkIconView            *icon_view,
                                                   GtkTreePath            *path);
/* Zeile entfernt */
int              gtk_icon_view_get_item_row       (GtkIconView            *icon_view,
                                                   GtkTreePath            *path);
/* Zeile entfernt */
int              gtk_icon_view_get_item_column    (GtkIconView            *icon_view,
                                                   GtkTreePath            *path);
/* Zeile entfernt */
GList           *gtk_icon_view_get_selected_items (GtkIconView            *icon_view);
/* Zeile entfernt */
void             gtk_icon_view_select_all         (GtkIconView            *icon_view);
/* Zeile entfernt */
void             gtk_icon_view_unselect_all       (GtkIconView            *icon_view);
/* Zeile entfernt */
void             gtk_icon_view_item_activated     (GtkIconView            *icon_view,
                                                   GtkTreePath            *path);
/* Zeile entfernt */
void             gtk_icon_view_set_cursor         (GtkIconView            *icon_view,
                                                   GtkTreePath            *path,
                                                   GtkCellRenderer        *cell,
                                                   gboolean                start_editing);
/* Zeile entfernt */
gboolean         gtk_icon_view_get_cursor         (GtkIconView            *icon_view,
                                                   GtkTreePath           **path,
                                                   GtkCellRenderer       **cell);
/* Zeile entfernt */
void             gtk_icon_view_scroll_to_path     (GtkIconView            *icon_view,
                                                   GtkTreePath            *path,
                                                   gboolean                use_align,
                                                   float                   row_align,
                                                   float                   col_align);

/* Drag-and-Drop support */
/* Zeile entfernt */
void                   gtk_icon_view_enable_model_drag_source (GtkIconView              *icon_view,
                                                               GdkModifierType           start_button_mask,
                                                               GdkContentFormats        *formats,
                                                               GdkDragAction             actions);
/* Zeile entfernt */
void                   gtk_icon_view_enable_model_drag_dest   (GtkIconView              *icon_view,
                                                               GdkContentFormats        *formats,
                                                               GdkDragAction             actions);
/* Zeile entfernt */
void                   gtk_icon_view_unset_model_drag_source  (GtkIconView              *icon_view);
/* Zeile entfernt */
void                   gtk_icon_view_unset_model_drag_dest    (GtkIconView              *icon_view);
/* Zeile entfernt */
void                   gtk_icon_view_set_reorderable          (GtkIconView              *icon_view,
                                                               gboolean                  reorderable);
/* Zeile entfernt */
gboolean               gtk_icon_view_get_reorderable          (GtkIconView              *icon_view);


/* These are useful to implement your own custom stuff. */
/* Zeile entfernt */
void                   gtk_icon_view_set_drag_dest_item       (GtkIconView              *icon_view,
                                                               GtkTreePath              *path,
                                                               GtkIconViewDropPosition   pos);
/* Zeile entfernt */
void                   gtk_icon_view_get_drag_dest_item       (GtkIconView              *icon_view,
                                                               GtkTreePath             **path,
                                                               GtkIconViewDropPosition  *pos);
/* Zeile entfernt */
gboolean               gtk_icon_view_get_dest_item_at_pos     (GtkIconView              *icon_view,
                                                               int                       drag_x,
                                                               int                       drag_y,
                                                               GtkTreePath             **path,
                                                               GtkIconViewDropPosition  *pos);
/* Zeile entfernt */
GdkPaintable          *gtk_icon_view_create_drag_icon         (GtkIconView              *icon_view,
                                                               GtkTreePath              *path);

/* Zeile entfernt */
gboolean gtk_icon_view_get_cell_rect                          (GtkIconView     *icon_view,
                                                               GtkTreePath     *path,
                                                               GtkCellRenderer *cell,
                                                               GdkRectangle    *rect);


/* Zeile entfernt */
void    gtk_icon_view_set_tooltip_item                        (GtkIconView     *icon_view,
                                                               GtkTooltip      *tooltip,
                                                               GtkTreePath     *path);
/* Zeile entfernt */
void    gtk_icon_view_set_tooltip_cell                        (GtkIconView     *icon_view,
                                                               GtkTooltip      *tooltip,
                                                               GtkTreePath     *path,
                                                               GtkCellRenderer *cell);
/* Zeile entfernt */
gboolean gtk_icon_view_get_tooltip_context                    (GtkIconView       *icon_view,
                                                               int                x,
                                                               int                y,
                                                               gboolean           keyboard_tip,
                                                               GtkTreeModel     **model,
                                                               GtkTreePath      **path,
                                                               GtkTreeIter       *iter);
/* Zeile entfernt */
void     gtk_icon_view_set_tooltip_column                     (GtkIconView       *icon_view,
                                                               int                column);
/* Zeile entfernt */
int      gtk_icon_view_get_tooltip_column                     (GtkIconView       *icon_view);


/* Zeile entfernt */

#endif /* __GTK_ICON_VIEW_H__ */