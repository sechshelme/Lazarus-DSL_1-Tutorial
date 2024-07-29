program project1;

uses
  //  Crt,
  glib2,
  ctypes,
  gst;

  // https://forums.developer.nvidia.com/t/pipeline-ends-after-4-seconds-with-gst-message-eos/253486

const
  GST_CLOCK_TIME_NONE = TGstClockTime(-1);


  function tutorial_main(argc: cint; argv: PPChar):cint;
  var
    Source, sink, pipeline: PGstElement;
  begin
    gst_init(@argc, @argv);

    //       pipeline := gst_parse_launch('playbin uri=file:/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/gstreamer/test.mp3', nil);
    //    pipeline := gst_parse_launch('playbin uri=file:/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/gstreamer/Tutorial/Boing_1.wav', nil);

    Source := gst_element_factory_make('videotestsrc', 'source');
    sink := gst_element_factory_make('autovideosink', 'sink');

    pipeline := gst_pipeline_new('test-pipeline');

    if (pipeline = nil) or (Source = nil) or (sink = nil) then  begin
      g_printerr('Not all elements could be created.'#10);
      Exit(-1);
    end;

    //gst_element_set_state(pipeline, GST_STATE_PLAYING);
    //
    //bus := gst_element_get_bus(pipeline);
    //msg := gst_bus_timed_pop_filtered(
    //  bus, GST_CLOCK_TIME_NONE, TGstMessageType(TGstMessageType(UInt64(GST_MESSAGE_ERROR) or UInt64(GST_MESSAGE_EOS))));
    //
    //if GST_MESSAGE_TYPE(msg) = GST_MESSAGE_ERROR then  begin
    //  g_printerr('An error occurred! Re-run with the GST_DEBUG=*:WARN environment variable set for more details.'#10);
    //end;
    //
    //gst_message_unref(msg);
    //gst_object_unref(bus)    ;
    //gst_element_set_state(pipeline,GST_STATE_NULL);
    //gst_object_unref(pipeline);
  end;

begin
  tutorial_main(argc, argv);
end.
