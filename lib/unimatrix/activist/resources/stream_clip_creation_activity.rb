module Unimatrix::Activist

  class StreamClipCreationActivity < Activity
    field       :in_point
    field       :out_point
    field       :original_stream_id
    field       :assembled_weaver_url
    field       :video_file_url
    field       :video_binary_id
    field       :clip_name
  end

end
