
unit gtkbox;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbox.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbox.h
    -v
    -p
    -T
    -S
    -d
    -c
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
PGtkBox  = ^GtkBox;
PGtkBoxClass  = ^GtkBoxClass;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_BOX_H__}
{$define __GTK_BOX_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_BOX : longint; { return type might be wrong }

function GTK_BOX(obj : longint) : longint;

function GTK_BOX_CLASS(klass : longint) : longint;

function GTK_IS_BOX(obj : longint) : longint;

function GTK_IS_BOX_CLASS(klass : longint) : longint;

function GTK_BOX_GET_CLASS(obj : longint) : longint;

type
  PGtkBox = ^TGtkBox;
  TGtkBox = record
      parent_instance : TGtkWidget;
    end;



  PGtkBoxClass = ^TGtkBoxClass;
  TGtkBoxClass = record
      parent_class : TGtkWidgetClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_box_get_type:TGType;cdecl;external;

function gtk_box_new(orientation:TGtkOrientation; spacing:longint):PGtkWidget;cdecl;external;

procedure gtk_box_set_homogeneous(var box:TGtkBox; homogeneous:Tgboolean);cdecl;external;

function gtk_box_get_homogeneous(var box:TGtkBox):Tgboolean;cdecl;external;

procedure gtk_box_set_spacing(var box:TGtkBox; spacing:longint);cdecl;external;

function gtk_box_get_spacing(var box:TGtkBox):longint;cdecl;external;

procedure gtk_box_set_baseline_position(var box:TGtkBox; position:TGtkBaselinePosition);cdecl;external;

function gtk_box_get_baseline_position(var box:TGtkBox):TGtkBaselinePosition;cdecl;external;

procedure gtk_box_append(var box:TGtkBox; var child:TGtkWidget);cdecl;external;

procedure gtk_box_prepend(var box:TGtkBox; var child:TGtkWidget);cdecl;external;

procedure gtk_box_remove(var box:TGtkBox; var child:TGtkWidget);cdecl;external;

procedure gtk_box_insert_child_after(var box:TGtkBox; var child:TGtkWidget; var sibling:TGtkWidget);cdecl;external;

procedure gtk_box_reorder_child_after(var box:TGtkBox; var child:TGtkWidget; var sibling:TGtkWidget);cdecl;external;

{$endif}


implementation

function GTK_TYPE_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_BOX:=gtk_box_get_type;
  end;

function GTK_BOX(obj : longint) : longint;
begin
  GTK_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BOX,GtkBox);
end;

function GTK_BOX_CLASS(klass : longint) : longint;
begin
  GTK_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BOX,GtkBoxClass);
end;

function GTK_IS_BOX(obj : longint) : longint;
begin
  GTK_IS_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BOX);
end;

function GTK_IS_BOX_CLASS(klass : longint) : longint;
begin
  GTK_IS_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BOX);
end;

function GTK_BOX_GET_CLASS(obj : longint) : longint;
begin
  GTK_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BOX,GtkBoxClass);
end;


end.