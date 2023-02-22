
  Type
  PGskRenderer  = ^GskRenderer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2019  Alexander Larsson
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
    }
{$ifndef __GSK_BROADWAY_RENDERER_H__}
{$define __GSK_BROADWAY_RENDERER_H__}  
{$include <gdk/gdk.h>}
{$include <gsk/gskrenderer.h>}
{$ifdef GDK_WINDOWING_BROADWAY}
{$include <gdk/broadway/gdkbroadway.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GSK_TYPE_BROADWAY_RENDERER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_BROADWAY_RENDERER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_BROADWAY_RENDERER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_BROADWAY_RENDERER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_BROADWAY_RENDERER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_BROADWAY_RENDERER_GET_CLASS(obj : longint) : longint;  


  type
    _GskBroadwayRenderer = GskBroadwayRenderer;
    _GskBroadwayRendererClass = GskBroadwayRendererClass;
  { Zeile entfernt  }

  function gsk_broadway_renderer_get_type:GType;

  { Zeile entfernt  }
  function gsk_broadway_renderer_new:^GskRenderer;

  { Zeile entfernt  }
{$endif}
  { GDK_WINDOWING_BROADWAY  }
{$endif}
  { __GSK_BROADWAY_RENDERER_H__  }
  { was #define dname def_expr }
  function GSK_TYPE_BROADWAY_RENDERER : longint; { return type might be wrong }
    begin
      GSK_TYPE_BROADWAY_RENDERER:=gsk_broadway_renderer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_BROADWAY_RENDERER(obj : longint) : longint;
  begin
    GSK_BROADWAY_RENDERER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GSK_TYPE_BROADWAY_RENDERER,GskBroadwayRenderer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_BROADWAY_RENDERER(obj : longint) : longint;
  begin
    GSK_IS_BROADWAY_RENDERER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GSK_TYPE_BROADWAY_RENDERER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_BROADWAY_RENDERER_CLASS(klass : longint) : longint;
  begin
    GSK_BROADWAY_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GSK_TYPE_BROADWAY_RENDERER,GskBroadwayRendererClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_IS_BROADWAY_RENDERER_CLASS(klass : longint) : longint;
  begin
    GSK_IS_BROADWAY_RENDERER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GSK_TYPE_BROADWAY_RENDERER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GSK_BROADWAY_RENDERER_GET_CLASS(obj : longint) : longint;
  begin
    GSK_BROADWAY_RENDERER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GSK_TYPE_BROADWAY_RENDERER,GskBroadwayRendererClass);
  end;

  function gsk_broadway_renderer_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gsk_broadway_renderer_new:PGskRenderer;
  begin
    { You must implement this function }
  end;

