
unit gtkmultisorter;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmultisorter.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmultisorter.h
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
PGtkMultiSorter  = ^GtkMultiSorter;
PGtkSorter  = ^GtkSorter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_MULTI_SORTER_H__}
{$define __GTK_MULTI_SORTER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkexpression.h>}
{$include <gtk/gtksorter.h>}


function GTK_TYPE_MULTI_SORTER : longint; { return type might be wrong }




function gtk_multi_sorter_new:PGtkMultiSorter;cdecl;external;

procedure gtk_multi_sorter_append(self:PGtkMultiSorter; sorter:PGtkSorter);cdecl;external;

procedure gtk_multi_sorter_remove(self:PGtkMultiSorter; position:Tguint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_MULTI_SORTER : longint; { return type might be wrong }
  begin
    GTK_TYPE_MULTI_SORTER:=gtk_multi_sorter_get_type;
  end;


end.