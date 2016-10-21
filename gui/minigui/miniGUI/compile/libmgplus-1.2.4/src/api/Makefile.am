TOP_DIR=..
INCLUDES=-I.. -I../agg -I../../include -I../agg/font_freetype
SUBDIRS=

noinst_LTLIBRARIES=libapi.la

if MGPLUS_LFRDR_FASHION
SRC_FILES = path.cpp graphics.cpp pen.cpp brush.cpp lf_fashion.cpp  \
			opt_argb32.cpp opt_rgba32.cpp opt_bgra32.cpp opt_abgr32.cpp \
			opt_rgb24.cpp opt_bgr24.cpp opt_rgb555.cpp opt_rgb565.cpp
else
SRC_FILES = path.cpp graphics.cpp pen.cpp brush.cpp \
			opt_argb32.cpp opt_rgba32.cpp opt_bgra32.cpp opt_abgr32.cpp \
			opt_rgb24.cpp opt_bgr24.cpp opt_rgb555.cpp opt_rgb565.cpp
endif

HDR_FILES = path.h graphics.h pen.h brush.h self_stroke.h

libapi_la_SOURCES = $(SRC_FILES) $(HDR_FILES)
LIB_NAME=libapi

EXTRA_DIST = $(SRC_FILES) opt_basic.cpp
