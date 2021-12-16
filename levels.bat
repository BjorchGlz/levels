sox normal.wav bass.flac lowpass 200 lowpass 200
sox normal.wav mids.flac lowpass 3k lowpass 3k highpass 200 highpass 200
sox normal.wav high.flac highpass 3k highpass 3k

REM LUFS = -14, -20
REM bass = -20, -26
REM mids = -17, -23
REM high = -26, -32

bs1770gain normal.wav -ip --norm -14
bs1770gain bass.flac -ip --norm -20
bs1770gain mids.flac -ip --norm -17
bs1770gain high.flac -ip --norm -26
del bass.flac
del mids.flac
del high.flac
