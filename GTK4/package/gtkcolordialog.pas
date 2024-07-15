unit gtkcolordialog;

interface

uses
  glib2, common_GTK, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  {G_DECLARE_FINAL_TYPE (GtkColorDialog, gtk_color_dialog, GTK, COLOR_DIALOG, GObject) }
  TGtkColorDialog = record
  end;
  PGtkColorDialog = ^TGtkColorDialog;

  TGtkColorDialogClass = record
    parent_class : TGObjectClass;
  end;
  PGtkColorDialogClass = ^TGtkColorDialogClass;

function gtk_color_dialog_new: PGtkColorDialog; cdecl; external gtklib;
function gtk_color_dialog_get_title(self: PGtkColorDialog): PChar; cdecl; external gtklib;
procedure gtk_color_dialog_set_title(self: PGtkColorDialog; title: PChar); cdecl; external gtklib;
function gtk_color_dialog_get_modal(self: PGtkColorDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_color_dialog_set_modal(self: PGtkColorDialog; modal: Tgboolean); cdecl; external gtklib;
function gtk_color_dialog_get_with_alpha(self: PGtkColorDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_color_dialog_set_with_alpha(self: PGtkColorDialog; with_alpha: Tgboolean); cdecl; external gtklib;
procedure gtk_color_dialog_choose_rgba(self: PGtkColorDialog; parent: PGtkWindow; initial_color: PGdkRGBA; cancellable: PGCancellable; callback: TGAsyncReadyCallback;
  user_data: Tgpointer); cdecl; external gtklib;
function gtk_color_dialog_choose_rgba_finish(self: PGtkColorDialog; Result: PGAsyncResult; error: PPGError): PGdkRGBA; cdecl; external gtklib;

// === Konventiert am: 14-7-24 16:12:16 ===

function gtk_color_dialog_get_type: TGType; cdecl; external gtklib;

function GTK_TYPE_COLOR_DIALOG: TGType;
function GTK_COLOR_DIALOG(obj: Pointer): PGtkColorDialog;
function GTK_COLOR_DIALOG_CLASS(klass: Pointer): PGtkColorDialogClass;
function GTK_IS_COLOR_DIALOG(obj: Pointer): Tgboolean;
function GTK_IS_COLOR_DIALOG_CLASS(klass: Pointer): Tgboolean;
function GTK_COLOR_DIALOG_GET_CLASS(obj: Pointer): PGtkColorDialogClass;

implementation

function GTK_TYPE_COLOR_DIALOG: TGType;
begin
//  Result := gtk_color_dialog_get_type;
end;

function GTK_COLOR_DIALOG(obj: Pointer): PGtkColorDialog;
begin
  Result := PGtkColorDialog(g_type_check_instance_cast(obj, GTK_TYPE_COLOR_DIALOG));
end;

function GTK_COLOR_DIALOG_CLASS(klass: Pointer): PGtkColorDialogClass;
begin
  Result := PGtkColorDialogClass(g_type_check_class_cast(klass, GTK_TYPE_COLOR_DIALOG));
end;

function GTK_IS_COLOR_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_COLOR_DIALOG);
end;

function GTK_IS_COLOR_DIALOG_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_COLOR_DIALOG);
end;

function GTK_COLOR_DIALOG_GET_CLASS(obj: Pointer): PGtkColorDialogClass;
begin
  Result := PGtkColorDialogClass(PGTypeInstance(obj)^.g_class);
end;



end.