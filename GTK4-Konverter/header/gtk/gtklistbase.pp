
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
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
    }
{$ifndef __GTK_LIST_BASE_H__}
{$define __GTK_LIST_BASE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkselectionmodel.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_LIST_BASE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BASE(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BASE_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BASE(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BASE_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BASE_GET_CLASS(o : longint) : longint;  

  {*
   * GtkListBase:
   *
   * `GtkListBase` is the abstract base class for GTK's list widgets.
    }

  type
    _GtkListBase = GtkListBase;
    _GtkListBaseClass = GtkListBaseClass;
  { Zeile entfernt  }

  function gtk_list_base_get_type:GType;

  { Zeile entfernt  }
{$endif}
  { __GTK_LIST_BASE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_LIST_BASE : longint; { return type might be wrong }
    begin
      GTK_TYPE_LIST_BASE:=gtk_list_base_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BASE(o : longint) : longint;
  begin
    GTK_LIST_BASE:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_LIST_BASE,GtkListBase);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BASE_CLASS(k : longint) : longint;
  begin
    GTK_LIST_BASE_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_LIST_BASE,GtkListBaseClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BASE(o : longint) : longint;
  begin
    GTK_IS_LIST_BASE:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_LIST_BASE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LIST_BASE_CLASS(k : longint) : longint;
  begin
    GTK_IS_LIST_BASE_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_LIST_BASE);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LIST_BASE_GET_CLASS(o : longint) : longint;
  begin
    GTK_LIST_BASE_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_LIST_BASE,GtkListBaseClass);
  end;

  function gtk_list_base_get_type:GType;
  begin
    { You must implement this function }
  end;

