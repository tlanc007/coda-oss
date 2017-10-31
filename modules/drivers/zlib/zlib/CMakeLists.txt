
set (sources
    adler32.c
    crc32.c
    deflate.c
    infback.c
    inffast.c
    inflate.c
    inftrees.c
    trees.c
    zutil.c
    compress.c
    uncompr.c
    gzclose.c
    gzlib.c
    gzread.c
    gzwrite.c
)

add_library(libz ${sources})

add_subdirectory(contrib/minizip)
