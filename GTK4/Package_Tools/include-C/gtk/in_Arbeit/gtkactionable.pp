
unit gtkactionable;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkactionable.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkactionable.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGtkActionable  = ^GtkActionable;
PGtkActionableInterface  = ^GtkActionableInterface;
PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright © 2012 Canonical Limited
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * licence or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Ryan Lortie <desrt@desrt.ca>
  }
(** unsupported pragma#pragma once*)
{$include <glib-object.h>}
{$include <gdk/gdk.h>}

{ was #define dname def_expr }
function GTK_TYPE_ACTIONABLE : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_ACTIONABLE(inst : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_ACTIONABLE(inst : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_ACTIONABLE_GET_IFACE(inst : longint) : longint;

type
{< private > }
{< public > }
(* Const before type ignored *)
(* Const before type ignored *)
  PGtkActionableInterface = ^TGtkActionableInterface;
  TGtkActionableInterface = record
      g_iface : TGTypeInterface;
      get_action_name : function (actionable:PGtkActionable):Pchar;cdecl;
      set_action_name : procedure (actionable:PGtkActionable; action_name:Pchar);cdecl;
      get_action_target_value : function (actionable:PGtkActionable):PGVariant;cdecl;
      set_action_target_value : procedure (actionable:PGtkActionable; target_value:PGVariant);cdecl;
    end;


function gtk_actionable_get_type:TGType;cdecl;external;
(* Const before type ignored *)
function gtk_actionable_get_action_name(actionable:PGtkActionable):Pchar;cdecl;external;
(* Const before type ignored *)
procedure gtk_actionable_set_action_name(actionable:PGtkActionable; action_name:Pchar);cdecl;external;
function gtk_actionable_get_action_target_value(actionable:PGtkActionable):PGVariant;cdecl;external;
procedure gtk_actionable_set_action_target_value(actionable:PGtkActionable; target_value:PGVariant);cdecl;external;
(* Const before type ignored *)
procedure gtk_actionable_set_action_target(actionable:PGtkActionable; format_string:Pchar; args:array of const);cdecl;external;
procedure gtk_actionable_set_action_target(actionable:PGtkActionable; format_string:Pchar);cdecl;external;
(* Const before type ignored *)
procedure gtk_actionable_set_detailed_action_name(actionable:PGtkActionable; detailed_action_name:Pchar);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_ACTIONABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ACTIONABLE:=gtk_actionable_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_ACTIONABLE(inst : longint) : longint;
begin
  GTK_ACTIONABLE:=G_TYPE_CHECK_INSTANCE_CAST(inst,GTK_TYPE_ACTIONABLE,GtkActionable);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_ACTIONABLE(inst : longint) : longint;
begin
  GTK_IS_ACTIONABLE:=G_TYPE_CHECK_INSTANCE_TYPE(inst,GTK_TYPE_ACTIONABLE);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_ACTIONABLE_GET_IFACE(inst : longint) : longint;
begin
  GTK_ACTIONABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_ACTIONABLE,GtkActionableInterface);
end;


end.