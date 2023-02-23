/* GTK - The GIMP Toolkit
 * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
 *
 * GTK Calendar Widget
 * Copyright (C) 1998 Cesar Miquel and Shawn T. Amundson
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
 */

#ifndef __GTK_CALENDAR_H__
#define __GTK_CALENDAR_H__


#if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)
#error "Only <gtk/gtk.h> can be included directly."
#endif

#include <gtk/gtkwidget.h>


/* Zeile entfernt */

#define GTK_TYPE_CALENDAR                  (gtk_calendar_get_type ())
#define GTK_CALENDAR(obj)                  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_CALENDAR, GtkCalendar))
#define GTK_IS_CALENDAR(obj)               (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_CALENDAR))


typedef struct _GtkCalendar	       GtkCalendar;

/* Zeile entfernt */
GType	   gtk_calendar_get_type	(void) ;
/* Zeile entfernt */
GtkWidget* gtk_calendar_new		(void);

/* Zeile entfernt */
void          gtk_calendar_select_day                  (GtkCalendar *self,
                                                        GDateTime   *date);

/* Zeile entfernt */
void       gtk_calendar_mark_day	(GtkCalendar *calendar,
					 guint	      day);
/* Zeile entfernt */
void       gtk_calendar_unmark_day	(GtkCalendar *calendar,
					 guint	      day);
/* Zeile entfernt */
void	   gtk_calendar_clear_marks	(GtkCalendar *calendar);

/* Zeile entfernt */
void          gtk_calendar_set_show_week_numbers       (GtkCalendar *self,
                                                        gboolean     value);
/* Zeile entfernt */
gboolean      gtk_calendar_get_show_week_numbers       (GtkCalendar *self);
/* Zeile entfernt */
void          gtk_calendar_set_show_heading            (GtkCalendar *self,
                                                        gboolean     value);
/* Zeile entfernt */
gboolean      gtk_calendar_get_show_heading            (GtkCalendar *self);
/* Zeile entfernt */
void          gtk_calendar_set_show_day_names          (GtkCalendar *self,
                                                        gboolean     value);
/* Zeile entfernt */
gboolean      gtk_calendar_get_show_day_names          (GtkCalendar *self);

/* Zeile entfernt */
GDateTime *   gtk_calendar_get_date                    (GtkCalendar *self);

/* Zeile entfernt */
gboolean   gtk_calendar_get_day_is_marked      (GtkCalendar    *calendar,
                                                guint           day);

/* Zeile entfernt */

#endif /* __GTK_CALENDAR_H__ */