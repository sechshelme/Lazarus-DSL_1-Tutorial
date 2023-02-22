
  Type
  PGtkListItemFactory  = ^GtkListItemFactory;
  PGtkListView  = ^GtkListView;
  PGtkSelectionModel  = ^GtkSelectionModel;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2018 Benjamin Otte
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
    }
{$ifndef __GTK_LIST_VIEW_H__}
{$define __GTK_LIST_VIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtklistbase.h>}

  { was #define dname def_expr }
  function GTK_TYPE_LIST_VIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_VIEW(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_VIEW_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_VIEW(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_VIEW_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_VIEW_GET_CLASS(o : longint) : longint;  


  type
    _GtkListView = GtkListView;
    _GtkListViewClass = GtkListViewClass;
(* error 
GType           gtk_list_view_get_type                          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_list_view_new(model:PGtkSelectionModel; factory:PGtkListItemFactory):^GtkWidget;

  function gtk_list_view_get_model(self:PGtkListView):^GtkSelectionModel;

  procedure gtk_list_view_set_model(self:PGtkListView; model:PGtkSelectionModel);

  procedure gtk_list_view_set_factory(self:PGtkListView; factory:PGtkListItemFactory);

  function gtk_list_view_get_factory(self:PGtkListView):^GtkListItemFactory;

  procedure gtk_list_view_set_show_separators(self:PGtkListView; show_separators:gboolean);

  function gtk_list_view_get_show_separators(self:PGtkListView):gboolean;

  procedure gtk_list_view_set_single_click_activate(self:PGtkListView; single_click_activate:gboolean);

  function gtk_list_view_get_single_click_activate(self:PGtkListView):gboolean;

  procedure gtk_list_view_set_enable_rubberband(self:PGtkListView; enable_rubberband:gboolean);

  function gtk_list_view_get_enable_rubberband(self:PGtkListView):gboolean;

(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkListView, g_object_unref)
(* error 
G_DEFINE_AUTOPTR_CLEANUP_FUNC(GtkListView, g_object_unref)
{$endif}
  { __GTK_LIST_VIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_LIST_VIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_LIST_VIEW:=gtk_list_view_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_VIEW(o : longint) : longint;
  begin
    GTK_LIST_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_VIEW,GtkListView);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_VIEW_CLASS(k : longint) : longint;
  begin
    GTK_LIST_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_VIEW,GtkListViewClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_VIEW(o : longint) : longint;
  begin
    GTK_IS_LIST_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_VIEW_CLASS(k : longint) : longint;
  begin
    GTK_IS_LIST_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_VIEW_GET_CLASS(o : longint) : longint;
  begin
    GTK_LIST_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_VIEW,GtkListViewClass);
  end;

  function gtk_list_view_new(model:PGtkSelectionModel; factory:PGtkListItemFactory):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_list_view_get_model(self:PGtkListView):PGtkSelectionModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_view_set_model(self:PGtkListView; model:PGtkSelectionModel);
  begin
    { You must implement this function }
  end;
  procedure gtk_list_view_set_factory(self:PGtkListView; factory:PGtkListItemFactory);
  begin
    { You must implement this function }
  end;
  function gtk_list_view_get_factory(self:PGtkListView):PGtkListItemFactory;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_view_set_show_separators(self:PGtkListView; show_separators:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_list_view_get_show_separators(self:PGtkListView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_view_set_single_click_activate(self:PGtkListView; single_click_activate:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_list_view_get_single_click_activate(self:PGtkListView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_list_view_set_enable_rubberband(self:PGtkListView; enable_rubberband:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_list_view_get_enable_rubberband(self:PGtkListView):gboolean;
  begin
    { You must implement this function }
  end;

