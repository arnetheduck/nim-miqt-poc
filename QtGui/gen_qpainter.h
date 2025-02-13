#pragma once
#ifndef MIQT_QTGUI_GEN_QPAINTER_H
#define MIQT_QTGUI_GEN_QPAINTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBrush;
class QColor;
class QFont;
class QFontInfo;
class QFontMetrics;
class QGlyphRun;
class QImage;
class QLine;
class QLineF;
class QPaintDevice;
class QPaintEngine;
class QPainter;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPainter__PixmapFragment)
typedef QPainter::PixmapFragment QPainter__PixmapFragment;
#else
class QPainter__PixmapFragment;
#endif
class QPainterPath;
class QPen;
class QPicture;
class QPixmap;
class QPoint;
class QPointF;
class QRect;
class QRectF;
class QRegion;
class QStaticText;
class QTextItem;
class QTextOption;
class QTransform;
#else
typedef struct QBrush QBrush;
typedef struct QColor QColor;
typedef struct QFont QFont;
typedef struct QFontInfo QFontInfo;
typedef struct QFontMetrics QFontMetrics;
typedef struct QGlyphRun QGlyphRun;
typedef struct QImage QImage;
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPainter__PixmapFragment QPainter__PixmapFragment;
typedef struct QPainterPath QPainterPath;
typedef struct QPen QPen;
typedef struct QPicture QPicture;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QStaticText QStaticText;
typedef struct QTextItem QTextItem;
typedef struct QTextOption QTextOption;
typedef struct QTransform QTransform;
#endif

