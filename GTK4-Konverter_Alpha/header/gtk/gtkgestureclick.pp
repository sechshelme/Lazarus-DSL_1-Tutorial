
unit gtkgestureclick;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgestureclick.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkgestureclick.h
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
PGtkGesture  = ^GtkGesture;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_GESTURE_CLICK_H__}
{$define __GTK_GESTURE_CLICK_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkgesturesingle.h>}


function GTK_TYPE_GESTURE_CLICK : longint; { return type might be wrong }

function GTK_GESTURE_CLICK(o : longint) : longint;

function GTK_GESTURE_CLICK_CLASS(k : longint) : longint;

function GTK_IS_GESTURE_CLICK(o : longint) : longint;

function GTK_IS_GESTURE_CLICK_CLASS(k : longint) : longint;

function GTK_GESTURE_CLICK_GET_CLASS(o : longint) : longint;

type


function gtk_gesture_click_get_type:TGType;cdecl;external;

function gtk_gesture_click_new:PGtkGesture;cdecl;external;

{$endif}


implementation

function GTK_TYPE_GESTURE_CLICK : longint; { return type might be wrong }
  begin
    GTK_TYPE_GESTURE_CLICK:=gtk_gesture_click_get_type;
  end;

function GTK_GESTURE_CLICK(o : longint) : longint;
begin
  GTK_GESTURE_CLICK:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_GESTURE_CLICK,GtkGestureClick);
end;

function GTK_GESTURE_CLICK_CLASS(k : longint) : longint;
begin
  GTK_GESTURE_CLICK_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_GESTURE_CLICK,GtkGestureClickClass);
end;

function GTK_IS_GESTURE_CLICK(o : longint) : longint;
begin
  GTK_IS_GESTURE_CLICK:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_GESTURE_CLICK);
end;

function GTK_IS_GESTURE_CLICK_CLASS(k : longint) : longint;
begin
  GTK_IS_GESTURE_CLICK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_GESTURE_CLICK);
end;

function GTK_GESTURE_CLICK_GET_CLASS(o : longint) : longint;
begin
  GTK_GESTURE_CLICK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_GESTURE_CLICK,GtkGestureClickClass);
end;


end.