QPainter* QPainter_new();
QPainter* QPainter_new2(QPaintDevice* param1);
QPaintDevice* QPainter_device(const QPainter* self);
bool QPainter_begin(QPainter* self, QPaintDevice* param1);
bool QPainter_end(QPainter* self);
bool QPainter_isActive(const QPainter* self);
void QPainter_setCompositionMode(QPainter* self, int mode);
int QPainter_compositionMode(const QPainter* self);
QFont* QPainter_font(const QPainter* self);
void QPainter_setFont(QPainter* self, QFont* f);
QFontMetrics* QPainter_fontMetrics(const QPainter* self);
QFontInfo* QPainter_fontInfo(const QPainter* self);
void QPainter_setPen(QPainter* self, QColor* color);
void QPainter_setPenWithPen(QPainter* self, QPen* pen);
void QPainter_setPenWithStyle(QPainter* self, int style);
QPen* QPainter_pen(const QPainter* self);
void QPainter_setBrush(QPainter* self, QBrush* brush);
void QPainter_setBrushWithStyle(QPainter* self, int style);
QBrush* QPainter_brush(const QPainter* self);
void QPainter_setBackgroundMode(QPainter* self, int mode);
int QPainter_backgroundMode(const QPainter* self);
QPoint* QPainter_brushOrigin(const QPainter* self);
void QPainter_setBrushOrigin(QPainter* self, int x, int y);
void QPainter_setBrushOriginWithBrushOrigin(QPainter* self, QPoint* brushOrigin);
void QPainter_setBrushOrigin2(QPainter* self, QPointF* brushOrigin);
void QPainter_setBackground(QPainter* self, QBrush* bg);
QBrush* QPainter_background(const QPainter* self);
double QPainter_opacity(const QPainter* self);
void QPainter_setOpacity(QPainter* self, double opacity);
QRegion* QPainter_clipRegion(const QPainter* self);
QPainterPath* QPainter_clipPath(const QPainter* self);
void QPainter_setClipRect(QPainter* self, QRectF* param1);
void QPainter_setClipRectWithQRect(QPainter* self, QRect* param1);
void QPainter_setClipRect2(QPainter* self, int x, int y, int w, int h);
void QPainter_setClipRegion(QPainter* self, QRegion* param1);
void QPainter_setClipPath(QPainter* self, QPainterPath* path);
void QPainter_setClipping(QPainter* self, bool enable);
bool QPainter_hasClipping(const QPainter* self);
QRectF* QPainter_clipBoundingRect(const QPainter* self);
void QPainter_save(QPainter* self);
void QPainter_restore(QPainter* self);
void QPainter_setTransform(QPainter* self, QTransform* transform);
QTransform* QPainter_transform(const QPainter* self);
QTransform* QPainter_deviceTransform(const QPainter* self);
void QPainter_resetTransform(QPainter* self);
void QPainter_setWorldTransform(QPainter* self, QTransform* matrix);
QTransform* QPainter_worldTransform(const QPainter* self);
QTransform* QPainter_combinedTransform(const QPainter* self);
void QPainter_setWorldMatrixEnabled(QPainter* self, bool enabled);
bool QPainter_worldMatrixEnabled(const QPainter* self);
void QPainter_scale(QPainter* self, double sx, double sy);
void QPainter_shear(QPainter* self, double sh, double sv);
void QPainter_rotate(QPainter* self, double a);
void QPainter_translate(QPainter* self, QPointF* offset);
void QPainter_translateWithOffset(QPainter* self, QPoint* offset);
void QPainter_translate2(QPainter* self, double dx, double dy);
QRect* QPainter_window(const QPainter* self);
void QPainter_setWindow(QPainter* self, QRect* window);
void QPainter_setWindow2(QPainter* self, int x, int y, int w, int h);
QRect* QPainter_viewport(const QPainter* self);
void QPainter_setViewport(QPainter* self, QRect* viewport);
void QPainter_setViewport2(QPainter* self, int x, int y, int w, int h);
void QPainter_setViewTransformEnabled(QPainter* self, bool enable);
bool QPainter_viewTransformEnabled(const QPainter* self);
void QPainter_strokePath(QPainter* self, QPainterPath* path, QPen* pen);
void QPainter_fillPath(QPainter* self, QPainterPath* path, QBrush* brush);
void QPainter_drawPath(QPainter* self, QPainterPath* path);
void QPainter_drawPoint(QPainter* self, QPointF* pt);
void QPainter_drawPointWithQPoint(QPainter* self, QPoint* p);
void QPainter_drawPoint2(QPainter* self, int x, int y);
void QPainter_drawPoints(QPainter* self, QPointF* points, int pointCount);
void QPainter_drawPoints2(QPainter* self, QPoint* points, int pointCount);
void QPainter_drawLine(QPainter* self, QLineF* line);
void QPainter_drawLineWithLine(QPainter* self, QLine* line);
void QPainter_drawLine2(QPainter* self, int x1, int y1, int x2, int y2);
void QPainter_drawLine3(QPainter* self, QPoint* p1, QPoint* p2);
void QPainter_drawLine4(QPainter* self, QPointF* p1, QPointF* p2);
void QPainter_drawLines(QPainter* self, QLineF* lines, int lineCount);
void QPainter_drawLinesWithLines(QPainter* self, struct miqt_array /* of QLineF* */  lines);
void QPainter_drawLines2(QPainter* self, QPointF* pointPairs, int lineCount);
void QPainter_drawLinesWithPointPairs(QPainter* self, struct miqt_array /* of QPointF* */  pointPairs);
void QPainter_drawLines3(QPainter* self, QLine* lines, int lineCount);
void QPainter_drawLines4(QPainter* self, struct miqt_array /* of QLine* */  lines);
void QPainter_drawLines5(QPainter* self, QPoint* pointPairs, int lineCount);
void QPainter_drawLines6(QPainter* self, struct miqt_array /* of QPoint* */  pointPairs);
void QPainter_drawRect(QPainter* self, QRectF* rect);
void QPainter_drawRect2(QPainter* self, int x1, int y1, int w, int h);
void QPainter_drawRectWithRect(QPainter* self, QRect* rect);
void QPainter_drawRects(QPainter* self, QRectF* rects, int rectCount);
void QPainter_drawRectsWithRectangles(QPainter* self, struct miqt_array /* of QRectF* */  rectangles);
void QPainter_drawRects2(QPainter* self, QRect* rects, int rectCount);
void QPainter_drawRects3(QPainter* self, struct miqt_array /* of QRect* */  rectangles);
void QPainter_drawEllipse(QPainter* self, QRectF* r);
void QPainter_drawEllipseWithQRect(QPainter* self, QRect* r);
void QPainter_drawEllipse2(QPainter* self, int x, int y, int w, int h);
void QPainter_drawEllipse3(QPainter* self, QPointF* center, double rx, double ry);
void QPainter_drawEllipse4(QPainter* self, QPoint* center, int rx, int ry);
void QPainter_drawPolyline(QPainter* self, QPointF* points, int pointCount);
void QPainter_drawPolyline2(QPainter* self, QPoint* points, int pointCount);
void QPainter_drawPolygon(QPainter* self, QPointF* points, int pointCount);
void QPainter_drawPolygon2(QPainter* self, QPoint* points, int pointCount);
void QPainter_drawConvexPolygon(QPainter* self, QPointF* points, int pointCount);
void QPainter_drawConvexPolygon2(QPainter* self, QPoint* points, int pointCount);
void QPainter_drawArc(QPainter* self, QRectF* rect, int a, int alen);
void QPainter_drawArc2(QPainter* self, QRect* param1, int a, int alen);
void QPainter_drawArc3(QPainter* self, int x, int y, int w, int h, int a, int alen);
void QPainter_drawPie(QPainter* self, QRectF* rect, int a, int alen);
void QPainter_drawPie2(QPainter* self, int x, int y, int w, int h, int a, int alen);
void QPainter_drawPie3(QPainter* self, QRect* param1, int a, int alen);
void QPainter_drawChord(QPainter* self, QRectF* rect, int a, int alen);
void QPainter_drawChord2(QPainter* self, int x, int y, int w, int h, int a, int alen);
void QPainter_drawChord3(QPainter* self, QRect* param1, int a, int alen);
void QPainter_drawRoundedRect(QPainter* self, QRectF* rect, double xRadius, double yRadius);
void QPainter_drawRoundedRect2(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius);
void QPainter_drawRoundedRect3(QPainter* self, QRect* rect, double xRadius, double yRadius);
void QPainter_drawTiledPixmap(QPainter* self, QRectF* rect, QPixmap* pm);
void QPainter_drawTiledPixmap2(QPainter* self, int x, int y, int w, int h, QPixmap* param5);
void QPainter_drawTiledPixmap3(QPainter* self, QRect* param1, QPixmap* param2);
void QPainter_drawPicture(QPainter* self, QPointF* p, QPicture* picture);
void QPainter_drawPicture2(QPainter* self, int x, int y, QPicture* picture);
void QPainter_drawPicture3(QPainter* self, QPoint* p, QPicture* picture);
void QPainter_drawPixmap(QPainter* self, QRectF* targetRect, QPixmap* pixmap, QRectF* sourceRect);
void QPainter_drawPixmap2(QPainter* self, QRect* targetRect, QPixmap* pixmap, QRect* sourceRect);
void QPainter_drawPixmap3(QPainter* self, int x, int y, int w, int h, QPixmap* pm, int sx, int sy, int sw, int sh);
void QPainter_drawPixmap4(QPainter* self, int x, int y, QPixmap* pm, int sx, int sy, int sw, int sh);
void QPainter_drawPixmap5(QPainter* self, QPointF* p, QPixmap* pm, QRectF* sr);
void QPainter_drawPixmap6(QPainter* self, QPoint* p, QPixmap* pm, QRect* sr);
void QPainter_drawPixmap7(QPainter* self, QPointF* p, QPixmap* pm);
void QPainter_drawPixmap8(QPainter* self, QPoint* p, QPixmap* pm);
void QPainter_drawPixmap9(QPainter* self, int x, int y, QPixmap* pm);
void QPainter_drawPixmap10(QPainter* self, QRect* r, QPixmap* pm);
void QPainter_drawPixmap11(QPainter* self, int x, int y, int w, int h, QPixmap* pm);
void QPainter_drawPixmapFragments(QPainter* self, QPainter__PixmapFragment* fragments, int fragmentCount, QPixmap* pixmap);
void QPainter_drawImage(QPainter* self, QRectF* targetRect, QImage* image, QRectF* sourceRect);
void QPainter_drawImage2(QPainter* self, QRect* targetRect, QImage* image, QRect* sourceRect);
void QPainter_drawImage3(QPainter* self, QPointF* p, QImage* image, QRectF* sr);
void QPainter_drawImage4(QPainter* self, QPoint* p, QImage* image, QRect* sr);
void QPainter_drawImage5(QPainter* self, QRectF* r, QImage* image);
void QPainter_drawImage6(QPainter* self, QRect* r, QImage* image);
void QPainter_drawImage7(QPainter* self, QPointF* p, QImage* image);
void QPainter_drawImage8(QPainter* self, QPoint* p, QImage* image);
void QPainter_drawImage9(QPainter* self, int x, int y, QImage* image);
void QPainter_setLayoutDirection(QPainter* self, int direction);
int QPainter_layoutDirection(const QPainter* self);
void QPainter_drawGlyphRun(QPainter* self, QPointF* position, QGlyphRun* glyphRun);
void QPainter_drawStaticText(QPainter* self, QPointF* topLeftPosition, QStaticText* staticText);
void QPainter_drawStaticText2(QPainter* self, QPoint* topLeftPosition, QStaticText* staticText);
void QPainter_drawStaticText3(QPainter* self, int left, int top, QStaticText* staticText);
void QPainter_drawText(QPainter* self, QPointF* p, struct miqt_string s);
void QPainter_drawText2(QPainter* self, QPoint* p, struct miqt_string s);
void QPainter_drawText3(QPainter* self, int x, int y, struct miqt_string s);
void QPainter_drawText4(QPainter* self, QPointF* p, struct miqt_string str, int tf, int justificationPadding);
void QPainter_drawText5(QPainter* self, QRectF* r, int flags, struct miqt_string text);
void QPainter_drawText6(QPainter* self, QRect* r, int flags, struct miqt_string text);
void QPainter_drawText7(QPainter* self, int x, int y, int w, int h, int flags, struct miqt_string text);
void QPainter_drawText8(QPainter* self, QRectF* r, struct miqt_string text);
QRectF* QPainter_boundingRect(QPainter* self, QRectF* rect, int flags, struct miqt_string text);
QRect* QPainter_boundingRect2(QPainter* self, QRect* rect, int flags, struct miqt_string text);
QRect* QPainter_boundingRect3(QPainter* self, int x, int y, int w, int h, int flags, struct miqt_string text);
QRectF* QPainter_boundingRect4(QPainter* self, QRectF* rect, struct miqt_string text);
void QPainter_drawTextItem(QPainter* self, QPointF* p, QTextItem* ti);
void QPainter_drawTextItem2(QPainter* self, int x, int y, QTextItem* ti);
void QPainter_drawTextItem3(QPainter* self, QPoint* p, QTextItem* ti);
void QPainter_fillRect(QPainter* self, QRectF* param1, QBrush* param2);
void QPainter_fillRect2(QPainter* self, int x, int y, int w, int h, QBrush* param5);
void QPainter_fillRect3(QPainter* self, QRect* param1, QBrush* param2);
void QPainter_fillRect4(QPainter* self, QRectF* param1, QColor* color);
void QPainter_fillRect5(QPainter* self, int x, int y, int w, int h, QColor* color);
void QPainter_fillRect6(QPainter* self, QRect* param1, QColor* color);
void QPainter_fillRect7(QPainter* self, int x, int y, int w, int h, int c);
void QPainter_fillRect8(QPainter* self, QRect* r, int c);
void QPainter_fillRect9(QPainter* self, QRectF* r, int c);
void QPainter_fillRect10(QPainter* self, int x, int y, int w, int h, int style);
void QPainter_fillRect11(QPainter* self, QRect* r, int style);
void QPainter_fillRect12(QPainter* self, QRectF* r, int style);
void QPainter_fillRect13(QPainter* self, int x, int y, int w, int h, int preset);
void QPainter_fillRect14(QPainter* self, QRect* r, int preset);
void QPainter_fillRect15(QPainter* self, QRectF* r, int preset);
void QPainter_eraseRect(QPainter* self, QRectF* param1);
void QPainter_eraseRect2(QPainter* self, int x, int y, int w, int h);
void QPainter_eraseRectWithQRect(QPainter* self, QRect* param1);
void QPainter_setRenderHint(QPainter* self, int hint);
void QPainter_setRenderHints(QPainter* self, int hints);
int QPainter_renderHints(const QPainter* self);
bool QPainter_testRenderHint(const QPainter* self, int hint);
QPaintEngine* QPainter_paintEngine(const QPainter* self);
void QPainter_beginNativePainting(QPainter* self);
void QPainter_endNativePainting(QPainter* self);
void QPainter_setClipRect22(QPainter* self, QRectF* param1, int op);
void QPainter_setClipRect23(QPainter* self, QRect* param1, int op);
void QPainter_setClipRect5(QPainter* self, int x, int y, int w, int h, int op);
void QPainter_setClipRegion2(QPainter* self, QRegion* param1, int op);
void QPainter_setClipPath2(QPainter* self, QPainterPath* path, int op);
void QPainter_setTransform2(QPainter* self, QTransform* transform, bool combine);
void QPainter_setWorldTransform2(QPainter* self, QTransform* matrix, bool combine);
void QPainter_drawPolygon32(QPainter* self, QPointF* points, int pointCount, int fillRule);
void QPainter_drawPolygon33(QPainter* self, QPoint* points, int pointCount, int fillRule);
void QPainter_drawRoundedRect4(QPainter* self, QRectF* rect, double xRadius, double yRadius, int mode);
void QPainter_drawRoundedRect7(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius, int mode);
void QPainter_drawRoundedRect42(QPainter* self, QRect* rect, double xRadius, double yRadius, int mode);
void QPainter_drawTiledPixmap32(QPainter* self, QRectF* rect, QPixmap* pm, QPointF* offset);
void QPainter_drawTiledPixmap6(QPainter* self, int x, int y, int w, int h, QPixmap* param5, int sx);
void QPainter_drawTiledPixmap7(QPainter* self, int x, int y, int w, int h, QPixmap* param5, int sx, int sy);
void QPainter_drawTiledPixmap33(QPainter* self, QRect* param1, QPixmap* param2, QPoint* param3);
void QPainter_drawPixmapFragments4(QPainter* self, QPainter__PixmapFragment* fragments, int fragmentCount, QPixmap* pixmap, int hints);
void QPainter_drawImage42(QPainter* self, QRectF* targetRect, QImage* image, QRectF* sourceRect, int flags);
void QPainter_drawImage43(QPainter* self, QRect* targetRect, QImage* image, QRect* sourceRect, int flags);
void QPainter_drawImage44(QPainter* self, QPointF* p, QImage* image, QRectF* sr, int flags);
void QPainter_drawImage45(QPainter* self, QPoint* p, QImage* image, QRect* sr, int flags);
void QPainter_drawImage46(QPainter* self, int x, int y, QImage* image, int sx);
void QPainter_drawImage52(QPainter* self, int x, int y, QImage* image, int sx, int sy);
void QPainter_drawImage62(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw);
void QPainter_drawImage72(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw, int sh);
void QPainter_drawImage82(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw, int sh, int flags);
void QPainter_drawText42(QPainter* self, QRectF* r, int flags, struct miqt_string text, QRectF* br);
void QPainter_drawText43(QPainter* self, QRect* r, int flags, struct miqt_string text, QRect* br);
void QPainter_drawText72(QPainter* self, int x, int y, int w, int h, int flags, struct miqt_string text, QRect* br);
void QPainter_drawText32(QPainter* self, QRectF* r, struct miqt_string text, QTextOption* o);
QRectF* QPainter_boundingRect32(QPainter* self, QRectF* rect, struct miqt_string text, QTextOption* o);
void QPainter_setRenderHint2(QPainter* self, int hint, bool on);
void QPainter_setRenderHints2(QPainter* self, int hints, bool on);
void QPainter_delete(QPainter* self);

QPainter__PixmapFragment* QPainter__PixmapFragment_create(QPointF* pos, QRectF* sourceRect);
QPainter__PixmapFragment* QPainter__PixmapFragment_create3(QPointF* pos, QRectF* sourceRect, double scaleX);
QPainter__PixmapFragment* QPainter__PixmapFragment_create4(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY);
QPainter__PixmapFragment* QPainter__PixmapFragment_create5(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation);
QPainter__PixmapFragment* QPainter__PixmapFragment_create6(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation, double opacity);
void QPainter__PixmapFragment_delete(QPainter__PixmapFragment* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
