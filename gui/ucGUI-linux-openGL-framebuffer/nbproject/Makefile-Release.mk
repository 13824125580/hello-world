#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Automotive.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Bitmap.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Bitmap4bpp.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Circle.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ColorBar.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ColorList.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Cursor.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Dialog.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Font.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_FrameWin.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Graph.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_HardwareInfo.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Intro.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_LUT.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_MemDevB.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Messagebox.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Navi.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Polygon.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ProgBar.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Speed.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Touch.o \
	${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_WM.o \
	${OBJECTDIR}/src/Application/GUIDemo/MainTask.o \
	${OBJECTDIR}/src/Application/GUIDemo/MicriumLogo.o \
	${OBJECTDIR}/src/Application/GUIDemo/MicriumLogoWRed.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAAArc.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar2.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar4.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAACircle.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAALib.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAALine.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAAPoly.o \
	${OBJECTDIR}/src/GUI/AntiAlias/GUIAAPolyOut.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP111.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP222.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP233.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP323.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP332.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_12.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_12_1.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_16.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP555.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP556.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP565.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP655.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP666.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP8666.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP8666_1.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDP888.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM233.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM323.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM332.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM444_12.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM444_16.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM555.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM556.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM565.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM655.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM666.o \
	${OBJECTDIR}/src/GUI/ConvertColor/LCDPM888.o \
	${OBJECTDIR}/src/GUI/ConvertMono/LCDP0.o \
	${OBJECTDIR}/src/GUI/ConvertMono/LCDP2.o \
	${OBJECTDIR}/src/GUI/ConvertMono/LCDP4.o \
	${OBJECTDIR}/src/GUI/Core/GUI2DLib.o \
	${OBJECTDIR}/src/GUI/Core/GUIAlloc.o \
	${OBJECTDIR}/src/GUI/Core/GUIArc.o \
	${OBJECTDIR}/src/GUI/Core/GUIChar.o \
	${OBJECTDIR}/src/GUI/Core/GUICharLine.o \
	${OBJECTDIR}/src/GUI/Core/GUICharM.o \
	${OBJECTDIR}/src/GUI/Core/GUICharP.o \
	${OBJECTDIR}/src/GUI/Core/GUICirc.o \
	${OBJECTDIR}/src/GUI/Core/GUIColor2Index.o \
	${OBJECTDIR}/src/GUI/Core/GUICore.o \
	${OBJECTDIR}/src/GUI/Core/GUICurs.o \
	${OBJECTDIR}/src/GUI/Core/GUIEncJS.o \
	${OBJECTDIR}/src/GUI/Core/GUIIndex2Color.o \
	${OBJECTDIR}/src/GUI/Core/GUIPolyE.o \
	${OBJECTDIR}/src/GUI/Core/GUIPolyM.o \
	${OBJECTDIR}/src/GUI/Core/GUIPolyR.o \
	${OBJECTDIR}/src/GUI/Core/GUIRealloc.o \
	${OBJECTDIR}/src/GUI/Core/GUIStream.o \
	${OBJECTDIR}/src/GUI/Core/GUITask.o \
	${OBJECTDIR}/src/GUI/Core/GUITime.o \
	${OBJECTDIR}/src/GUI/Core/GUITimer.o \
	${OBJECTDIR}/src/GUI/Core/GUIUC0.o \
	${OBJECTDIR}/src/GUI/Core/GUIVal.o \
	${OBJECTDIR}/src/GUI/Core/GUIValf.o \
	${OBJECTDIR}/src/GUI/Core/GUI_ALLOC_AllocInit.o \
	${OBJECTDIR}/src/GUI/Core/GUI_ALLOC_AllocZero.o \
	${OBJECTDIR}/src/GUI/Core/GUI_AddBin.o \
	${OBJECTDIR}/src/GUI/Core/GUI_AddDec.o \
	${OBJECTDIR}/src/GUI/Core/GUI_AddDecMin.o \
	${OBJECTDIR}/src/GUI/Core/GUI_AddDecShift.o \
	${OBJECTDIR}/src/GUI/Core/GUI_AddHex.o \
	${OBJECTDIR}/src/GUI/Core/GUI_AddKeyMsgHook.o \
	${OBJECTDIR}/src/GUI/Core/GUI_BMP.o \
	${OBJECTDIR}/src/GUI/Core/GUI_BMP_Serialize.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CalcColorDist.o \
	${OBJECTDIR}/src/GUI/Core/GUI_ClearRectEx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_Color2VisColor.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowL.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowLI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowLPx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowM.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowMI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowMPx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowS.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowSI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowSPx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossL.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossLI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossLPx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossM.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossMI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossMPx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossS.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossSI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossSPx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderM.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderMI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderMPx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorPal.o \
	${OBJECTDIR}/src/GUI/Core/GUI_CursorPalI.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispBin.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispCEOL.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispChar.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispChars.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispHex.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispString.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispStringAt.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispStringAtCEOL.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispStringHCenter.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRectEx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRectWrap.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DispStringLen.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapEx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapExp.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapMag.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_555.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_565.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_888.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawFocusRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawGraph.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawGraphEx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawHLine.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawLine.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawPie.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawPixel.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawPoint.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawPolygon.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawPolyline.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawRectEx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_DrawVLine.o \
	${OBJECTDIR}/src/GUI/Core/GUI_ErrorOut.o \
	${OBJECTDIR}/src/GUI/Core/GUI_Exec.o \
	${OBJECTDIR}/src/GUI/Core/GUI_FillPolygon.o \
	${OBJECTDIR}/src/GUI/Core/GUI_FillRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_FillRectEx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GIF.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetBitmapPixelColor.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetBitmapPixelIndex.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetClientRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetColor.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetDispPos.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetDrawMode.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetFont.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetFontInfo.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetFontSizeY.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetLineStyle.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetOrg.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetStringDistX.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetTextAlign.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetTextExtend.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetTextMode.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetVersionString.o \
	${OBJECTDIR}/src/GUI/Core/GUI_GetYSizeOfFont.o \
	${OBJECTDIR}/src/GUI/Core/GUI_Goto.o \
	${OBJECTDIR}/src/GUI/Core/GUI_InitLUT.o \
	${OBJECTDIR}/src/GUI/Core/GUI_InvertRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_IsInFont.o \
	${OBJECTDIR}/src/GUI/Core/GUI_Log.o \
	${OBJECTDIR}/src/GUI/Core/GUI_MOUSE.o \
	${OBJECTDIR}/src/GUI/Core/GUI_MOUSE_DriverPS2.o \
	${OBJECTDIR}/src/GUI/Core/GUI_MergeRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_MoveRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_OnKey.o \
	${OBJECTDIR}/src/GUI/Core/GUI_PID.o \
	${OBJECTDIR}/src/GUI/Core/GUI_Pen.o \
	${OBJECTDIR}/src/GUI/Core/GUI_RectsIntersect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SIF.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SIF_Prop.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SaveContext.o \
	${OBJECTDIR}/src/GUI/Core/GUI_ScreenSize.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SelectLCD.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SelectLayer.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetClipRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetColor.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetColorIndex.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetDecChar.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetDefault.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetDrawMode.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetFont.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetLBorder.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetLUTColor.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetLUTColorEx.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetLUTEntry.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetLineStyle.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetOrg.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetPixelIndex.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetTextMode.o \
	${OBJECTDIR}/src/GUI/Core/GUI_SetTextStyle.o \
	${OBJECTDIR}/src/GUI/Core/GUI_TOUCH.o \
	${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_DriverAnalog.o \
	${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_StoreState.o \
	${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_StoreUnstable.o \
	${OBJECTDIR}/src/GUI/Core/GUI_UC.o \
	${OBJECTDIR}/src/GUI/Core/GUI_UC_ConvertUC2UTF8.o \
	${OBJECTDIR}/src/GUI/Core/GUI_UC_ConvertUTF82UC.o \
	${OBJECTDIR}/src/GUI/Core/GUI_UC_DispString.o \
	${OBJECTDIR}/src/GUI/Core/GUI_UC_EncodeNone.o \
	${OBJECTDIR}/src/GUI/Core/GUI_UC_EncodeUTF8.o \
	${OBJECTDIR}/src/GUI/Core/GUI_WaitEvent.o \
	${OBJECTDIR}/src/GUI/Core/GUI_WaitKey.o \
	${OBJECTDIR}/src/GUI/Core/GUI_Warn.o \
	${OBJECTDIR}/src/GUI/Core/GUI__AddSpaceHex.o \
	${OBJECTDIR}/src/GUI/Core/GUI__Arabic.o \
	${OBJECTDIR}/src/GUI/Core/GUI__CalcTextRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI__DivideRound.o \
	${OBJECTDIR}/src/GUI/Core/GUI__DivideRound32.o \
	${OBJECTDIR}/src/GUI/Core/GUI__DrawBitmap16bpp.o \
	${OBJECTDIR}/src/GUI/Core/GUI__GetCursorPos.o \
	${OBJECTDIR}/src/GUI/Core/GUI__GetFontSizeY.o \
	${OBJECTDIR}/src/GUI/Core/GUI__GetNumChars.o \
	${OBJECTDIR}/src/GUI/Core/GUI__HandleEOLine.o \
	${OBJECTDIR}/src/GUI/Core/GUI__IntersectRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI__IntersectRects.o \
	${OBJECTDIR}/src/GUI/Core/GUI__Read.o \
	${OBJECTDIR}/src/GUI/Core/GUI__ReduceRect.o \
	${OBJECTDIR}/src/GUI/Core/GUI__SetText.o \
	${OBJECTDIR}/src/GUI/Core/GUI__Wrap.o \
	${OBJECTDIR}/src/GUI/Core/GUI__memset.o \
	${OBJECTDIR}/src/GUI/Core/GUI__memset16.o \
	${OBJECTDIR}/src/GUI/Core/GUI__strcmp.o \
	${OBJECTDIR}/src/GUI/Core/GUI__strlen.o \
	${OBJECTDIR}/src/GUI/Core/LCD.o \
	${OBJECTDIR}/src/GUI/Core/LCDAA.o \
	${OBJECTDIR}/src/GUI/Core/LCDColor.o \
	${OBJECTDIR}/src/GUI/Core/LCDGetP.o \
	${OBJECTDIR}/src/GUI/Core/LCDInfo.o \
	${OBJECTDIR}/src/GUI/Core/LCDInfo0.o \
	${OBJECTDIR}/src/GUI/Core/LCDInfo1.o \
	${OBJECTDIR}/src/GUI/Core/LCDL0Delta.o \
	${OBJECTDIR}/src/GUI/Core/LCDL0Mag.o \
	${OBJECTDIR}/src/GUI/Core/LCDP1.o \
	${OBJECTDIR}/src/GUI/Core/LCDP565_Index2Color.o \
	${OBJECTDIR}/src/GUI/Core/LCDP888_Index2Color.o \
	${OBJECTDIR}/src/GUI/Core/LCDPM565_Index2Color.o \
	${OBJECTDIR}/src/GUI/Core/LCDPM888_Index2Color.o \
	${OBJECTDIR}/src/GUI/Core/LCDRLE16.o \
	${OBJECTDIR}/src/GUI/Core/LCDRLE4.o \
	${OBJECTDIR}/src/GUI/Core/LCDRLE8.o \
	${OBJECTDIR}/src/GUI/Core/LCD_API.o \
	${OBJECTDIR}/src/GUI/Core/LCD_DrawVLine.o \
	${OBJECTDIR}/src/GUI/Core/LCD_GetColorIndex.o \
	${OBJECTDIR}/src/GUI/Core/LCD_GetEx.o \
	${OBJECTDIR}/src/GUI/Core/LCD_GetNumDisplays.o \
	${OBJECTDIR}/src/GUI/Core/LCD_GetPixelColor.o \
	${OBJECTDIR}/src/GUI/Core/LCD_Index2ColorEx.o \
	${OBJECTDIR}/src/GUI/Core/LCD_L0_Generic.o \
	${OBJECTDIR}/src/GUI/Core/LCD_Mirror.o \
	${OBJECTDIR}/src/GUI/Core/LCD_MixColors256.o \
	${OBJECTDIR}/src/GUI/Core/LCD_ReadRect.o \
	${OBJECTDIR}/src/GUI/Core/LCD_Rotate180.o \
	${OBJECTDIR}/src/GUI/Core/LCD_RotateCCW.o \
	${OBJECTDIR}/src/GUI/Core/LCD_RotateCW.o \
	${OBJECTDIR}/src/GUI/Core/LCD_SelectLCD.o \
	${OBJECTDIR}/src/GUI/Core/LCD_SetAPI.o \
	${OBJECTDIR}/src/GUI/Core/LCD_SetClipRectEx.o \
	${OBJECTDIR}/src/GUI/Core/LCD_UpdateColorIndices.o \
	${OBJECTDIR}/src/GUI/Font/F08_1.o \
	${OBJECTDIR}/src/GUI/Font/F08_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F10S_1.o \
	${OBJECTDIR}/src/GUI/Font/F10S_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F10_1.o \
	${OBJECTDIR}/src/GUI/Font/F10_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F13B_1.o \
	${OBJECTDIR}/src/GUI/Font/F13B_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F13HB_1.o \
	${OBJECTDIR}/src/GUI/Font/F13HB_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F13H_1.o \
	${OBJECTDIR}/src/GUI/Font/F13H_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F13_1.o \
	${OBJECTDIR}/src/GUI/Font/F13_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F16B_1.o \
	${OBJECTDIR}/src/GUI/Font/F16B_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F16_1.o \
	${OBJECTDIR}/src/GUI/Font/F16_1HK.o \
	${OBJECTDIR}/src/GUI/Font/F16_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F16_HK.o \
	${OBJECTDIR}/src/GUI/Font/F24B_1.o \
	${OBJECTDIR}/src/GUI/Font/F24B_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F24_1.o \
	${OBJECTDIR}/src/GUI/Font/F24_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F32B_1.o \
	${OBJECTDIR}/src/GUI/Font/F32B_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F32_1.o \
	${OBJECTDIR}/src/GUI/Font/F32_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F4x6.o \
	${OBJECTDIR}/src/GUI/Font/F6x8.o \
	${OBJECTDIR}/src/GUI/Font/F8x10_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F8x12_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F8x13_1.o \
	${OBJECTDIR}/src/GUI/Font/F8x13_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F8x15B_1.o \
	${OBJECTDIR}/src/GUI/Font/F8x15B_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/F8x16.o \
	${OBJECTDIR}/src/GUI/Font/F8x8.o \
	${OBJECTDIR}/src/GUI/Font/FComic18B_1.o \
	${OBJECTDIR}/src/GUI/Font/FComic18B_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/FComic24B_1.o \
	${OBJECTDIR}/src/GUI/Font/FComic24B_ASCII.o \
	${OBJECTDIR}/src/GUI/Font/FD24x32.o \
	${OBJECTDIR}/src/GUI/Font/FD32.o \
	${OBJECTDIR}/src/GUI/Font/FD36x48.o \
	${OBJECTDIR}/src/GUI/Font/FD48.o \
	${OBJECTDIR}/src/GUI/Font/FD48x64.o \
	${OBJECTDIR}/src/GUI/Font/FD60x80.o \
	${OBJECTDIR}/src/GUI/Font/FD64.o \
	${OBJECTDIR}/src/GUI/Font/FD80.o \
	${OBJECTDIR}/src/GUI/LCDDriver/LCDWin.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_1.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_16.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_8.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_AA.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Auto.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Banding.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Clear.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CmpWithLCD.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CopyFromLCD.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CreateFixed.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetDataPtr.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetXSize.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetYSize.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Measure.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_ReduceYSize.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_SetOrg.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Usage.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_UsageBM.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Write.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_WriteAlpha.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_WriteEx.o \
	${OBJECTDIR}/src/GUI/MemDev/GUIDEV_XY2PTR.o \
	${OBJECTDIR}/src/GUI/MultiLayer/LCD_1.o \
	${OBJECTDIR}/src/GUI/MultiLayer/LCD_2.o \
	${OBJECTDIR}/src/GUI/MultiLayer/LCD_3.o \
	${OBJECTDIR}/src/GUI/MultiLayer/LCD_4.o \
	${OBJECTDIR}/src/GUI/WM/WM.o \
	${OBJECTDIR}/src/GUI/WM/WMMemDev.o \
	${OBJECTDIR}/src/GUI/WM/WMTouch.o \
	${OBJECTDIR}/src/GUI/WM/WM_AttachWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM_BringToBottom.o \
	${OBJECTDIR}/src/GUI/WM/WM_BringToTop.o \
	${OBJECTDIR}/src/GUI/WM/WM_Broadcast.o \
	${OBJECTDIR}/src/GUI/WM/WM_CheckScrollPos.o \
	${OBJECTDIR}/src/GUI/WM/WM_CriticalHandle.o \
	${OBJECTDIR}/src/GUI/WM/WM_DIAG.o \
	${OBJECTDIR}/src/GUI/WM/WM_EnableWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM_ForEachDesc.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetBkColor.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetCallback.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetClientRect.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetClientWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetDesktopWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetDesktopWindowEx.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetDiagInfo.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetDialogItem.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetFirstChild.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetFlags.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetFocussedWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetId.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetInsideRect.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetInsideRectExScrollbar.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetInvalidRect.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetNextSibling.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetOrg.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetParent.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetPrevSibling.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetScrollPartner.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetScrollPos.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetScrollState.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetScrollbar.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetWindowRect.o \
	${OBJECTDIR}/src/GUI/WM/WM_GetWindowSize.o \
	${OBJECTDIR}/src/GUI/WM/WM_HasCaptured.o \
	${OBJECTDIR}/src/GUI/WM/WM_HasFocus.o \
	${OBJECTDIR}/src/GUI/WM/WM_Hide.o \
	${OBJECTDIR}/src/GUI/WM/WM_InvalidateArea.o \
	${OBJECTDIR}/src/GUI/WM/WM_IsCompletelyVisible.o \
	${OBJECTDIR}/src/GUI/WM/WM_IsEnabled.o \
	${OBJECTDIR}/src/GUI/WM/WM_IsFocussable.o \
	${OBJECTDIR}/src/GUI/WM/WM_IsVisible.o \
	${OBJECTDIR}/src/GUI/WM/WM_IsWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM_MakeModal.o \
	${OBJECTDIR}/src/GUI/WM/WM_Move.o \
	${OBJECTDIR}/src/GUI/WM/WM_MoveChildTo.o \
	${OBJECTDIR}/src/GUI/WM/WM_NotifyParent.o \
	${OBJECTDIR}/src/GUI/WM/WM_OnKey.o \
	${OBJECTDIR}/src/GUI/WM/WM_PID__GetPrevState.o \
	${OBJECTDIR}/src/GUI/WM/WM_Paint.o \
	${OBJECTDIR}/src/GUI/WM/WM_PaintWindowAndDescs.o \
	${OBJECTDIR}/src/GUI/WM/WM_ResizeWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM_SIM.o \
	${OBJECTDIR}/src/GUI/WM/WM_Screen2Win.o \
	${OBJECTDIR}/src/GUI/WM/WM_SendMessageNoPara.o \
	${OBJECTDIR}/src/GUI/WM/WM_SendToParent.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetAnchor.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetCallback.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetCapture.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetCaptureMove.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetCreateFlags.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetDesktopColor.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetFocus.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetFocusOnNextChild.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetFocusOnPrevChild.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetId.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetScrollPos.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetScrollState.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetScrollbar.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetSize.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetTrans.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetTransState.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetUserClipRect.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetWindowPos.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetXSize.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetYSize.o \
	${OBJECTDIR}/src/GUI/WM/WM_SetpfPollPID.o \
	${OBJECTDIR}/src/GUI/WM/WM_Show.o \
	${OBJECTDIR}/src/GUI/WM/WM_StayOnTop.o \
	${OBJECTDIR}/src/GUI/WM/WM_Timer.o \
	${OBJECTDIR}/src/GUI/WM/WM_TimerExternal.o \
	${OBJECTDIR}/src/GUI/WM/WM_UpdateWindowAndDescs.o \
	${OBJECTDIR}/src/GUI/WM/WM_UserData.o \
	${OBJECTDIR}/src/GUI/WM/WM_Validate.o \
	${OBJECTDIR}/src/GUI/WM/WM_ValidateWindow.o \
	${OBJECTDIR}/src/GUI/WM/WM__ForEachDesc.o \
	${OBJECTDIR}/src/GUI/WM/WM__GetFirstSibling.o \
	${OBJECTDIR}/src/GUI/WM/WM__GetFocussedChild.o \
	${OBJECTDIR}/src/GUI/WM/WM__GetLastSibling.o \
	${OBJECTDIR}/src/GUI/WM/WM__GetOrg_AA.o \
	${OBJECTDIR}/src/GUI/WM/WM__GetPrevSibling.o \
	${OBJECTDIR}/src/GUI/WM/WM__IsAncestor.o \
	${OBJECTDIR}/src/GUI/WM/WM__IsChild.o \
	${OBJECTDIR}/src/GUI/WM/WM__IsEnabled.o \
	${OBJECTDIR}/src/GUI/WM/WM__NotifyVisChanged.o \
	${OBJECTDIR}/src/GUI/WM/WM__Screen2Client.o \
	${OBJECTDIR}/src/GUI/WM/WM__SendMessage.o \
	${OBJECTDIR}/src/GUI/WM/WM__SendMessageIfEnabled.o \
	${OBJECTDIR}/src/GUI/WM/WM__SendMessageNoPara.o \
	${OBJECTDIR}/src/GUI/WM/WM__UpdateChildPositions.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_BMP.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_Bitmap.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_Create.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_Default.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_Get.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_GetBitmap.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_IsPressed.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_SelfDraw.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_SetFocusColor.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON_StreamedBitmap.o \
	${OBJECTDIR}/src/GUI/Widget/BUTTON__SetBitmapObj.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Create.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Default.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_GetState.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_GetText.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Image.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_IsChecked.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetBoxBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetDefaultImage.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetFocusColor.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetImage.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetNumStates.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetSpacing.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetState.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetText.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/DIALOG.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_AddString.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_Create.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_Default.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_DeleteItem.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_GetNumItems.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_InsertString.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_ItemSpacing.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetAutoScroll.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetColor.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetScrollbarColor.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetScrollbarWidth.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextHeight.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT.o \
	${OBJECTDIR}/src/GUI/Widget/EDITBin.o \
	${OBJECTDIR}/src/GUI/Widget/EDITDec.o \
	${OBJECTDIR}/src/GUI/Widget/EDITFloat.o \
	${OBJECTDIR}/src/GUI/Widget/EDITHex.o \
	${OBJECTDIR}/src/GUI/Widget/EDITUlong.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_Create.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_Default.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_GetCursorPixelPos.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_GetCursorPos.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_GetNumChars.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_SetCursorAtChar.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_SetFocussable.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_SetInsertMode.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_SetSel.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_SetTextMode.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_SetpfAddKeyEx.o \
	${OBJECTDIR}/src/GUI/Widget/EDIT_SetpfUpdateBuffer.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_AddMenu.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Button.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonClose.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonMax.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonMin.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Create.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Default.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Get.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_IsMinMax.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_MinMaxRest.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetBorderSize.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetColors.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetResizeable.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetTitleHeight.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetTitleVis.o \
	${OBJECTDIR}/src/GUI/Widget/FRAMEWIN__UpdateButtons.o \
	${OBJECTDIR}/src/GUI/Widget/GRAPH.o \
	${OBJECTDIR}/src/GUI/Widget/GRAPH_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/GRAPH_DATA_XY.o \
	${OBJECTDIR}/src/GUI/Widget/GRAPH_DATA_YT.o \
	${OBJECTDIR}/src/GUI/Widget/GRAPH_SCALE.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_DeleteItem.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_InsertItem.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_ResizeItem.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_DRAW.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_BITMAP.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_BMP.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_STREAMED.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_Self.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_EditBin.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_EditDec.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_EditFloat.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_EditHex.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_EditString.o \
	${OBJECTDIR}/src/GUI/Widget/GUI_HOOK.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER_BMP.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER_Bitmap.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER_Create.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER_GetSel.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER_SetDragLimit.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER_StreamedBitmap.o \
	${OBJECTDIR}/src/GUI/Widget/HEADER__SetDrawObj.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_Create.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_Default.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_DeleteItem.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_Font.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetItemText.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetNumItems.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_InsertString.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_ItemDisabled.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_ItemSpacing.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_MultiSel.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_ScrollStep.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetAutoScroll.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetOwner.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetOwnerDraw.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetScrollbarColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetScrollbarWidth.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetString.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_Create.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_Default.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteAllRows.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteColumn.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteRow.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DisableRow.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetFont.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetHeader.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetItemText.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetNumColumns.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetNumRows.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetSel.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_InsertRow.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetAutoScroll.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetColumnWidth.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetGridVis.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetItemColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetItemText.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetLBorder.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetRBorder.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetRowHeight.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetSel.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetSort.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/LISTVIEW_UserData.o \
	${OBJECTDIR}/src/GUI/Widget/MENU.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_Attach.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_Default.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_DeleteItem.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_DisableItem.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_EnableItem.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_GetItem.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_GetItemText.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_GetNumItems.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_InsertItem.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_Popup.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_SetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_SetBorderSize.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_SetItem.o \
	${OBJECTDIR}/src/GUI/Widget/MENU_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/MENU__FindItem.o \
	${OBJECTDIR}/src/GUI/Widget/MESSAGEBOX.o \
	${OBJECTDIR}/src/GUI/Widget/MULTIEDIT.o \
	${OBJECTDIR}/src/GUI/Widget/MULTIEDIT_Create.o \
	${OBJECTDIR}/src/GUI/Widget/MULTIEDIT_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/MULTIPAGE.o \
	${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_Create.o \
	${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_Default.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_Create.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetBarColor.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetMinMax.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetText.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextPos.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_Create.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_Default.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_GetText.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_Image.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetDefaultImage.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetFocusColor.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetGroupId.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetImage.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetText.o \
	${OBJECTDIR}/src/GUI/Widget/RADIO_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/SCROLLBAR.o \
	${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_Create.o \
	${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_Defaults.o \
	${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_GetValue.o \
	${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_SetColor.o \
	${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_SetWidth.o \
	${OBJECTDIR}/src/GUI/Widget/SLIDER.o \
	${OBJECTDIR}/src/GUI/Widget/SLIDER_Create.o \
	${OBJECTDIR}/src/GUI/Widget/SLIDER_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/SLIDER_Default.o \
	${OBJECTDIR}/src/GUI/Widget/SLIDER_SetFocusColor.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_Create.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_CreateIndirect.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_Default.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_SetBkColor.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_SetFont.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_SetText.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_SetTextAlign.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_SetTextColor.o \
	${OBJECTDIR}/src/GUI/Widget/TEXT_SetWrapMode.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D1L.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D2L.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_None.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_Simple.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_FillStringInRect.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_SetEffect.o \
	${OBJECTDIR}/src/GUI/Widget/WIDGET_SetWidth.o \
	${OBJECTDIR}/src/GUI/Widget/WINDOW.o \
	${OBJECTDIR}/src/GUI/Widget/WINDOW_Default.o \
	${OBJECTDIR}/src/Simulation/GUI_X_Win.o \
	${OBJECTDIR}/src/Simulation/LCDSIM.o \
	${OBJECTDIR}/src/Simulation/WinMain.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lGL -lGLU -lglut -lpthread -lm

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/opengl

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/opengl: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/opengl ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO.o: src/Application/GUIDemo/GUIDEMO.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO.o src/Application/GUIDemo/GUIDEMO.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Automotive.o: src/Application/GUIDemo/GUIDEMO_Automotive.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Automotive.o src/Application/GUIDemo/GUIDEMO_Automotive.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Bitmap.o: src/Application/GUIDemo/GUIDEMO_Bitmap.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Bitmap.o src/Application/GUIDemo/GUIDEMO_Bitmap.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Bitmap4bpp.o: src/Application/GUIDemo/GUIDEMO_Bitmap4bpp.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Bitmap4bpp.o src/Application/GUIDemo/GUIDEMO_Bitmap4bpp.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Circle.o: src/Application/GUIDemo/GUIDEMO_Circle.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Circle.o src/Application/GUIDemo/GUIDEMO_Circle.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ColorBar.o: src/Application/GUIDemo/GUIDEMO_ColorBar.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ColorBar.o src/Application/GUIDemo/GUIDEMO_ColorBar.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ColorList.o: src/Application/GUIDemo/GUIDEMO_ColorList.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ColorList.o src/Application/GUIDemo/GUIDEMO_ColorList.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Cursor.o: src/Application/GUIDemo/GUIDEMO_Cursor.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Cursor.o src/Application/GUIDemo/GUIDEMO_Cursor.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Dialog.o: src/Application/GUIDemo/GUIDEMO_Dialog.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Dialog.o src/Application/GUIDemo/GUIDEMO_Dialog.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Font.o: src/Application/GUIDemo/GUIDEMO_Font.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Font.o src/Application/GUIDemo/GUIDEMO_Font.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_FrameWin.o: src/Application/GUIDemo/GUIDEMO_FrameWin.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_FrameWin.o src/Application/GUIDemo/GUIDEMO_FrameWin.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Graph.o: src/Application/GUIDemo/GUIDEMO_Graph.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Graph.o src/Application/GUIDemo/GUIDEMO_Graph.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_HardwareInfo.o: src/Application/GUIDemo/GUIDEMO_HardwareInfo.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_HardwareInfo.o src/Application/GUIDemo/GUIDEMO_HardwareInfo.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Intro.o: src/Application/GUIDemo/GUIDEMO_Intro.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Intro.o src/Application/GUIDemo/GUIDEMO_Intro.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_LUT.o: src/Application/GUIDemo/GUIDEMO_LUT.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_LUT.o src/Application/GUIDemo/GUIDEMO_LUT.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_MemDevB.o: src/Application/GUIDemo/GUIDEMO_MemDevB.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_MemDevB.o src/Application/GUIDemo/GUIDEMO_MemDevB.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Messagebox.o: src/Application/GUIDemo/GUIDEMO_Messagebox.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Messagebox.o src/Application/GUIDemo/GUIDEMO_Messagebox.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Navi.o: src/Application/GUIDemo/GUIDEMO_Navi.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Navi.o src/Application/GUIDemo/GUIDEMO_Navi.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Polygon.o: src/Application/GUIDemo/GUIDEMO_Polygon.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Polygon.o src/Application/GUIDemo/GUIDEMO_Polygon.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ProgBar.o: src/Application/GUIDemo/GUIDEMO_ProgBar.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_ProgBar.o src/Application/GUIDemo/GUIDEMO_ProgBar.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Speed.o: src/Application/GUIDemo/GUIDEMO_Speed.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Speed.o src/Application/GUIDemo/GUIDEMO_Speed.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Touch.o: src/Application/GUIDemo/GUIDEMO_Touch.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_Touch.o src/Application/GUIDemo/GUIDEMO_Touch.c

${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_WM.o: src/Application/GUIDemo/GUIDEMO_WM.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/GUIDEMO_WM.o src/Application/GUIDemo/GUIDEMO_WM.c

${OBJECTDIR}/src/Application/GUIDemo/MainTask.o: src/Application/GUIDemo/MainTask.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/MainTask.o src/Application/GUIDemo/MainTask.c

${OBJECTDIR}/src/Application/GUIDemo/MicriumLogo.o: src/Application/GUIDemo/MicriumLogo.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/MicriumLogo.o src/Application/GUIDemo/MicriumLogo.c

${OBJECTDIR}/src/Application/GUIDemo/MicriumLogoWRed.o: src/Application/GUIDemo/MicriumLogoWRed.c 
	${MKDIR} -p ${OBJECTDIR}/src/Application/GUIDemo
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Application/GUIDemo/MicriumLogoWRed.o src/Application/GUIDemo/MicriumLogoWRed.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAAArc.o: src/GUI/AntiAlias/GUIAAArc.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAAArc.o src/GUI/AntiAlias/GUIAAArc.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar.o: src/GUI/AntiAlias/GUIAAChar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar.o src/GUI/AntiAlias/GUIAAChar.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar2.o: src/GUI/AntiAlias/GUIAAChar2.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar2.o src/GUI/AntiAlias/GUIAAChar2.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar4.o: src/GUI/AntiAlias/GUIAAChar4.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAAChar4.o src/GUI/AntiAlias/GUIAAChar4.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAACircle.o: src/GUI/AntiAlias/GUIAACircle.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAACircle.o src/GUI/AntiAlias/GUIAACircle.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAALib.o: src/GUI/AntiAlias/GUIAALib.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAALib.o src/GUI/AntiAlias/GUIAALib.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAALine.o: src/GUI/AntiAlias/GUIAALine.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAALine.o src/GUI/AntiAlias/GUIAALine.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAAPoly.o: src/GUI/AntiAlias/GUIAAPoly.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAAPoly.o src/GUI/AntiAlias/GUIAAPoly.c

${OBJECTDIR}/src/GUI/AntiAlias/GUIAAPolyOut.o: src/GUI/AntiAlias/GUIAAPolyOut.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/AntiAlias
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/AntiAlias/GUIAAPolyOut.o src/GUI/AntiAlias/GUIAAPolyOut.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP111.o: src/GUI/ConvertColor/LCDP111.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP111.o src/GUI/ConvertColor/LCDP111.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP222.o: src/GUI/ConvertColor/LCDP222.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP222.o src/GUI/ConvertColor/LCDP222.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP233.o: src/GUI/ConvertColor/LCDP233.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP233.o src/GUI/ConvertColor/LCDP233.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP323.o: src/GUI/ConvertColor/LCDP323.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP323.o src/GUI/ConvertColor/LCDP323.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP332.o: src/GUI/ConvertColor/LCDP332.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP332.o src/GUI/ConvertColor/LCDP332.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_12.o: src/GUI/ConvertColor/LCDP444_12.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_12.o src/GUI/ConvertColor/LCDP444_12.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_12_1.o: src/GUI/ConvertColor/LCDP444_12_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_12_1.o src/GUI/ConvertColor/LCDP444_12_1.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_16.o: src/GUI/ConvertColor/LCDP444_16.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP444_16.o src/GUI/ConvertColor/LCDP444_16.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP555.o: src/GUI/ConvertColor/LCDP555.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP555.o src/GUI/ConvertColor/LCDP555.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP556.o: src/GUI/ConvertColor/LCDP556.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP556.o src/GUI/ConvertColor/LCDP556.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP565.o: src/GUI/ConvertColor/LCDP565.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP565.o src/GUI/ConvertColor/LCDP565.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP655.o: src/GUI/ConvertColor/LCDP655.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP655.o src/GUI/ConvertColor/LCDP655.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP666.o: src/GUI/ConvertColor/LCDP666.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP666.o src/GUI/ConvertColor/LCDP666.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP8666.o: src/GUI/ConvertColor/LCDP8666.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP8666.o src/GUI/ConvertColor/LCDP8666.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP8666_1.o: src/GUI/ConvertColor/LCDP8666_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP8666_1.o src/GUI/ConvertColor/LCDP8666_1.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDP888.o: src/GUI/ConvertColor/LCDP888.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDP888.o src/GUI/ConvertColor/LCDP888.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM233.o: src/GUI/ConvertColor/LCDPM233.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM233.o src/GUI/ConvertColor/LCDPM233.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM323.o: src/GUI/ConvertColor/LCDPM323.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM323.o src/GUI/ConvertColor/LCDPM323.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM332.o: src/GUI/ConvertColor/LCDPM332.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM332.o src/GUI/ConvertColor/LCDPM332.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM444_12.o: src/GUI/ConvertColor/LCDPM444_12.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM444_12.o src/GUI/ConvertColor/LCDPM444_12.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM444_16.o: src/GUI/ConvertColor/LCDPM444_16.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM444_16.o src/GUI/ConvertColor/LCDPM444_16.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM555.o: src/GUI/ConvertColor/LCDPM555.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM555.o src/GUI/ConvertColor/LCDPM555.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM556.o: src/GUI/ConvertColor/LCDPM556.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM556.o src/GUI/ConvertColor/LCDPM556.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM565.o: src/GUI/ConvertColor/LCDPM565.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM565.o src/GUI/ConvertColor/LCDPM565.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM655.o: src/GUI/ConvertColor/LCDPM655.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM655.o src/GUI/ConvertColor/LCDPM655.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM666.o: src/GUI/ConvertColor/LCDPM666.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM666.o src/GUI/ConvertColor/LCDPM666.c

${OBJECTDIR}/src/GUI/ConvertColor/LCDPM888.o: src/GUI/ConvertColor/LCDPM888.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertColor
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertColor/LCDPM888.o src/GUI/ConvertColor/LCDPM888.c

${OBJECTDIR}/src/GUI/ConvertMono/LCDP0.o: src/GUI/ConvertMono/LCDP0.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertMono
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertMono/LCDP0.o src/GUI/ConvertMono/LCDP0.c

${OBJECTDIR}/src/GUI/ConvertMono/LCDP2.o: src/GUI/ConvertMono/LCDP2.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertMono
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertMono/LCDP2.o src/GUI/ConvertMono/LCDP2.c

${OBJECTDIR}/src/GUI/ConvertMono/LCDP4.o: src/GUI/ConvertMono/LCDP4.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/ConvertMono
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/ConvertMono/LCDP4.o src/GUI/ConvertMono/LCDP4.c

${OBJECTDIR}/src/GUI/Core/GUI2DLib.o: src/GUI/Core/GUI2DLib.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI2DLib.o src/GUI/Core/GUI2DLib.c

${OBJECTDIR}/src/GUI/Core/GUIAlloc.o: src/GUI/Core/GUIAlloc.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIAlloc.o src/GUI/Core/GUIAlloc.c

${OBJECTDIR}/src/GUI/Core/GUIArc.o: src/GUI/Core/GUIArc.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIArc.o src/GUI/Core/GUIArc.c

${OBJECTDIR}/src/GUI/Core/GUIChar.o: src/GUI/Core/GUIChar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIChar.o src/GUI/Core/GUIChar.c

${OBJECTDIR}/src/GUI/Core/GUICharLine.o: src/GUI/Core/GUICharLine.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUICharLine.o src/GUI/Core/GUICharLine.c

${OBJECTDIR}/src/GUI/Core/GUICharM.o: src/GUI/Core/GUICharM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUICharM.o src/GUI/Core/GUICharM.c

${OBJECTDIR}/src/GUI/Core/GUICharP.o: src/GUI/Core/GUICharP.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUICharP.o src/GUI/Core/GUICharP.c

${OBJECTDIR}/src/GUI/Core/GUICirc.o: src/GUI/Core/GUICirc.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUICirc.o src/GUI/Core/GUICirc.c

${OBJECTDIR}/src/GUI/Core/GUIColor2Index.o: src/GUI/Core/GUIColor2Index.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIColor2Index.o src/GUI/Core/GUIColor2Index.c

${OBJECTDIR}/src/GUI/Core/GUICore.o: src/GUI/Core/GUICore.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUICore.o src/GUI/Core/GUICore.c

${OBJECTDIR}/src/GUI/Core/GUICurs.o: src/GUI/Core/GUICurs.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUICurs.o src/GUI/Core/GUICurs.c

${OBJECTDIR}/src/GUI/Core/GUIEncJS.o: src/GUI/Core/GUIEncJS.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIEncJS.o src/GUI/Core/GUIEncJS.c

${OBJECTDIR}/src/GUI/Core/GUIIndex2Color.o: src/GUI/Core/GUIIndex2Color.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIIndex2Color.o src/GUI/Core/GUIIndex2Color.c

${OBJECTDIR}/src/GUI/Core/GUIPolyE.o: src/GUI/Core/GUIPolyE.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIPolyE.o src/GUI/Core/GUIPolyE.c

${OBJECTDIR}/src/GUI/Core/GUIPolyM.o: src/GUI/Core/GUIPolyM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIPolyM.o src/GUI/Core/GUIPolyM.c

${OBJECTDIR}/src/GUI/Core/GUIPolyR.o: src/GUI/Core/GUIPolyR.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIPolyR.o src/GUI/Core/GUIPolyR.c

${OBJECTDIR}/src/GUI/Core/GUIRealloc.o: src/GUI/Core/GUIRealloc.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIRealloc.o src/GUI/Core/GUIRealloc.c

${OBJECTDIR}/src/GUI/Core/GUIStream.o: src/GUI/Core/GUIStream.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIStream.o src/GUI/Core/GUIStream.c

${OBJECTDIR}/src/GUI/Core/GUITask.o: src/GUI/Core/GUITask.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUITask.o src/GUI/Core/GUITask.c

${OBJECTDIR}/src/GUI/Core/GUITime.o: src/GUI/Core/GUITime.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUITime.o src/GUI/Core/GUITime.c

${OBJECTDIR}/src/GUI/Core/GUITimer.o: src/GUI/Core/GUITimer.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUITimer.o src/GUI/Core/GUITimer.c

${OBJECTDIR}/src/GUI/Core/GUIUC0.o: src/GUI/Core/GUIUC0.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIUC0.o src/GUI/Core/GUIUC0.c

${OBJECTDIR}/src/GUI/Core/GUIVal.o: src/GUI/Core/GUIVal.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIVal.o src/GUI/Core/GUIVal.c

${OBJECTDIR}/src/GUI/Core/GUIValf.o: src/GUI/Core/GUIValf.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUIValf.o src/GUI/Core/GUIValf.c

${OBJECTDIR}/src/GUI/Core/GUI_ALLOC_AllocInit.o: src/GUI/Core/GUI_ALLOC_AllocInit.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_ALLOC_AllocInit.o src/GUI/Core/GUI_ALLOC_AllocInit.c

${OBJECTDIR}/src/GUI/Core/GUI_ALLOC_AllocZero.o: src/GUI/Core/GUI_ALLOC_AllocZero.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_ALLOC_AllocZero.o src/GUI/Core/GUI_ALLOC_AllocZero.c

${OBJECTDIR}/src/GUI/Core/GUI_AddBin.o: src/GUI/Core/GUI_AddBin.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_AddBin.o src/GUI/Core/GUI_AddBin.c

${OBJECTDIR}/src/GUI/Core/GUI_AddDec.o: src/GUI/Core/GUI_AddDec.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_AddDec.o src/GUI/Core/GUI_AddDec.c

${OBJECTDIR}/src/GUI/Core/GUI_AddDecMin.o: src/GUI/Core/GUI_AddDecMin.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_AddDecMin.o src/GUI/Core/GUI_AddDecMin.c

${OBJECTDIR}/src/GUI/Core/GUI_AddDecShift.o: src/GUI/Core/GUI_AddDecShift.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_AddDecShift.o src/GUI/Core/GUI_AddDecShift.c

${OBJECTDIR}/src/GUI/Core/GUI_AddHex.o: src/GUI/Core/GUI_AddHex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_AddHex.o src/GUI/Core/GUI_AddHex.c

${OBJECTDIR}/src/GUI/Core/GUI_AddKeyMsgHook.o: src/GUI/Core/GUI_AddKeyMsgHook.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_AddKeyMsgHook.o src/GUI/Core/GUI_AddKeyMsgHook.c

${OBJECTDIR}/src/GUI/Core/GUI_BMP.o: src/GUI/Core/GUI_BMP.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_BMP.o src/GUI/Core/GUI_BMP.c

${OBJECTDIR}/src/GUI/Core/GUI_BMP_Serialize.o: src/GUI/Core/GUI_BMP_Serialize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_BMP_Serialize.o src/GUI/Core/GUI_BMP_Serialize.c

${OBJECTDIR}/src/GUI/Core/GUI_CalcColorDist.o: src/GUI/Core/GUI_CalcColorDist.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CalcColorDist.o src/GUI/Core/GUI_CalcColorDist.c

${OBJECTDIR}/src/GUI/Core/GUI_ClearRectEx.o: src/GUI/Core/GUI_ClearRectEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_ClearRectEx.o src/GUI/Core/GUI_ClearRectEx.c

${OBJECTDIR}/src/GUI/Core/GUI_Color2VisColor.o: src/GUI/Core/GUI_Color2VisColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_Color2VisColor.o src/GUI/Core/GUI_Color2VisColor.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowL.o: src/GUI/Core/GUI_CursorArrowL.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowL.o src/GUI/Core/GUI_CursorArrowL.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowLI.o: src/GUI/Core/GUI_CursorArrowLI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowLI.o src/GUI/Core/GUI_CursorArrowLI.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowLPx.o: src/GUI/Core/GUI_CursorArrowLPx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowLPx.o src/GUI/Core/GUI_CursorArrowLPx.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowM.o: src/GUI/Core/GUI_CursorArrowM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowM.o src/GUI/Core/GUI_CursorArrowM.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowMI.o: src/GUI/Core/GUI_CursorArrowMI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowMI.o src/GUI/Core/GUI_CursorArrowMI.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowMPx.o: src/GUI/Core/GUI_CursorArrowMPx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowMPx.o src/GUI/Core/GUI_CursorArrowMPx.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowS.o: src/GUI/Core/GUI_CursorArrowS.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowS.o src/GUI/Core/GUI_CursorArrowS.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowSI.o: src/GUI/Core/GUI_CursorArrowSI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowSI.o src/GUI/Core/GUI_CursorArrowSI.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowSPx.o: src/GUI/Core/GUI_CursorArrowSPx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorArrowSPx.o src/GUI/Core/GUI_CursorArrowSPx.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossL.o: src/GUI/Core/GUI_CursorCrossL.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossL.o src/GUI/Core/GUI_CursorCrossL.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossLI.o: src/GUI/Core/GUI_CursorCrossLI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossLI.o src/GUI/Core/GUI_CursorCrossLI.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossLPx.o: src/GUI/Core/GUI_CursorCrossLPx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossLPx.o src/GUI/Core/GUI_CursorCrossLPx.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossM.o: src/GUI/Core/GUI_CursorCrossM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossM.o src/GUI/Core/GUI_CursorCrossM.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossMI.o: src/GUI/Core/GUI_CursorCrossMI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossMI.o src/GUI/Core/GUI_CursorCrossMI.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossMPx.o: src/GUI/Core/GUI_CursorCrossMPx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossMPx.o src/GUI/Core/GUI_CursorCrossMPx.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossS.o: src/GUI/Core/GUI_CursorCrossS.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossS.o src/GUI/Core/GUI_CursorCrossS.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossSI.o: src/GUI/Core/GUI_CursorCrossSI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossSI.o src/GUI/Core/GUI_CursorCrossSI.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossSPx.o: src/GUI/Core/GUI_CursorCrossSPx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorCrossSPx.o src/GUI/Core/GUI_CursorCrossSPx.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderM.o: src/GUI/Core/GUI_CursorHeaderM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderM.o src/GUI/Core/GUI_CursorHeaderM.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderMI.o: src/GUI/Core/GUI_CursorHeaderMI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderMI.o src/GUI/Core/GUI_CursorHeaderMI.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderMPx.o: src/GUI/Core/GUI_CursorHeaderMPx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorHeaderMPx.o src/GUI/Core/GUI_CursorHeaderMPx.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorPal.o: src/GUI/Core/GUI_CursorPal.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorPal.o src/GUI/Core/GUI_CursorPal.c

${OBJECTDIR}/src/GUI/Core/GUI_CursorPalI.o: src/GUI/Core/GUI_CursorPalI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_CursorPalI.o src/GUI/Core/GUI_CursorPalI.c

${OBJECTDIR}/src/GUI/Core/GUI_DispBin.o: src/GUI/Core/GUI_DispBin.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispBin.o src/GUI/Core/GUI_DispBin.c

${OBJECTDIR}/src/GUI/Core/GUI_DispCEOL.o: src/GUI/Core/GUI_DispCEOL.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispCEOL.o src/GUI/Core/GUI_DispCEOL.c

${OBJECTDIR}/src/GUI/Core/GUI_DispChar.o: src/GUI/Core/GUI_DispChar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispChar.o src/GUI/Core/GUI_DispChar.c

${OBJECTDIR}/src/GUI/Core/GUI_DispChars.o: src/GUI/Core/GUI_DispChars.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispChars.o src/GUI/Core/GUI_DispChars.c

${OBJECTDIR}/src/GUI/Core/GUI_DispHex.o: src/GUI/Core/GUI_DispHex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispHex.o src/GUI/Core/GUI_DispHex.c

${OBJECTDIR}/src/GUI/Core/GUI_DispString.o: src/GUI/Core/GUI_DispString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispString.o src/GUI/Core/GUI_DispString.c

${OBJECTDIR}/src/GUI/Core/GUI_DispStringAt.o: src/GUI/Core/GUI_DispStringAt.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispStringAt.o src/GUI/Core/GUI_DispStringAt.c

${OBJECTDIR}/src/GUI/Core/GUI_DispStringAtCEOL.o: src/GUI/Core/GUI_DispStringAtCEOL.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispStringAtCEOL.o src/GUI/Core/GUI_DispStringAtCEOL.c

${OBJECTDIR}/src/GUI/Core/GUI_DispStringHCenter.o: src/GUI/Core/GUI_DispStringHCenter.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispStringHCenter.o src/GUI/Core/GUI_DispStringHCenter.c

${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRect.o: src/GUI/Core/GUI_DispStringInRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRect.o src/GUI/Core/GUI_DispStringInRect.c

${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRectEx.o: src/GUI/Core/GUI_DispStringInRectEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRectEx.o src/GUI/Core/GUI_DispStringInRectEx.c

${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRectWrap.o: src/GUI/Core/GUI_DispStringInRectWrap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispStringInRectWrap.o src/GUI/Core/GUI_DispStringInRectWrap.c

${OBJECTDIR}/src/GUI/Core/GUI_DispStringLen.o: src/GUI/Core/GUI_DispStringLen.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DispStringLen.o src/GUI/Core/GUI_DispStringLen.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap.o: src/GUI/Core/GUI_DrawBitmap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap.o src/GUI/Core/GUI_DrawBitmap.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapEx.o: src/GUI/Core/GUI_DrawBitmapEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapEx.o src/GUI/Core/GUI_DrawBitmapEx.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapExp.o: src/GUI/Core/GUI_DrawBitmapExp.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapExp.o src/GUI/Core/GUI_DrawBitmapExp.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapMag.o: src/GUI/Core/GUI_DrawBitmapMag.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmapMag.o src/GUI/Core/GUI_DrawBitmapMag.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_555.o: src/GUI/Core/GUI_DrawBitmap_555.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_555.o src/GUI/Core/GUI_DrawBitmap_555.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_565.o: src/GUI/Core/GUI_DrawBitmap_565.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_565.o src/GUI/Core/GUI_DrawBitmap_565.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_888.o: src/GUI/Core/GUI_DrawBitmap_888.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawBitmap_888.o src/GUI/Core/GUI_DrawBitmap_888.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawFocusRect.o: src/GUI/Core/GUI_DrawFocusRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawFocusRect.o src/GUI/Core/GUI_DrawFocusRect.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawGraph.o: src/GUI/Core/GUI_DrawGraph.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawGraph.o src/GUI/Core/GUI_DrawGraph.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawGraphEx.o: src/GUI/Core/GUI_DrawGraphEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawGraphEx.o src/GUI/Core/GUI_DrawGraphEx.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawHLine.o: src/GUI/Core/GUI_DrawHLine.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawHLine.o src/GUI/Core/GUI_DrawHLine.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawLine.o: src/GUI/Core/GUI_DrawLine.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawLine.o src/GUI/Core/GUI_DrawLine.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawPie.o: src/GUI/Core/GUI_DrawPie.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawPie.o src/GUI/Core/GUI_DrawPie.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawPixel.o: src/GUI/Core/GUI_DrawPixel.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawPixel.o src/GUI/Core/GUI_DrawPixel.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawPoint.o: src/GUI/Core/GUI_DrawPoint.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawPoint.o src/GUI/Core/GUI_DrawPoint.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawPolygon.o: src/GUI/Core/GUI_DrawPolygon.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawPolygon.o src/GUI/Core/GUI_DrawPolygon.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawPolyline.o: src/GUI/Core/GUI_DrawPolyline.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawPolyline.o src/GUI/Core/GUI_DrawPolyline.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawRectEx.o: src/GUI/Core/GUI_DrawRectEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawRectEx.o src/GUI/Core/GUI_DrawRectEx.c

${OBJECTDIR}/src/GUI/Core/GUI_DrawVLine.o: src/GUI/Core/GUI_DrawVLine.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_DrawVLine.o src/GUI/Core/GUI_DrawVLine.c

${OBJECTDIR}/src/GUI/Core/GUI_ErrorOut.o: src/GUI/Core/GUI_ErrorOut.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_ErrorOut.o src/GUI/Core/GUI_ErrorOut.c

${OBJECTDIR}/src/GUI/Core/GUI_Exec.o: src/GUI/Core/GUI_Exec.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_Exec.o src/GUI/Core/GUI_Exec.c

${OBJECTDIR}/src/GUI/Core/GUI_FillPolygon.o: src/GUI/Core/GUI_FillPolygon.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_FillPolygon.o src/GUI/Core/GUI_FillPolygon.c

${OBJECTDIR}/src/GUI/Core/GUI_FillRect.o: src/GUI/Core/GUI_FillRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_FillRect.o src/GUI/Core/GUI_FillRect.c

${OBJECTDIR}/src/GUI/Core/GUI_FillRectEx.o: src/GUI/Core/GUI_FillRectEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_FillRectEx.o src/GUI/Core/GUI_FillRectEx.c

${OBJECTDIR}/src/GUI/Core/GUI_GIF.o: src/GUI/Core/GUI_GIF.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GIF.o src/GUI/Core/GUI_GIF.c

${OBJECTDIR}/src/GUI/Core/GUI_GetBitmapPixelColor.o: src/GUI/Core/GUI_GetBitmapPixelColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetBitmapPixelColor.o src/GUI/Core/GUI_GetBitmapPixelColor.c

${OBJECTDIR}/src/GUI/Core/GUI_GetBitmapPixelIndex.o: src/GUI/Core/GUI_GetBitmapPixelIndex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetBitmapPixelIndex.o src/GUI/Core/GUI_GetBitmapPixelIndex.c

${OBJECTDIR}/src/GUI/Core/GUI_GetClientRect.o: src/GUI/Core/GUI_GetClientRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetClientRect.o src/GUI/Core/GUI_GetClientRect.c

${OBJECTDIR}/src/GUI/Core/GUI_GetColor.o: src/GUI/Core/GUI_GetColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetColor.o src/GUI/Core/GUI_GetColor.c

${OBJECTDIR}/src/GUI/Core/GUI_GetDispPos.o: src/GUI/Core/GUI_GetDispPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetDispPos.o src/GUI/Core/GUI_GetDispPos.c

${OBJECTDIR}/src/GUI/Core/GUI_GetDrawMode.o: src/GUI/Core/GUI_GetDrawMode.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetDrawMode.o src/GUI/Core/GUI_GetDrawMode.c

${OBJECTDIR}/src/GUI/Core/GUI_GetFont.o: src/GUI/Core/GUI_GetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetFont.o src/GUI/Core/GUI_GetFont.c

${OBJECTDIR}/src/GUI/Core/GUI_GetFontInfo.o: src/GUI/Core/GUI_GetFontInfo.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetFontInfo.o src/GUI/Core/GUI_GetFontInfo.c

${OBJECTDIR}/src/GUI/Core/GUI_GetFontSizeY.o: src/GUI/Core/GUI_GetFontSizeY.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetFontSizeY.o src/GUI/Core/GUI_GetFontSizeY.c

${OBJECTDIR}/src/GUI/Core/GUI_GetLineStyle.o: src/GUI/Core/GUI_GetLineStyle.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetLineStyle.o src/GUI/Core/GUI_GetLineStyle.c

${OBJECTDIR}/src/GUI/Core/GUI_GetOrg.o: src/GUI/Core/GUI_GetOrg.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetOrg.o src/GUI/Core/GUI_GetOrg.c

${OBJECTDIR}/src/GUI/Core/GUI_GetStringDistX.o: src/GUI/Core/GUI_GetStringDistX.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetStringDistX.o src/GUI/Core/GUI_GetStringDistX.c

${OBJECTDIR}/src/GUI/Core/GUI_GetTextAlign.o: src/GUI/Core/GUI_GetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetTextAlign.o src/GUI/Core/GUI_GetTextAlign.c

${OBJECTDIR}/src/GUI/Core/GUI_GetTextExtend.o: src/GUI/Core/GUI_GetTextExtend.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetTextExtend.o src/GUI/Core/GUI_GetTextExtend.c

${OBJECTDIR}/src/GUI/Core/GUI_GetTextMode.o: src/GUI/Core/GUI_GetTextMode.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetTextMode.o src/GUI/Core/GUI_GetTextMode.c

${OBJECTDIR}/src/GUI/Core/GUI_GetVersionString.o: src/GUI/Core/GUI_GetVersionString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetVersionString.o src/GUI/Core/GUI_GetVersionString.c

${OBJECTDIR}/src/GUI/Core/GUI_GetYSizeOfFont.o: src/GUI/Core/GUI_GetYSizeOfFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_GetYSizeOfFont.o src/GUI/Core/GUI_GetYSizeOfFont.c

${OBJECTDIR}/src/GUI/Core/GUI_Goto.o: src/GUI/Core/GUI_Goto.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_Goto.o src/GUI/Core/GUI_Goto.c

${OBJECTDIR}/src/GUI/Core/GUI_InitLUT.o: src/GUI/Core/GUI_InitLUT.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_InitLUT.o src/GUI/Core/GUI_InitLUT.c

${OBJECTDIR}/src/GUI/Core/GUI_InvertRect.o: src/GUI/Core/GUI_InvertRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_InvertRect.o src/GUI/Core/GUI_InvertRect.c

${OBJECTDIR}/src/GUI/Core/GUI_IsInFont.o: src/GUI/Core/GUI_IsInFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_IsInFont.o src/GUI/Core/GUI_IsInFont.c

${OBJECTDIR}/src/GUI/Core/GUI_Log.o: src/GUI/Core/GUI_Log.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_Log.o src/GUI/Core/GUI_Log.c

${OBJECTDIR}/src/GUI/Core/GUI_MOUSE.o: src/GUI/Core/GUI_MOUSE.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_MOUSE.o src/GUI/Core/GUI_MOUSE.c

${OBJECTDIR}/src/GUI/Core/GUI_MOUSE_DriverPS2.o: src/GUI/Core/GUI_MOUSE_DriverPS2.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_MOUSE_DriverPS2.o src/GUI/Core/GUI_MOUSE_DriverPS2.c

${OBJECTDIR}/src/GUI/Core/GUI_MergeRect.o: src/GUI/Core/GUI_MergeRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_MergeRect.o src/GUI/Core/GUI_MergeRect.c

${OBJECTDIR}/src/GUI/Core/GUI_MoveRect.o: src/GUI/Core/GUI_MoveRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_MoveRect.o src/GUI/Core/GUI_MoveRect.c

${OBJECTDIR}/src/GUI/Core/GUI_OnKey.o: src/GUI/Core/GUI_OnKey.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_OnKey.o src/GUI/Core/GUI_OnKey.c

${OBJECTDIR}/src/GUI/Core/GUI_PID.o: src/GUI/Core/GUI_PID.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_PID.o src/GUI/Core/GUI_PID.c

${OBJECTDIR}/src/GUI/Core/GUI_Pen.o: src/GUI/Core/GUI_Pen.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_Pen.o src/GUI/Core/GUI_Pen.c

${OBJECTDIR}/src/GUI/Core/GUI_RectsIntersect.o: src/GUI/Core/GUI_RectsIntersect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_RectsIntersect.o src/GUI/Core/GUI_RectsIntersect.c

${OBJECTDIR}/src/GUI/Core/GUI_SIF.o: src/GUI/Core/GUI_SIF.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SIF.o src/GUI/Core/GUI_SIF.c

${OBJECTDIR}/src/GUI/Core/GUI_SIF_Prop.o: src/GUI/Core/GUI_SIF_Prop.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SIF_Prop.o src/GUI/Core/GUI_SIF_Prop.c

${OBJECTDIR}/src/GUI/Core/GUI_SaveContext.o: src/GUI/Core/GUI_SaveContext.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SaveContext.o src/GUI/Core/GUI_SaveContext.c

${OBJECTDIR}/src/GUI/Core/GUI_ScreenSize.o: src/GUI/Core/GUI_ScreenSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_ScreenSize.o src/GUI/Core/GUI_ScreenSize.c

${OBJECTDIR}/src/GUI/Core/GUI_SelectLCD.o: src/GUI/Core/GUI_SelectLCD.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SelectLCD.o src/GUI/Core/GUI_SelectLCD.c

${OBJECTDIR}/src/GUI/Core/GUI_SelectLayer.o: src/GUI/Core/GUI_SelectLayer.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SelectLayer.o src/GUI/Core/GUI_SelectLayer.c

${OBJECTDIR}/src/GUI/Core/GUI_SetClipRect.o: src/GUI/Core/GUI_SetClipRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetClipRect.o src/GUI/Core/GUI_SetClipRect.c

${OBJECTDIR}/src/GUI/Core/GUI_SetColor.o: src/GUI/Core/GUI_SetColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetColor.o src/GUI/Core/GUI_SetColor.c

${OBJECTDIR}/src/GUI/Core/GUI_SetColorIndex.o: src/GUI/Core/GUI_SetColorIndex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetColorIndex.o src/GUI/Core/GUI_SetColorIndex.c

${OBJECTDIR}/src/GUI/Core/GUI_SetDecChar.o: src/GUI/Core/GUI_SetDecChar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetDecChar.o src/GUI/Core/GUI_SetDecChar.c

${OBJECTDIR}/src/GUI/Core/GUI_SetDefault.o: src/GUI/Core/GUI_SetDefault.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetDefault.o src/GUI/Core/GUI_SetDefault.c

${OBJECTDIR}/src/GUI/Core/GUI_SetDrawMode.o: src/GUI/Core/GUI_SetDrawMode.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetDrawMode.o src/GUI/Core/GUI_SetDrawMode.c

${OBJECTDIR}/src/GUI/Core/GUI_SetFont.o: src/GUI/Core/GUI_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetFont.o src/GUI/Core/GUI_SetFont.c

${OBJECTDIR}/src/GUI/Core/GUI_SetLBorder.o: src/GUI/Core/GUI_SetLBorder.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetLBorder.o src/GUI/Core/GUI_SetLBorder.c

${OBJECTDIR}/src/GUI/Core/GUI_SetLUTColor.o: src/GUI/Core/GUI_SetLUTColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetLUTColor.o src/GUI/Core/GUI_SetLUTColor.c

${OBJECTDIR}/src/GUI/Core/GUI_SetLUTColorEx.o: src/GUI/Core/GUI_SetLUTColorEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetLUTColorEx.o src/GUI/Core/GUI_SetLUTColorEx.c

${OBJECTDIR}/src/GUI/Core/GUI_SetLUTEntry.o: src/GUI/Core/GUI_SetLUTEntry.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetLUTEntry.o src/GUI/Core/GUI_SetLUTEntry.c

${OBJECTDIR}/src/GUI/Core/GUI_SetLineStyle.o: src/GUI/Core/GUI_SetLineStyle.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetLineStyle.o src/GUI/Core/GUI_SetLineStyle.c

${OBJECTDIR}/src/GUI/Core/GUI_SetOrg.o: src/GUI/Core/GUI_SetOrg.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetOrg.o src/GUI/Core/GUI_SetOrg.c

${OBJECTDIR}/src/GUI/Core/GUI_SetPixelIndex.o: src/GUI/Core/GUI_SetPixelIndex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetPixelIndex.o src/GUI/Core/GUI_SetPixelIndex.c

${OBJECTDIR}/src/GUI/Core/GUI_SetTextAlign.o: src/GUI/Core/GUI_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetTextAlign.o src/GUI/Core/GUI_SetTextAlign.c

${OBJECTDIR}/src/GUI/Core/GUI_SetTextMode.o: src/GUI/Core/GUI_SetTextMode.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetTextMode.o src/GUI/Core/GUI_SetTextMode.c

${OBJECTDIR}/src/GUI/Core/GUI_SetTextStyle.o: src/GUI/Core/GUI_SetTextStyle.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_SetTextStyle.o src/GUI/Core/GUI_SetTextStyle.c

${OBJECTDIR}/src/GUI/Core/GUI_TOUCH.o: src/GUI/Core/GUI_TOUCH.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_TOUCH.o src/GUI/Core/GUI_TOUCH.c

${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_DriverAnalog.o: src/GUI/Core/GUI_TOUCH_DriverAnalog.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_DriverAnalog.o src/GUI/Core/GUI_TOUCH_DriverAnalog.c

${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_StoreState.o: src/GUI/Core/GUI_TOUCH_StoreState.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_StoreState.o src/GUI/Core/GUI_TOUCH_StoreState.c

${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_StoreUnstable.o: src/GUI/Core/GUI_TOUCH_StoreUnstable.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_TOUCH_StoreUnstable.o src/GUI/Core/GUI_TOUCH_StoreUnstable.c

${OBJECTDIR}/src/GUI/Core/GUI_UC.o: src/GUI/Core/GUI_UC.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_UC.o src/GUI/Core/GUI_UC.c

${OBJECTDIR}/src/GUI/Core/GUI_UC_ConvertUC2UTF8.o: src/GUI/Core/GUI_UC_ConvertUC2UTF8.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_UC_ConvertUC2UTF8.o src/GUI/Core/GUI_UC_ConvertUC2UTF8.c

${OBJECTDIR}/src/GUI/Core/GUI_UC_ConvertUTF82UC.o: src/GUI/Core/GUI_UC_ConvertUTF82UC.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_UC_ConvertUTF82UC.o src/GUI/Core/GUI_UC_ConvertUTF82UC.c

${OBJECTDIR}/src/GUI/Core/GUI_UC_DispString.o: src/GUI/Core/GUI_UC_DispString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_UC_DispString.o src/GUI/Core/GUI_UC_DispString.c

${OBJECTDIR}/src/GUI/Core/GUI_UC_EncodeNone.o: src/GUI/Core/GUI_UC_EncodeNone.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_UC_EncodeNone.o src/GUI/Core/GUI_UC_EncodeNone.c

${OBJECTDIR}/src/GUI/Core/GUI_UC_EncodeUTF8.o: src/GUI/Core/GUI_UC_EncodeUTF8.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_UC_EncodeUTF8.o src/GUI/Core/GUI_UC_EncodeUTF8.c

${OBJECTDIR}/src/GUI/Core/GUI_WaitEvent.o: src/GUI/Core/GUI_WaitEvent.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_WaitEvent.o src/GUI/Core/GUI_WaitEvent.c

${OBJECTDIR}/src/GUI/Core/GUI_WaitKey.o: src/GUI/Core/GUI_WaitKey.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_WaitKey.o src/GUI/Core/GUI_WaitKey.c

${OBJECTDIR}/src/GUI/Core/GUI_Warn.o: src/GUI/Core/GUI_Warn.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI_Warn.o src/GUI/Core/GUI_Warn.c

${OBJECTDIR}/src/GUI/Core/GUI__AddSpaceHex.o: src/GUI/Core/GUI__AddSpaceHex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__AddSpaceHex.o src/GUI/Core/GUI__AddSpaceHex.c

${OBJECTDIR}/src/GUI/Core/GUI__Arabic.o: src/GUI/Core/GUI__Arabic.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__Arabic.o src/GUI/Core/GUI__Arabic.c

${OBJECTDIR}/src/GUI/Core/GUI__CalcTextRect.o: src/GUI/Core/GUI__CalcTextRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__CalcTextRect.o src/GUI/Core/GUI__CalcTextRect.c

${OBJECTDIR}/src/GUI/Core/GUI__DivideRound.o: src/GUI/Core/GUI__DivideRound.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__DivideRound.o src/GUI/Core/GUI__DivideRound.c

${OBJECTDIR}/src/GUI/Core/GUI__DivideRound32.o: src/GUI/Core/GUI__DivideRound32.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__DivideRound32.o src/GUI/Core/GUI__DivideRound32.c

${OBJECTDIR}/src/GUI/Core/GUI__DrawBitmap16bpp.o: src/GUI/Core/GUI__DrawBitmap16bpp.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__DrawBitmap16bpp.o src/GUI/Core/GUI__DrawBitmap16bpp.c

${OBJECTDIR}/src/GUI/Core/GUI__GetCursorPos.o: src/GUI/Core/GUI__GetCursorPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__GetCursorPos.o src/GUI/Core/GUI__GetCursorPos.c

${OBJECTDIR}/src/GUI/Core/GUI__GetFontSizeY.o: src/GUI/Core/GUI__GetFontSizeY.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__GetFontSizeY.o src/GUI/Core/GUI__GetFontSizeY.c

${OBJECTDIR}/src/GUI/Core/GUI__GetNumChars.o: src/GUI/Core/GUI__GetNumChars.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__GetNumChars.o src/GUI/Core/GUI__GetNumChars.c

${OBJECTDIR}/src/GUI/Core/GUI__HandleEOLine.o: src/GUI/Core/GUI__HandleEOLine.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__HandleEOLine.o src/GUI/Core/GUI__HandleEOLine.c

${OBJECTDIR}/src/GUI/Core/GUI__IntersectRect.o: src/GUI/Core/GUI__IntersectRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__IntersectRect.o src/GUI/Core/GUI__IntersectRect.c

${OBJECTDIR}/src/GUI/Core/GUI__IntersectRects.o: src/GUI/Core/GUI__IntersectRects.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__IntersectRects.o src/GUI/Core/GUI__IntersectRects.c

${OBJECTDIR}/src/GUI/Core/GUI__Read.o: src/GUI/Core/GUI__Read.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__Read.o src/GUI/Core/GUI__Read.c

${OBJECTDIR}/src/GUI/Core/GUI__ReduceRect.o: src/GUI/Core/GUI__ReduceRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__ReduceRect.o src/GUI/Core/GUI__ReduceRect.c

${OBJECTDIR}/src/GUI/Core/GUI__SetText.o: src/GUI/Core/GUI__SetText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__SetText.o src/GUI/Core/GUI__SetText.c

${OBJECTDIR}/src/GUI/Core/GUI__Wrap.o: src/GUI/Core/GUI__Wrap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__Wrap.o src/GUI/Core/GUI__Wrap.c

${OBJECTDIR}/src/GUI/Core/GUI__memset.o: src/GUI/Core/GUI__memset.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__memset.o src/GUI/Core/GUI__memset.c

${OBJECTDIR}/src/GUI/Core/GUI__memset16.o: src/GUI/Core/GUI__memset16.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__memset16.o src/GUI/Core/GUI__memset16.c

${OBJECTDIR}/src/GUI/Core/GUI__strcmp.o: src/GUI/Core/GUI__strcmp.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__strcmp.o src/GUI/Core/GUI__strcmp.c

${OBJECTDIR}/src/GUI/Core/GUI__strlen.o: src/GUI/Core/GUI__strlen.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/GUI__strlen.o src/GUI/Core/GUI__strlen.c

${OBJECTDIR}/src/GUI/Core/LCD.o: src/GUI/Core/LCD.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD.o src/GUI/Core/LCD.c

${OBJECTDIR}/src/GUI/Core/LCDAA.o: src/GUI/Core/LCDAA.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDAA.o src/GUI/Core/LCDAA.c

${OBJECTDIR}/src/GUI/Core/LCDColor.o: src/GUI/Core/LCDColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDColor.o src/GUI/Core/LCDColor.c

${OBJECTDIR}/src/GUI/Core/LCDGetP.o: src/GUI/Core/LCDGetP.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDGetP.o src/GUI/Core/LCDGetP.c

${OBJECTDIR}/src/GUI/Core/LCDInfo.o: src/GUI/Core/LCDInfo.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDInfo.o src/GUI/Core/LCDInfo.c

${OBJECTDIR}/src/GUI/Core/LCDInfo0.o: src/GUI/Core/LCDInfo0.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDInfo0.o src/GUI/Core/LCDInfo0.c

${OBJECTDIR}/src/GUI/Core/LCDInfo1.o: src/GUI/Core/LCDInfo1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDInfo1.o src/GUI/Core/LCDInfo1.c

${OBJECTDIR}/src/GUI/Core/LCDL0Delta.o: src/GUI/Core/LCDL0Delta.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDL0Delta.o src/GUI/Core/LCDL0Delta.c

${OBJECTDIR}/src/GUI/Core/LCDL0Mag.o: src/GUI/Core/LCDL0Mag.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDL0Mag.o src/GUI/Core/LCDL0Mag.c

${OBJECTDIR}/src/GUI/Core/LCDP1.o: src/GUI/Core/LCDP1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDP1.o src/GUI/Core/LCDP1.c

${OBJECTDIR}/src/GUI/Core/LCDP565_Index2Color.o: src/GUI/Core/LCDP565_Index2Color.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDP565_Index2Color.o src/GUI/Core/LCDP565_Index2Color.c

${OBJECTDIR}/src/GUI/Core/LCDP888_Index2Color.o: src/GUI/Core/LCDP888_Index2Color.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDP888_Index2Color.o src/GUI/Core/LCDP888_Index2Color.c

${OBJECTDIR}/src/GUI/Core/LCDPM565_Index2Color.o: src/GUI/Core/LCDPM565_Index2Color.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDPM565_Index2Color.o src/GUI/Core/LCDPM565_Index2Color.c

${OBJECTDIR}/src/GUI/Core/LCDPM888_Index2Color.o: src/GUI/Core/LCDPM888_Index2Color.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDPM888_Index2Color.o src/GUI/Core/LCDPM888_Index2Color.c

${OBJECTDIR}/src/GUI/Core/LCDRLE16.o: src/GUI/Core/LCDRLE16.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDRLE16.o src/GUI/Core/LCDRLE16.c

${OBJECTDIR}/src/GUI/Core/LCDRLE4.o: src/GUI/Core/LCDRLE4.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDRLE4.o src/GUI/Core/LCDRLE4.c

${OBJECTDIR}/src/GUI/Core/LCDRLE8.o: src/GUI/Core/LCDRLE8.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCDRLE8.o src/GUI/Core/LCDRLE8.c

${OBJECTDIR}/src/GUI/Core/LCD_API.o: src/GUI/Core/LCD_API.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_API.o src/GUI/Core/LCD_API.c

${OBJECTDIR}/src/GUI/Core/LCD_DrawVLine.o: src/GUI/Core/LCD_DrawVLine.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_DrawVLine.o src/GUI/Core/LCD_DrawVLine.c

${OBJECTDIR}/src/GUI/Core/LCD_GetColorIndex.o: src/GUI/Core/LCD_GetColorIndex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_GetColorIndex.o src/GUI/Core/LCD_GetColorIndex.c

${OBJECTDIR}/src/GUI/Core/LCD_GetEx.o: src/GUI/Core/LCD_GetEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_GetEx.o src/GUI/Core/LCD_GetEx.c

${OBJECTDIR}/src/GUI/Core/LCD_GetNumDisplays.o: src/GUI/Core/LCD_GetNumDisplays.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_GetNumDisplays.o src/GUI/Core/LCD_GetNumDisplays.c

${OBJECTDIR}/src/GUI/Core/LCD_GetPixelColor.o: src/GUI/Core/LCD_GetPixelColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_GetPixelColor.o src/GUI/Core/LCD_GetPixelColor.c

${OBJECTDIR}/src/GUI/Core/LCD_Index2ColorEx.o: src/GUI/Core/LCD_Index2ColorEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_Index2ColorEx.o src/GUI/Core/LCD_Index2ColorEx.c

${OBJECTDIR}/src/GUI/Core/LCD_L0_Generic.o: src/GUI/Core/LCD_L0_Generic.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_L0_Generic.o src/GUI/Core/LCD_L0_Generic.c

${OBJECTDIR}/src/GUI/Core/LCD_Mirror.o: src/GUI/Core/LCD_Mirror.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_Mirror.o src/GUI/Core/LCD_Mirror.c

${OBJECTDIR}/src/GUI/Core/LCD_MixColors256.o: src/GUI/Core/LCD_MixColors256.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_MixColors256.o src/GUI/Core/LCD_MixColors256.c

${OBJECTDIR}/src/GUI/Core/LCD_ReadRect.o: src/GUI/Core/LCD_ReadRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_ReadRect.o src/GUI/Core/LCD_ReadRect.c

${OBJECTDIR}/src/GUI/Core/LCD_Rotate180.o: src/GUI/Core/LCD_Rotate180.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_Rotate180.o src/GUI/Core/LCD_Rotate180.c

${OBJECTDIR}/src/GUI/Core/LCD_RotateCCW.o: src/GUI/Core/LCD_RotateCCW.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_RotateCCW.o src/GUI/Core/LCD_RotateCCW.c

${OBJECTDIR}/src/GUI/Core/LCD_RotateCW.o: src/GUI/Core/LCD_RotateCW.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_RotateCW.o src/GUI/Core/LCD_RotateCW.c

${OBJECTDIR}/src/GUI/Core/LCD_SelectLCD.o: src/GUI/Core/LCD_SelectLCD.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_SelectLCD.o src/GUI/Core/LCD_SelectLCD.c

${OBJECTDIR}/src/GUI/Core/LCD_SetAPI.o: src/GUI/Core/LCD_SetAPI.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_SetAPI.o src/GUI/Core/LCD_SetAPI.c

${OBJECTDIR}/src/GUI/Core/LCD_SetClipRectEx.o: src/GUI/Core/LCD_SetClipRectEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_SetClipRectEx.o src/GUI/Core/LCD_SetClipRectEx.c

${OBJECTDIR}/src/GUI/Core/LCD_UpdateColorIndices.o: src/GUI/Core/LCD_UpdateColorIndices.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Core
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Core/LCD_UpdateColorIndices.o src/GUI/Core/LCD_UpdateColorIndices.c

${OBJECTDIR}/src/GUI/Font/F08_1.o: src/GUI/Font/F08_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F08_1.o src/GUI/Font/F08_1.c

${OBJECTDIR}/src/GUI/Font/F08_ASCII.o: src/GUI/Font/F08_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F08_ASCII.o src/GUI/Font/F08_ASCII.c

${OBJECTDIR}/src/GUI/Font/F10S_1.o: src/GUI/Font/F10S_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F10S_1.o src/GUI/Font/F10S_1.c

${OBJECTDIR}/src/GUI/Font/F10S_ASCII.o: src/GUI/Font/F10S_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F10S_ASCII.o src/GUI/Font/F10S_ASCII.c

${OBJECTDIR}/src/GUI/Font/F10_1.o: src/GUI/Font/F10_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F10_1.o src/GUI/Font/F10_1.c

${OBJECTDIR}/src/GUI/Font/F10_ASCII.o: src/GUI/Font/F10_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F10_ASCII.o src/GUI/Font/F10_ASCII.c

${OBJECTDIR}/src/GUI/Font/F13B_1.o: src/GUI/Font/F13B_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13B_1.o src/GUI/Font/F13B_1.c

${OBJECTDIR}/src/GUI/Font/F13B_ASCII.o: src/GUI/Font/F13B_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13B_ASCII.o src/GUI/Font/F13B_ASCII.c

${OBJECTDIR}/src/GUI/Font/F13HB_1.o: src/GUI/Font/F13HB_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13HB_1.o src/GUI/Font/F13HB_1.c

${OBJECTDIR}/src/GUI/Font/F13HB_ASCII.o: src/GUI/Font/F13HB_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13HB_ASCII.o src/GUI/Font/F13HB_ASCII.c

${OBJECTDIR}/src/GUI/Font/F13H_1.o: src/GUI/Font/F13H_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13H_1.o src/GUI/Font/F13H_1.c

${OBJECTDIR}/src/GUI/Font/F13H_ASCII.o: src/GUI/Font/F13H_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13H_ASCII.o src/GUI/Font/F13H_ASCII.c

${OBJECTDIR}/src/GUI/Font/F13_1.o: src/GUI/Font/F13_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13_1.o src/GUI/Font/F13_1.c

${OBJECTDIR}/src/GUI/Font/F13_ASCII.o: src/GUI/Font/F13_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F13_ASCII.o src/GUI/Font/F13_ASCII.c

${OBJECTDIR}/src/GUI/Font/F16B_1.o: src/GUI/Font/F16B_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F16B_1.o src/GUI/Font/F16B_1.c

${OBJECTDIR}/src/GUI/Font/F16B_ASCII.o: src/GUI/Font/F16B_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F16B_ASCII.o src/GUI/Font/F16B_ASCII.c

${OBJECTDIR}/src/GUI/Font/F16_1.o: src/GUI/Font/F16_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F16_1.o src/GUI/Font/F16_1.c

${OBJECTDIR}/src/GUI/Font/F16_1HK.o: src/GUI/Font/F16_1HK.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F16_1HK.o src/GUI/Font/F16_1HK.c

${OBJECTDIR}/src/GUI/Font/F16_ASCII.o: src/GUI/Font/F16_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F16_ASCII.o src/GUI/Font/F16_ASCII.c

${OBJECTDIR}/src/GUI/Font/F16_HK.o: src/GUI/Font/F16_HK.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F16_HK.o src/GUI/Font/F16_HK.c

${OBJECTDIR}/src/GUI/Font/F24B_1.o: src/GUI/Font/F24B_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F24B_1.o src/GUI/Font/F24B_1.c

${OBJECTDIR}/src/GUI/Font/F24B_ASCII.o: src/GUI/Font/F24B_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F24B_ASCII.o src/GUI/Font/F24B_ASCII.c

${OBJECTDIR}/src/GUI/Font/F24_1.o: src/GUI/Font/F24_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F24_1.o src/GUI/Font/F24_1.c

${OBJECTDIR}/src/GUI/Font/F24_ASCII.o: src/GUI/Font/F24_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F24_ASCII.o src/GUI/Font/F24_ASCII.c

${OBJECTDIR}/src/GUI/Font/F32B_1.o: src/GUI/Font/F32B_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F32B_1.o src/GUI/Font/F32B_1.c

${OBJECTDIR}/src/GUI/Font/F32B_ASCII.o: src/GUI/Font/F32B_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F32B_ASCII.o src/GUI/Font/F32B_ASCII.c

${OBJECTDIR}/src/GUI/Font/F32_1.o: src/GUI/Font/F32_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F32_1.o src/GUI/Font/F32_1.c

${OBJECTDIR}/src/GUI/Font/F32_ASCII.o: src/GUI/Font/F32_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F32_ASCII.o src/GUI/Font/F32_ASCII.c

${OBJECTDIR}/src/GUI/Font/F4x6.o: src/GUI/Font/F4x6.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F4x6.o src/GUI/Font/F4x6.c

${OBJECTDIR}/src/GUI/Font/F6x8.o: src/GUI/Font/F6x8.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F6x8.o src/GUI/Font/F6x8.c

${OBJECTDIR}/src/GUI/Font/F8x10_ASCII.o: src/GUI/Font/F8x10_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x10_ASCII.o src/GUI/Font/F8x10_ASCII.c

${OBJECTDIR}/src/GUI/Font/F8x12_ASCII.o: src/GUI/Font/F8x12_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x12_ASCII.o src/GUI/Font/F8x12_ASCII.c

${OBJECTDIR}/src/GUI/Font/F8x13_1.o: src/GUI/Font/F8x13_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x13_1.o src/GUI/Font/F8x13_1.c

${OBJECTDIR}/src/GUI/Font/F8x13_ASCII.o: src/GUI/Font/F8x13_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x13_ASCII.o src/GUI/Font/F8x13_ASCII.c

${OBJECTDIR}/src/GUI/Font/F8x15B_1.o: src/GUI/Font/F8x15B_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x15B_1.o src/GUI/Font/F8x15B_1.c

${OBJECTDIR}/src/GUI/Font/F8x15B_ASCII.o: src/GUI/Font/F8x15B_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x15B_ASCII.o src/GUI/Font/F8x15B_ASCII.c

${OBJECTDIR}/src/GUI/Font/F8x16.o: src/GUI/Font/F8x16.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x16.o src/GUI/Font/F8x16.c

${OBJECTDIR}/src/GUI/Font/F8x8.o: src/GUI/Font/F8x8.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/F8x8.o src/GUI/Font/F8x8.c

${OBJECTDIR}/src/GUI/Font/FComic18B_1.o: src/GUI/Font/FComic18B_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FComic18B_1.o src/GUI/Font/FComic18B_1.c

${OBJECTDIR}/src/GUI/Font/FComic18B_ASCII.o: src/GUI/Font/FComic18B_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FComic18B_ASCII.o src/GUI/Font/FComic18B_ASCII.c

${OBJECTDIR}/src/GUI/Font/FComic24B_1.o: src/GUI/Font/FComic24B_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FComic24B_1.o src/GUI/Font/FComic24B_1.c

${OBJECTDIR}/src/GUI/Font/FComic24B_ASCII.o: src/GUI/Font/FComic24B_ASCII.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FComic24B_ASCII.o src/GUI/Font/FComic24B_ASCII.c

${OBJECTDIR}/src/GUI/Font/FD24x32.o: src/GUI/Font/FD24x32.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD24x32.o src/GUI/Font/FD24x32.c

${OBJECTDIR}/src/GUI/Font/FD32.o: src/GUI/Font/FD32.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD32.o src/GUI/Font/FD32.c

${OBJECTDIR}/src/GUI/Font/FD36x48.o: src/GUI/Font/FD36x48.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD36x48.o src/GUI/Font/FD36x48.c

${OBJECTDIR}/src/GUI/Font/FD48.o: src/GUI/Font/FD48.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD48.o src/GUI/Font/FD48.c

${OBJECTDIR}/src/GUI/Font/FD48x64.o: src/GUI/Font/FD48x64.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD48x64.o src/GUI/Font/FD48x64.c

${OBJECTDIR}/src/GUI/Font/FD60x80.o: src/GUI/Font/FD60x80.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD60x80.o src/GUI/Font/FD60x80.c

${OBJECTDIR}/src/GUI/Font/FD64.o: src/GUI/Font/FD64.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD64.o src/GUI/Font/FD64.c

${OBJECTDIR}/src/GUI/Font/FD80.o: src/GUI/Font/FD80.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Font
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Font/FD80.o src/GUI/Font/FD80.c

${OBJECTDIR}/src/GUI/LCDDriver/LCDWin.o: src/GUI/LCDDriver/LCDWin.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/LCDDriver
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/LCDDriver/LCDWin.o src/GUI/LCDDriver/LCDWin.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV.o: src/GUI/MemDev/GUIDEV.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV.o src/GUI/MemDev/GUIDEV.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_1.o: src/GUI/MemDev/GUIDEV_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_1.o src/GUI/MemDev/GUIDEV_1.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_16.o: src/GUI/MemDev/GUIDEV_16.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_16.o src/GUI/MemDev/GUIDEV_16.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_8.o: src/GUI/MemDev/GUIDEV_8.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_8.o src/GUI/MemDev/GUIDEV_8.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_AA.o: src/GUI/MemDev/GUIDEV_AA.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_AA.o src/GUI/MemDev/GUIDEV_AA.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Auto.o: src/GUI/MemDev/GUIDEV_Auto.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Auto.o src/GUI/MemDev/GUIDEV_Auto.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Banding.o: src/GUI/MemDev/GUIDEV_Banding.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Banding.o src/GUI/MemDev/GUIDEV_Banding.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Clear.o: src/GUI/MemDev/GUIDEV_Clear.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Clear.o src/GUI/MemDev/GUIDEV_Clear.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CmpWithLCD.o: src/GUI/MemDev/GUIDEV_CmpWithLCD.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CmpWithLCD.o src/GUI/MemDev/GUIDEV_CmpWithLCD.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CopyFromLCD.o: src/GUI/MemDev/GUIDEV_CopyFromLCD.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CopyFromLCD.o src/GUI/MemDev/GUIDEV_CopyFromLCD.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CreateFixed.o: src/GUI/MemDev/GUIDEV_CreateFixed.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_CreateFixed.o src/GUI/MemDev/GUIDEV_CreateFixed.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetDataPtr.o: src/GUI/MemDev/GUIDEV_GetDataPtr.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetDataPtr.o src/GUI/MemDev/GUIDEV_GetDataPtr.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetXSize.o: src/GUI/MemDev/GUIDEV_GetXSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetXSize.o src/GUI/MemDev/GUIDEV_GetXSize.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetYSize.o: src/GUI/MemDev/GUIDEV_GetYSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_GetYSize.o src/GUI/MemDev/GUIDEV_GetYSize.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Measure.o: src/GUI/MemDev/GUIDEV_Measure.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Measure.o src/GUI/MemDev/GUIDEV_Measure.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_ReduceYSize.o: src/GUI/MemDev/GUIDEV_ReduceYSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_ReduceYSize.o src/GUI/MemDev/GUIDEV_ReduceYSize.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_SetOrg.o: src/GUI/MemDev/GUIDEV_SetOrg.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_SetOrg.o src/GUI/MemDev/GUIDEV_SetOrg.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Usage.o: src/GUI/MemDev/GUIDEV_Usage.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Usage.o src/GUI/MemDev/GUIDEV_Usage.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_UsageBM.o: src/GUI/MemDev/GUIDEV_UsageBM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_UsageBM.o src/GUI/MemDev/GUIDEV_UsageBM.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Write.o: src/GUI/MemDev/GUIDEV_Write.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_Write.o src/GUI/MemDev/GUIDEV_Write.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_WriteAlpha.o: src/GUI/MemDev/GUIDEV_WriteAlpha.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_WriteAlpha.o src/GUI/MemDev/GUIDEV_WriteAlpha.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_WriteEx.o: src/GUI/MemDev/GUIDEV_WriteEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_WriteEx.o src/GUI/MemDev/GUIDEV_WriteEx.c

${OBJECTDIR}/src/GUI/MemDev/GUIDEV_XY2PTR.o: src/GUI/MemDev/GUIDEV_XY2PTR.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MemDev
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MemDev/GUIDEV_XY2PTR.o src/GUI/MemDev/GUIDEV_XY2PTR.c

${OBJECTDIR}/src/GUI/MultiLayer/LCD_1.o: src/GUI/MultiLayer/LCD_1.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MultiLayer
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MultiLayer/LCD_1.o src/GUI/MultiLayer/LCD_1.c

${OBJECTDIR}/src/GUI/MultiLayer/LCD_2.o: src/GUI/MultiLayer/LCD_2.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MultiLayer
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MultiLayer/LCD_2.o src/GUI/MultiLayer/LCD_2.c

${OBJECTDIR}/src/GUI/MultiLayer/LCD_3.o: src/GUI/MultiLayer/LCD_3.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MultiLayer
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MultiLayer/LCD_3.o src/GUI/MultiLayer/LCD_3.c

${OBJECTDIR}/src/GUI/MultiLayer/LCD_4.o: src/GUI/MultiLayer/LCD_4.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/MultiLayer
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/MultiLayer/LCD_4.o src/GUI/MultiLayer/LCD_4.c

${OBJECTDIR}/src/GUI/WM/WM.o: src/GUI/WM/WM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM.o src/GUI/WM/WM.c

${OBJECTDIR}/src/GUI/WM/WMMemDev.o: src/GUI/WM/WMMemDev.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WMMemDev.o src/GUI/WM/WMMemDev.c

${OBJECTDIR}/src/GUI/WM/WMTouch.o: src/GUI/WM/WMTouch.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WMTouch.o src/GUI/WM/WMTouch.c

${OBJECTDIR}/src/GUI/WM/WM_AttachWindow.o: src/GUI/WM/WM_AttachWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_AttachWindow.o src/GUI/WM/WM_AttachWindow.c

${OBJECTDIR}/src/GUI/WM/WM_BringToBottom.o: src/GUI/WM/WM_BringToBottom.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_BringToBottom.o src/GUI/WM/WM_BringToBottom.c

${OBJECTDIR}/src/GUI/WM/WM_BringToTop.o: src/GUI/WM/WM_BringToTop.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_BringToTop.o src/GUI/WM/WM_BringToTop.c

${OBJECTDIR}/src/GUI/WM/WM_Broadcast.o: src/GUI/WM/WM_Broadcast.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Broadcast.o src/GUI/WM/WM_Broadcast.c

${OBJECTDIR}/src/GUI/WM/WM_CheckScrollPos.o: src/GUI/WM/WM_CheckScrollPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_CheckScrollPos.o src/GUI/WM/WM_CheckScrollPos.c

${OBJECTDIR}/src/GUI/WM/WM_CriticalHandle.o: src/GUI/WM/WM_CriticalHandle.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_CriticalHandle.o src/GUI/WM/WM_CriticalHandle.c

${OBJECTDIR}/src/GUI/WM/WM_DIAG.o: src/GUI/WM/WM_DIAG.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_DIAG.o src/GUI/WM/WM_DIAG.c

${OBJECTDIR}/src/GUI/WM/WM_EnableWindow.o: src/GUI/WM/WM_EnableWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_EnableWindow.o src/GUI/WM/WM_EnableWindow.c

${OBJECTDIR}/src/GUI/WM/WM_ForEachDesc.o: src/GUI/WM/WM_ForEachDesc.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_ForEachDesc.o src/GUI/WM/WM_ForEachDesc.c

${OBJECTDIR}/src/GUI/WM/WM_GetBkColor.o: src/GUI/WM/WM_GetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetBkColor.o src/GUI/WM/WM_GetBkColor.c

${OBJECTDIR}/src/GUI/WM/WM_GetCallback.o: src/GUI/WM/WM_GetCallback.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetCallback.o src/GUI/WM/WM_GetCallback.c

${OBJECTDIR}/src/GUI/WM/WM_GetClientRect.o: src/GUI/WM/WM_GetClientRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetClientRect.o src/GUI/WM/WM_GetClientRect.c

${OBJECTDIR}/src/GUI/WM/WM_GetClientWindow.o: src/GUI/WM/WM_GetClientWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetClientWindow.o src/GUI/WM/WM_GetClientWindow.c

${OBJECTDIR}/src/GUI/WM/WM_GetDesktopWindow.o: src/GUI/WM/WM_GetDesktopWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetDesktopWindow.o src/GUI/WM/WM_GetDesktopWindow.c

${OBJECTDIR}/src/GUI/WM/WM_GetDesktopWindowEx.o: src/GUI/WM/WM_GetDesktopWindowEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetDesktopWindowEx.o src/GUI/WM/WM_GetDesktopWindowEx.c

${OBJECTDIR}/src/GUI/WM/WM_GetDiagInfo.o: src/GUI/WM/WM_GetDiagInfo.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetDiagInfo.o src/GUI/WM/WM_GetDiagInfo.c

${OBJECTDIR}/src/GUI/WM/WM_GetDialogItem.o: src/GUI/WM/WM_GetDialogItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetDialogItem.o src/GUI/WM/WM_GetDialogItem.c

${OBJECTDIR}/src/GUI/WM/WM_GetFirstChild.o: src/GUI/WM/WM_GetFirstChild.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetFirstChild.o src/GUI/WM/WM_GetFirstChild.c

${OBJECTDIR}/src/GUI/WM/WM_GetFlags.o: src/GUI/WM/WM_GetFlags.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetFlags.o src/GUI/WM/WM_GetFlags.c

${OBJECTDIR}/src/GUI/WM/WM_GetFocussedWindow.o: src/GUI/WM/WM_GetFocussedWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetFocussedWindow.o src/GUI/WM/WM_GetFocussedWindow.c

${OBJECTDIR}/src/GUI/WM/WM_GetId.o: src/GUI/WM/WM_GetId.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetId.o src/GUI/WM/WM_GetId.c

${OBJECTDIR}/src/GUI/WM/WM_GetInsideRect.o: src/GUI/WM/WM_GetInsideRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetInsideRect.o src/GUI/WM/WM_GetInsideRect.c

${OBJECTDIR}/src/GUI/WM/WM_GetInsideRectExScrollbar.o: src/GUI/WM/WM_GetInsideRectExScrollbar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetInsideRectExScrollbar.o src/GUI/WM/WM_GetInsideRectExScrollbar.c

${OBJECTDIR}/src/GUI/WM/WM_GetInvalidRect.o: src/GUI/WM/WM_GetInvalidRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetInvalidRect.o src/GUI/WM/WM_GetInvalidRect.c

${OBJECTDIR}/src/GUI/WM/WM_GetNextSibling.o: src/GUI/WM/WM_GetNextSibling.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetNextSibling.o src/GUI/WM/WM_GetNextSibling.c

${OBJECTDIR}/src/GUI/WM/WM_GetOrg.o: src/GUI/WM/WM_GetOrg.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetOrg.o src/GUI/WM/WM_GetOrg.c

${OBJECTDIR}/src/GUI/WM/WM_GetParent.o: src/GUI/WM/WM_GetParent.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetParent.o src/GUI/WM/WM_GetParent.c

${OBJECTDIR}/src/GUI/WM/WM_GetPrevSibling.o: src/GUI/WM/WM_GetPrevSibling.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetPrevSibling.o src/GUI/WM/WM_GetPrevSibling.c

${OBJECTDIR}/src/GUI/WM/WM_GetScrollPartner.o: src/GUI/WM/WM_GetScrollPartner.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetScrollPartner.o src/GUI/WM/WM_GetScrollPartner.c

${OBJECTDIR}/src/GUI/WM/WM_GetScrollPos.o: src/GUI/WM/WM_GetScrollPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetScrollPos.o src/GUI/WM/WM_GetScrollPos.c

${OBJECTDIR}/src/GUI/WM/WM_GetScrollState.o: src/GUI/WM/WM_GetScrollState.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetScrollState.o src/GUI/WM/WM_GetScrollState.c

${OBJECTDIR}/src/GUI/WM/WM_GetScrollbar.o: src/GUI/WM/WM_GetScrollbar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetScrollbar.o src/GUI/WM/WM_GetScrollbar.c

${OBJECTDIR}/src/GUI/WM/WM_GetWindowRect.o: src/GUI/WM/WM_GetWindowRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetWindowRect.o src/GUI/WM/WM_GetWindowRect.c

${OBJECTDIR}/src/GUI/WM/WM_GetWindowSize.o: src/GUI/WM/WM_GetWindowSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_GetWindowSize.o src/GUI/WM/WM_GetWindowSize.c

${OBJECTDIR}/src/GUI/WM/WM_HasCaptured.o: src/GUI/WM/WM_HasCaptured.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_HasCaptured.o src/GUI/WM/WM_HasCaptured.c

${OBJECTDIR}/src/GUI/WM/WM_HasFocus.o: src/GUI/WM/WM_HasFocus.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_HasFocus.o src/GUI/WM/WM_HasFocus.c

${OBJECTDIR}/src/GUI/WM/WM_Hide.o: src/GUI/WM/WM_Hide.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Hide.o src/GUI/WM/WM_Hide.c

${OBJECTDIR}/src/GUI/WM/WM_InvalidateArea.o: src/GUI/WM/WM_InvalidateArea.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_InvalidateArea.o src/GUI/WM/WM_InvalidateArea.c

${OBJECTDIR}/src/GUI/WM/WM_IsCompletelyVisible.o: src/GUI/WM/WM_IsCompletelyVisible.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_IsCompletelyVisible.o src/GUI/WM/WM_IsCompletelyVisible.c

${OBJECTDIR}/src/GUI/WM/WM_IsEnabled.o: src/GUI/WM/WM_IsEnabled.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_IsEnabled.o src/GUI/WM/WM_IsEnabled.c

${OBJECTDIR}/src/GUI/WM/WM_IsFocussable.o: src/GUI/WM/WM_IsFocussable.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_IsFocussable.o src/GUI/WM/WM_IsFocussable.c

${OBJECTDIR}/src/GUI/WM/WM_IsVisible.o: src/GUI/WM/WM_IsVisible.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_IsVisible.o src/GUI/WM/WM_IsVisible.c

${OBJECTDIR}/src/GUI/WM/WM_IsWindow.o: src/GUI/WM/WM_IsWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_IsWindow.o src/GUI/WM/WM_IsWindow.c

${OBJECTDIR}/src/GUI/WM/WM_MakeModal.o: src/GUI/WM/WM_MakeModal.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_MakeModal.o src/GUI/WM/WM_MakeModal.c

${OBJECTDIR}/src/GUI/WM/WM_Move.o: src/GUI/WM/WM_Move.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Move.o src/GUI/WM/WM_Move.c

${OBJECTDIR}/src/GUI/WM/WM_MoveChildTo.o: src/GUI/WM/WM_MoveChildTo.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_MoveChildTo.o src/GUI/WM/WM_MoveChildTo.c

${OBJECTDIR}/src/GUI/WM/WM_NotifyParent.o: src/GUI/WM/WM_NotifyParent.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_NotifyParent.o src/GUI/WM/WM_NotifyParent.c

${OBJECTDIR}/src/GUI/WM/WM_OnKey.o: src/GUI/WM/WM_OnKey.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_OnKey.o src/GUI/WM/WM_OnKey.c

${OBJECTDIR}/src/GUI/WM/WM_PID__GetPrevState.o: src/GUI/WM/WM_PID__GetPrevState.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_PID__GetPrevState.o src/GUI/WM/WM_PID__GetPrevState.c

${OBJECTDIR}/src/GUI/WM/WM_Paint.o: src/GUI/WM/WM_Paint.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Paint.o src/GUI/WM/WM_Paint.c

${OBJECTDIR}/src/GUI/WM/WM_PaintWindowAndDescs.o: src/GUI/WM/WM_PaintWindowAndDescs.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_PaintWindowAndDescs.o src/GUI/WM/WM_PaintWindowAndDescs.c

${OBJECTDIR}/src/GUI/WM/WM_ResizeWindow.o: src/GUI/WM/WM_ResizeWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_ResizeWindow.o src/GUI/WM/WM_ResizeWindow.c

${OBJECTDIR}/src/GUI/WM/WM_SIM.o: src/GUI/WM/WM_SIM.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SIM.o src/GUI/WM/WM_SIM.c

${OBJECTDIR}/src/GUI/WM/WM_Screen2Win.o: src/GUI/WM/WM_Screen2Win.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Screen2Win.o src/GUI/WM/WM_Screen2Win.c

${OBJECTDIR}/src/GUI/WM/WM_SendMessageNoPara.o: src/GUI/WM/WM_SendMessageNoPara.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SendMessageNoPara.o src/GUI/WM/WM_SendMessageNoPara.c

${OBJECTDIR}/src/GUI/WM/WM_SendToParent.o: src/GUI/WM/WM_SendToParent.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SendToParent.o src/GUI/WM/WM_SendToParent.c

${OBJECTDIR}/src/GUI/WM/WM_SetAnchor.o: src/GUI/WM/WM_SetAnchor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetAnchor.o src/GUI/WM/WM_SetAnchor.c

${OBJECTDIR}/src/GUI/WM/WM_SetCallback.o: src/GUI/WM/WM_SetCallback.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetCallback.o src/GUI/WM/WM_SetCallback.c

${OBJECTDIR}/src/GUI/WM/WM_SetCapture.o: src/GUI/WM/WM_SetCapture.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetCapture.o src/GUI/WM/WM_SetCapture.c

${OBJECTDIR}/src/GUI/WM/WM_SetCaptureMove.o: src/GUI/WM/WM_SetCaptureMove.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetCaptureMove.o src/GUI/WM/WM_SetCaptureMove.c

${OBJECTDIR}/src/GUI/WM/WM_SetCreateFlags.o: src/GUI/WM/WM_SetCreateFlags.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetCreateFlags.o src/GUI/WM/WM_SetCreateFlags.c

${OBJECTDIR}/src/GUI/WM/WM_SetDesktopColor.o: src/GUI/WM/WM_SetDesktopColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetDesktopColor.o src/GUI/WM/WM_SetDesktopColor.c

${OBJECTDIR}/src/GUI/WM/WM_SetFocus.o: src/GUI/WM/WM_SetFocus.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetFocus.o src/GUI/WM/WM_SetFocus.c

${OBJECTDIR}/src/GUI/WM/WM_SetFocusOnNextChild.o: src/GUI/WM/WM_SetFocusOnNextChild.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetFocusOnNextChild.o src/GUI/WM/WM_SetFocusOnNextChild.c

${OBJECTDIR}/src/GUI/WM/WM_SetFocusOnPrevChild.o: src/GUI/WM/WM_SetFocusOnPrevChild.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetFocusOnPrevChild.o src/GUI/WM/WM_SetFocusOnPrevChild.c

${OBJECTDIR}/src/GUI/WM/WM_SetId.o: src/GUI/WM/WM_SetId.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetId.o src/GUI/WM/WM_SetId.c

${OBJECTDIR}/src/GUI/WM/WM_SetScrollPos.o: src/GUI/WM/WM_SetScrollPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetScrollPos.o src/GUI/WM/WM_SetScrollPos.c

${OBJECTDIR}/src/GUI/WM/WM_SetScrollState.o: src/GUI/WM/WM_SetScrollState.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetScrollState.o src/GUI/WM/WM_SetScrollState.c

${OBJECTDIR}/src/GUI/WM/WM_SetScrollbar.o: src/GUI/WM/WM_SetScrollbar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetScrollbar.o src/GUI/WM/WM_SetScrollbar.c

${OBJECTDIR}/src/GUI/WM/WM_SetSize.o: src/GUI/WM/WM_SetSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetSize.o src/GUI/WM/WM_SetSize.c

${OBJECTDIR}/src/GUI/WM/WM_SetTrans.o: src/GUI/WM/WM_SetTrans.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetTrans.o src/GUI/WM/WM_SetTrans.c

${OBJECTDIR}/src/GUI/WM/WM_SetTransState.o: src/GUI/WM/WM_SetTransState.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetTransState.o src/GUI/WM/WM_SetTransState.c

${OBJECTDIR}/src/GUI/WM/WM_SetUserClipRect.o: src/GUI/WM/WM_SetUserClipRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetUserClipRect.o src/GUI/WM/WM_SetUserClipRect.c

${OBJECTDIR}/src/GUI/WM/WM_SetWindowPos.o: src/GUI/WM/WM_SetWindowPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetWindowPos.o src/GUI/WM/WM_SetWindowPos.c

${OBJECTDIR}/src/GUI/WM/WM_SetXSize.o: src/GUI/WM/WM_SetXSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetXSize.o src/GUI/WM/WM_SetXSize.c

${OBJECTDIR}/src/GUI/WM/WM_SetYSize.o: src/GUI/WM/WM_SetYSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetYSize.o src/GUI/WM/WM_SetYSize.c

${OBJECTDIR}/src/GUI/WM/WM_SetpfPollPID.o: src/GUI/WM/WM_SetpfPollPID.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_SetpfPollPID.o src/GUI/WM/WM_SetpfPollPID.c

${OBJECTDIR}/src/GUI/WM/WM_Show.o: src/GUI/WM/WM_Show.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Show.o src/GUI/WM/WM_Show.c

${OBJECTDIR}/src/GUI/WM/WM_StayOnTop.o: src/GUI/WM/WM_StayOnTop.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_StayOnTop.o src/GUI/WM/WM_StayOnTop.c

${OBJECTDIR}/src/GUI/WM/WM_Timer.o: src/GUI/WM/WM_Timer.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Timer.o src/GUI/WM/WM_Timer.c

${OBJECTDIR}/src/GUI/WM/WM_TimerExternal.o: src/GUI/WM/WM_TimerExternal.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_TimerExternal.o src/GUI/WM/WM_TimerExternal.c

${OBJECTDIR}/src/GUI/WM/WM_UpdateWindowAndDescs.o: src/GUI/WM/WM_UpdateWindowAndDescs.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_UpdateWindowAndDescs.o src/GUI/WM/WM_UpdateWindowAndDescs.c

${OBJECTDIR}/src/GUI/WM/WM_UserData.o: src/GUI/WM/WM_UserData.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_UserData.o src/GUI/WM/WM_UserData.c

${OBJECTDIR}/src/GUI/WM/WM_Validate.o: src/GUI/WM/WM_Validate.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_Validate.o src/GUI/WM/WM_Validate.c

${OBJECTDIR}/src/GUI/WM/WM_ValidateWindow.o: src/GUI/WM/WM_ValidateWindow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM_ValidateWindow.o src/GUI/WM/WM_ValidateWindow.c

${OBJECTDIR}/src/GUI/WM/WM__ForEachDesc.o: src/GUI/WM/WM__ForEachDesc.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__ForEachDesc.o src/GUI/WM/WM__ForEachDesc.c

${OBJECTDIR}/src/GUI/WM/WM__GetFirstSibling.o: src/GUI/WM/WM__GetFirstSibling.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__GetFirstSibling.o src/GUI/WM/WM__GetFirstSibling.c

${OBJECTDIR}/src/GUI/WM/WM__GetFocussedChild.o: src/GUI/WM/WM__GetFocussedChild.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__GetFocussedChild.o src/GUI/WM/WM__GetFocussedChild.c

${OBJECTDIR}/src/GUI/WM/WM__GetLastSibling.o: src/GUI/WM/WM__GetLastSibling.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__GetLastSibling.o src/GUI/WM/WM__GetLastSibling.c

${OBJECTDIR}/src/GUI/WM/WM__GetOrg_AA.o: src/GUI/WM/WM__GetOrg_AA.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__GetOrg_AA.o src/GUI/WM/WM__GetOrg_AA.c

${OBJECTDIR}/src/GUI/WM/WM__GetPrevSibling.o: src/GUI/WM/WM__GetPrevSibling.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__GetPrevSibling.o src/GUI/WM/WM__GetPrevSibling.c

${OBJECTDIR}/src/GUI/WM/WM__IsAncestor.o: src/GUI/WM/WM__IsAncestor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__IsAncestor.o src/GUI/WM/WM__IsAncestor.c

${OBJECTDIR}/src/GUI/WM/WM__IsChild.o: src/GUI/WM/WM__IsChild.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__IsChild.o src/GUI/WM/WM__IsChild.c

${OBJECTDIR}/src/GUI/WM/WM__IsEnabled.o: src/GUI/WM/WM__IsEnabled.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__IsEnabled.o src/GUI/WM/WM__IsEnabled.c

${OBJECTDIR}/src/GUI/WM/WM__NotifyVisChanged.o: src/GUI/WM/WM__NotifyVisChanged.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__NotifyVisChanged.o src/GUI/WM/WM__NotifyVisChanged.c

${OBJECTDIR}/src/GUI/WM/WM__Screen2Client.o: src/GUI/WM/WM__Screen2Client.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__Screen2Client.o src/GUI/WM/WM__Screen2Client.c

${OBJECTDIR}/src/GUI/WM/WM__SendMessage.o: src/GUI/WM/WM__SendMessage.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__SendMessage.o src/GUI/WM/WM__SendMessage.c

${OBJECTDIR}/src/GUI/WM/WM__SendMessageIfEnabled.o: src/GUI/WM/WM__SendMessageIfEnabled.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__SendMessageIfEnabled.o src/GUI/WM/WM__SendMessageIfEnabled.c

${OBJECTDIR}/src/GUI/WM/WM__SendMessageNoPara.o: src/GUI/WM/WM__SendMessageNoPara.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__SendMessageNoPara.o src/GUI/WM/WM__SendMessageNoPara.c

${OBJECTDIR}/src/GUI/WM/WM__UpdateChildPositions.o: src/GUI/WM/WM__UpdateChildPositions.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/WM
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/WM/WM__UpdateChildPositions.o src/GUI/WM/WM__UpdateChildPositions.c

${OBJECTDIR}/src/GUI/Widget/BUTTON.o: src/GUI/Widget/BUTTON.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON.o src/GUI/Widget/BUTTON.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_BMP.o: src/GUI/Widget/BUTTON_BMP.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_BMP.o src/GUI/Widget/BUTTON_BMP.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_Bitmap.o: src/GUI/Widget/BUTTON_Bitmap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_Bitmap.o src/GUI/Widget/BUTTON_Bitmap.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_Create.o: src/GUI/Widget/BUTTON_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_Create.o src/GUI/Widget/BUTTON_Create.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_CreateIndirect.o: src/GUI/Widget/BUTTON_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_CreateIndirect.o src/GUI/Widget/BUTTON_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_Default.o: src/GUI/Widget/BUTTON_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_Default.o src/GUI/Widget/BUTTON_Default.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_Get.o: src/GUI/Widget/BUTTON_Get.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_Get.o src/GUI/Widget/BUTTON_Get.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_GetBitmap.o: src/GUI/Widget/BUTTON_GetBitmap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_GetBitmap.o src/GUI/Widget/BUTTON_GetBitmap.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_IsPressed.o: src/GUI/Widget/BUTTON_IsPressed.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_IsPressed.o src/GUI/Widget/BUTTON_IsPressed.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_SelfDraw.o: src/GUI/Widget/BUTTON_SelfDraw.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_SelfDraw.o src/GUI/Widget/BUTTON_SelfDraw.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_SetFocusColor.o: src/GUI/Widget/BUTTON_SetFocusColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_SetFocusColor.o src/GUI/Widget/BUTTON_SetFocusColor.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_SetTextAlign.o: src/GUI/Widget/BUTTON_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_SetTextAlign.o src/GUI/Widget/BUTTON_SetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/BUTTON_StreamedBitmap.o: src/GUI/Widget/BUTTON_StreamedBitmap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON_StreamedBitmap.o src/GUI/Widget/BUTTON_StreamedBitmap.c

${OBJECTDIR}/src/GUI/Widget/BUTTON__SetBitmapObj.o: src/GUI/Widget/BUTTON__SetBitmapObj.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/BUTTON__SetBitmapObj.o src/GUI/Widget/BUTTON__SetBitmapObj.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX.o: src/GUI/Widget/CHECKBOX.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX.o src/GUI/Widget/CHECKBOX.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Create.o: src/GUI/Widget/CHECKBOX_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Create.o src/GUI/Widget/CHECKBOX_Create.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_CreateIndirect.o: src/GUI/Widget/CHECKBOX_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_CreateIndirect.o src/GUI/Widget/CHECKBOX_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Default.o: src/GUI/Widget/CHECKBOX_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Default.o src/GUI/Widget/CHECKBOX_Default.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_GetState.o: src/GUI/Widget/CHECKBOX_GetState.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_GetState.o src/GUI/Widget/CHECKBOX_GetState.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_GetText.o: src/GUI/Widget/CHECKBOX_GetText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_GetText.o src/GUI/Widget/CHECKBOX_GetText.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Image.o: src/GUI/Widget/CHECKBOX_Image.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_Image.o src/GUI/Widget/CHECKBOX_Image.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_IsChecked.o: src/GUI/Widget/CHECKBOX_IsChecked.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_IsChecked.o src/GUI/Widget/CHECKBOX_IsChecked.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetBkColor.o: src/GUI/Widget/CHECKBOX_SetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetBkColor.o src/GUI/Widget/CHECKBOX_SetBkColor.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetBoxBkColor.o: src/GUI/Widget/CHECKBOX_SetBoxBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetBoxBkColor.o src/GUI/Widget/CHECKBOX_SetBoxBkColor.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetDefaultImage.o: src/GUI/Widget/CHECKBOX_SetDefaultImage.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetDefaultImage.o src/GUI/Widget/CHECKBOX_SetDefaultImage.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetFocusColor.o: src/GUI/Widget/CHECKBOX_SetFocusColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetFocusColor.o src/GUI/Widget/CHECKBOX_SetFocusColor.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetFont.o: src/GUI/Widget/CHECKBOX_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetFont.o src/GUI/Widget/CHECKBOX_SetFont.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetImage.o: src/GUI/Widget/CHECKBOX_SetImage.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetImage.o src/GUI/Widget/CHECKBOX_SetImage.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetNumStates.o: src/GUI/Widget/CHECKBOX_SetNumStates.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetNumStates.o src/GUI/Widget/CHECKBOX_SetNumStates.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetSpacing.o: src/GUI/Widget/CHECKBOX_SetSpacing.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetSpacing.o src/GUI/Widget/CHECKBOX_SetSpacing.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetState.o: src/GUI/Widget/CHECKBOX_SetState.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetState.o src/GUI/Widget/CHECKBOX_SetState.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetText.o: src/GUI/Widget/CHECKBOX_SetText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetText.o src/GUI/Widget/CHECKBOX_SetText.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetTextAlign.o: src/GUI/Widget/CHECKBOX_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetTextAlign.o src/GUI/Widget/CHECKBOX_SetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetTextColor.o: src/GUI/Widget/CHECKBOX_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/CHECKBOX_SetTextColor.o src/GUI/Widget/CHECKBOX_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/DIALOG.o: src/GUI/Widget/DIALOG.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DIALOG.o src/GUI/Widget/DIALOG.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN.o: src/GUI/Widget/DROPDOWN.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN.o src/GUI/Widget/DROPDOWN.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_AddString.o: src/GUI/Widget/DROPDOWN_AddString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_AddString.o src/GUI/Widget/DROPDOWN_AddString.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_Create.o: src/GUI/Widget/DROPDOWN_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_Create.o src/GUI/Widget/DROPDOWN_Create.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_CreateIndirect.o: src/GUI/Widget/DROPDOWN_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_CreateIndirect.o src/GUI/Widget/DROPDOWN_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_Default.o: src/GUI/Widget/DROPDOWN_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_Default.o src/GUI/Widget/DROPDOWN_Default.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_DeleteItem.o: src/GUI/Widget/DROPDOWN_DeleteItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_DeleteItem.o src/GUI/Widget/DROPDOWN_DeleteItem.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_GetNumItems.o: src/GUI/Widget/DROPDOWN_GetNumItems.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_GetNumItems.o src/GUI/Widget/DROPDOWN_GetNumItems.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_InsertString.o: src/GUI/Widget/DROPDOWN_InsertString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_InsertString.o src/GUI/Widget/DROPDOWN_InsertString.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_ItemSpacing.o: src/GUI/Widget/DROPDOWN_ItemSpacing.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_ItemSpacing.o src/GUI/Widget/DROPDOWN_ItemSpacing.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetAutoScroll.o: src/GUI/Widget/DROPDOWN_SetAutoScroll.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetAutoScroll.o src/GUI/Widget/DROPDOWN_SetAutoScroll.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetBkColor.o: src/GUI/Widget/DROPDOWN_SetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetBkColor.o src/GUI/Widget/DROPDOWN_SetBkColor.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetColor.o: src/GUI/Widget/DROPDOWN_SetColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetColor.o src/GUI/Widget/DROPDOWN_SetColor.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetFont.o: src/GUI/Widget/DROPDOWN_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetFont.o src/GUI/Widget/DROPDOWN_SetFont.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetScrollbarColor.o: src/GUI/Widget/DROPDOWN_SetScrollbarColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetScrollbarColor.o src/GUI/Widget/DROPDOWN_SetScrollbarColor.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetScrollbarWidth.o: src/GUI/Widget/DROPDOWN_SetScrollbarWidth.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetScrollbarWidth.o src/GUI/Widget/DROPDOWN_SetScrollbarWidth.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextAlign.o: src/GUI/Widget/DROPDOWN_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextAlign.o src/GUI/Widget/DROPDOWN_SetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextColor.o: src/GUI/Widget/DROPDOWN_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextColor.o src/GUI/Widget/DROPDOWN_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextHeight.o: src/GUI/Widget/DROPDOWN_SetTextHeight.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/DROPDOWN_SetTextHeight.o src/GUI/Widget/DROPDOWN_SetTextHeight.c

${OBJECTDIR}/src/GUI/Widget/EDIT.o: src/GUI/Widget/EDIT.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT.o src/GUI/Widget/EDIT.c

${OBJECTDIR}/src/GUI/Widget/EDITBin.o: src/GUI/Widget/EDITBin.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDITBin.o src/GUI/Widget/EDITBin.c

${OBJECTDIR}/src/GUI/Widget/EDITDec.o: src/GUI/Widget/EDITDec.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDITDec.o src/GUI/Widget/EDITDec.c

${OBJECTDIR}/src/GUI/Widget/EDITFloat.o: src/GUI/Widget/EDITFloat.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDITFloat.o src/GUI/Widget/EDITFloat.c

${OBJECTDIR}/src/GUI/Widget/EDITHex.o: src/GUI/Widget/EDITHex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDITHex.o src/GUI/Widget/EDITHex.c

${OBJECTDIR}/src/GUI/Widget/EDITUlong.o: src/GUI/Widget/EDITUlong.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDITUlong.o src/GUI/Widget/EDITUlong.c

${OBJECTDIR}/src/GUI/Widget/EDIT_Create.o: src/GUI/Widget/EDIT_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_Create.o src/GUI/Widget/EDIT_Create.c

${OBJECTDIR}/src/GUI/Widget/EDIT_CreateIndirect.o: src/GUI/Widget/EDIT_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_CreateIndirect.o src/GUI/Widget/EDIT_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/EDIT_Default.o: src/GUI/Widget/EDIT_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_Default.o src/GUI/Widget/EDIT_Default.c

${OBJECTDIR}/src/GUI/Widget/EDIT_GetCursorPixelPos.o: src/GUI/Widget/EDIT_GetCursorPixelPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_GetCursorPixelPos.o src/GUI/Widget/EDIT_GetCursorPixelPos.c

${OBJECTDIR}/src/GUI/Widget/EDIT_GetCursorPos.o: src/GUI/Widget/EDIT_GetCursorPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_GetCursorPos.o src/GUI/Widget/EDIT_GetCursorPos.c

${OBJECTDIR}/src/GUI/Widget/EDIT_GetNumChars.o: src/GUI/Widget/EDIT_GetNumChars.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_GetNumChars.o src/GUI/Widget/EDIT_GetNumChars.c

${OBJECTDIR}/src/GUI/Widget/EDIT_SetCursorAtChar.o: src/GUI/Widget/EDIT_SetCursorAtChar.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_SetCursorAtChar.o src/GUI/Widget/EDIT_SetCursorAtChar.c

${OBJECTDIR}/src/GUI/Widget/EDIT_SetFocussable.o: src/GUI/Widget/EDIT_SetFocussable.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_SetFocussable.o src/GUI/Widget/EDIT_SetFocussable.c

${OBJECTDIR}/src/GUI/Widget/EDIT_SetInsertMode.o: src/GUI/Widget/EDIT_SetInsertMode.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_SetInsertMode.o src/GUI/Widget/EDIT_SetInsertMode.c

${OBJECTDIR}/src/GUI/Widget/EDIT_SetSel.o: src/GUI/Widget/EDIT_SetSel.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_SetSel.o src/GUI/Widget/EDIT_SetSel.c

${OBJECTDIR}/src/GUI/Widget/EDIT_SetTextMode.o: src/GUI/Widget/EDIT_SetTextMode.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_SetTextMode.o src/GUI/Widget/EDIT_SetTextMode.c

${OBJECTDIR}/src/GUI/Widget/EDIT_SetpfAddKeyEx.o: src/GUI/Widget/EDIT_SetpfAddKeyEx.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_SetpfAddKeyEx.o src/GUI/Widget/EDIT_SetpfAddKeyEx.c

${OBJECTDIR}/src/GUI/Widget/EDIT_SetpfUpdateBuffer.o: src/GUI/Widget/EDIT_SetpfUpdateBuffer.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/EDIT_SetpfUpdateBuffer.o src/GUI/Widget/EDIT_SetpfUpdateBuffer.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN.o: src/GUI/Widget/FRAMEWIN.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN.o src/GUI/Widget/FRAMEWIN.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_AddMenu.o: src/GUI/Widget/FRAMEWIN_AddMenu.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_AddMenu.o src/GUI/Widget/FRAMEWIN_AddMenu.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Button.o: src/GUI/Widget/FRAMEWIN_Button.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Button.o src/GUI/Widget/FRAMEWIN_Button.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonClose.o: src/GUI/Widget/FRAMEWIN_ButtonClose.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonClose.o src/GUI/Widget/FRAMEWIN_ButtonClose.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonMax.o: src/GUI/Widget/FRAMEWIN_ButtonMax.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonMax.o src/GUI/Widget/FRAMEWIN_ButtonMax.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonMin.o: src/GUI/Widget/FRAMEWIN_ButtonMin.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_ButtonMin.o src/GUI/Widget/FRAMEWIN_ButtonMin.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Create.o: src/GUI/Widget/FRAMEWIN_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Create.o src/GUI/Widget/FRAMEWIN_Create.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_CreateIndirect.o: src/GUI/Widget/FRAMEWIN_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_CreateIndirect.o src/GUI/Widget/FRAMEWIN_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Default.o: src/GUI/Widget/FRAMEWIN_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Default.o src/GUI/Widget/FRAMEWIN_Default.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Get.o: src/GUI/Widget/FRAMEWIN_Get.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_Get.o src/GUI/Widget/FRAMEWIN_Get.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_IsMinMax.o: src/GUI/Widget/FRAMEWIN_IsMinMax.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_IsMinMax.o src/GUI/Widget/FRAMEWIN_IsMinMax.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_MinMaxRest.o: src/GUI/Widget/FRAMEWIN_MinMaxRest.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_MinMaxRest.o src/GUI/Widget/FRAMEWIN_MinMaxRest.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetBorderSize.o: src/GUI/Widget/FRAMEWIN_SetBorderSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetBorderSize.o src/GUI/Widget/FRAMEWIN_SetBorderSize.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetColors.o: src/GUI/Widget/FRAMEWIN_SetColors.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetColors.o src/GUI/Widget/FRAMEWIN_SetColors.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetFont.o: src/GUI/Widget/FRAMEWIN_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetFont.o src/GUI/Widget/FRAMEWIN_SetFont.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetResizeable.o: src/GUI/Widget/FRAMEWIN_SetResizeable.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetResizeable.o src/GUI/Widget/FRAMEWIN_SetResizeable.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetTitleHeight.o: src/GUI/Widget/FRAMEWIN_SetTitleHeight.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetTitleHeight.o src/GUI/Widget/FRAMEWIN_SetTitleHeight.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetTitleVis.o: src/GUI/Widget/FRAMEWIN_SetTitleVis.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN_SetTitleVis.o src/GUI/Widget/FRAMEWIN_SetTitleVis.c

${OBJECTDIR}/src/GUI/Widget/FRAMEWIN__UpdateButtons.o: src/GUI/Widget/FRAMEWIN__UpdateButtons.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/FRAMEWIN__UpdateButtons.o src/GUI/Widget/FRAMEWIN__UpdateButtons.c

${OBJECTDIR}/src/GUI/Widget/GRAPH.o: src/GUI/Widget/GRAPH.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GRAPH.o src/GUI/Widget/GRAPH.c

${OBJECTDIR}/src/GUI/Widget/GRAPH_CreateIndirect.o: src/GUI/Widget/GRAPH_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GRAPH_CreateIndirect.o src/GUI/Widget/GRAPH_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/GRAPH_DATA_XY.o: src/GUI/Widget/GRAPH_DATA_XY.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GRAPH_DATA_XY.o src/GUI/Widget/GRAPH_DATA_XY.c

${OBJECTDIR}/src/GUI/Widget/GRAPH_DATA_YT.o: src/GUI/Widget/GRAPH_DATA_YT.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GRAPH_DATA_YT.o src/GUI/Widget/GRAPH_DATA_YT.c

${OBJECTDIR}/src/GUI/Widget/GRAPH_SCALE.o: src/GUI/Widget/GRAPH_SCALE.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GRAPH_SCALE.o src/GUI/Widget/GRAPH_SCALE.c

${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY.o: src/GUI/Widget/GUI_ARRAY.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY.o src/GUI/Widget/GUI_ARRAY.c

${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_DeleteItem.o: src/GUI/Widget/GUI_ARRAY_DeleteItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_DeleteItem.o src/GUI/Widget/GUI_ARRAY_DeleteItem.c

${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_InsertItem.o: src/GUI/Widget/GUI_ARRAY_InsertItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_InsertItem.o src/GUI/Widget/GUI_ARRAY_InsertItem.c

${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_ResizeItem.o: src/GUI/Widget/GUI_ARRAY_ResizeItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_ARRAY_ResizeItem.o src/GUI/Widget/GUI_ARRAY_ResizeItem.c

${OBJECTDIR}/src/GUI/Widget/GUI_DRAW.o: src/GUI/Widget/GUI_DRAW.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_DRAW.o src/GUI/Widget/GUI_DRAW.c

${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_BITMAP.o: src/GUI/Widget/GUI_DRAW_BITMAP.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_BITMAP.o src/GUI/Widget/GUI_DRAW_BITMAP.c

${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_BMP.o: src/GUI/Widget/GUI_DRAW_BMP.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_BMP.o src/GUI/Widget/GUI_DRAW_BMP.c

${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_STREAMED.o: src/GUI/Widget/GUI_DRAW_STREAMED.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_STREAMED.o src/GUI/Widget/GUI_DRAW_STREAMED.c

${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_Self.o: src/GUI/Widget/GUI_DRAW_Self.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_DRAW_Self.o src/GUI/Widget/GUI_DRAW_Self.c

${OBJECTDIR}/src/GUI/Widget/GUI_EditBin.o: src/GUI/Widget/GUI_EditBin.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_EditBin.o src/GUI/Widget/GUI_EditBin.c

${OBJECTDIR}/src/GUI/Widget/GUI_EditDec.o: src/GUI/Widget/GUI_EditDec.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_EditDec.o src/GUI/Widget/GUI_EditDec.c

${OBJECTDIR}/src/GUI/Widget/GUI_EditFloat.o: src/GUI/Widget/GUI_EditFloat.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_EditFloat.o src/GUI/Widget/GUI_EditFloat.c

${OBJECTDIR}/src/GUI/Widget/GUI_EditHex.o: src/GUI/Widget/GUI_EditHex.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_EditHex.o src/GUI/Widget/GUI_EditHex.c

${OBJECTDIR}/src/GUI/Widget/GUI_EditString.o: src/GUI/Widget/GUI_EditString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_EditString.o src/GUI/Widget/GUI_EditString.c

${OBJECTDIR}/src/GUI/Widget/GUI_HOOK.o: src/GUI/Widget/GUI_HOOK.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/GUI_HOOK.o src/GUI/Widget/GUI_HOOK.c

${OBJECTDIR}/src/GUI/Widget/HEADER.o: src/GUI/Widget/HEADER.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER.o src/GUI/Widget/HEADER.c

${OBJECTDIR}/src/GUI/Widget/HEADER_BMP.o: src/GUI/Widget/HEADER_BMP.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER_BMP.o src/GUI/Widget/HEADER_BMP.c

${OBJECTDIR}/src/GUI/Widget/HEADER_Bitmap.o: src/GUI/Widget/HEADER_Bitmap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER_Bitmap.o src/GUI/Widget/HEADER_Bitmap.c

${OBJECTDIR}/src/GUI/Widget/HEADER_Create.o: src/GUI/Widget/HEADER_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER_Create.o src/GUI/Widget/HEADER_Create.c

${OBJECTDIR}/src/GUI/Widget/HEADER_CreateIndirect.o: src/GUI/Widget/HEADER_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER_CreateIndirect.o src/GUI/Widget/HEADER_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/HEADER_GetSel.o: src/GUI/Widget/HEADER_GetSel.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER_GetSel.o src/GUI/Widget/HEADER_GetSel.c

${OBJECTDIR}/src/GUI/Widget/HEADER_SetDragLimit.o: src/GUI/Widget/HEADER_SetDragLimit.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER_SetDragLimit.o src/GUI/Widget/HEADER_SetDragLimit.c

${OBJECTDIR}/src/GUI/Widget/HEADER_StreamedBitmap.o: src/GUI/Widget/HEADER_StreamedBitmap.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER_StreamedBitmap.o src/GUI/Widget/HEADER_StreamedBitmap.c

${OBJECTDIR}/src/GUI/Widget/HEADER__SetDrawObj.o: src/GUI/Widget/HEADER__SetDrawObj.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/HEADER__SetDrawObj.o src/GUI/Widget/HEADER__SetDrawObj.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX.o: src/GUI/Widget/LISTBOX.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX.o src/GUI/Widget/LISTBOX.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_Create.o: src/GUI/Widget/LISTBOX_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_Create.o src/GUI/Widget/LISTBOX_Create.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_CreateIndirect.o: src/GUI/Widget/LISTBOX_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_CreateIndirect.o src/GUI/Widget/LISTBOX_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_Default.o: src/GUI/Widget/LISTBOX_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_Default.o src/GUI/Widget/LISTBOX_Default.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_DeleteItem.o: src/GUI/Widget/LISTBOX_DeleteItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_DeleteItem.o src/GUI/Widget/LISTBOX_DeleteItem.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_Font.o: src/GUI/Widget/LISTBOX_Font.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_Font.o src/GUI/Widget/LISTBOX_Font.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetItemText.o: src/GUI/Widget/LISTBOX_GetItemText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetItemText.o src/GUI/Widget/LISTBOX_GetItemText.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetNumItems.o: src/GUI/Widget/LISTBOX_GetNumItems.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetNumItems.o src/GUI/Widget/LISTBOX_GetNumItems.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetTextAlign.o: src/GUI/Widget/LISTBOX_GetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_GetTextAlign.o src/GUI/Widget/LISTBOX_GetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_InsertString.o: src/GUI/Widget/LISTBOX_InsertString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_InsertString.o src/GUI/Widget/LISTBOX_InsertString.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_ItemDisabled.o: src/GUI/Widget/LISTBOX_ItemDisabled.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_ItemDisabled.o src/GUI/Widget/LISTBOX_ItemDisabled.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_ItemSpacing.o: src/GUI/Widget/LISTBOX_ItemSpacing.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_ItemSpacing.o src/GUI/Widget/LISTBOX_ItemSpacing.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_MultiSel.o: src/GUI/Widget/LISTBOX_MultiSel.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_MultiSel.o src/GUI/Widget/LISTBOX_MultiSel.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_ScrollStep.o: src/GUI/Widget/LISTBOX_ScrollStep.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_ScrollStep.o src/GUI/Widget/LISTBOX_ScrollStep.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetAutoScroll.o: src/GUI/Widget/LISTBOX_SetAutoScroll.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetAutoScroll.o src/GUI/Widget/LISTBOX_SetAutoScroll.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetBkColor.o: src/GUI/Widget/LISTBOX_SetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetBkColor.o src/GUI/Widget/LISTBOX_SetBkColor.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetOwner.o: src/GUI/Widget/LISTBOX_SetOwner.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetOwner.o src/GUI/Widget/LISTBOX_SetOwner.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetOwnerDraw.o: src/GUI/Widget/LISTBOX_SetOwnerDraw.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetOwnerDraw.o src/GUI/Widget/LISTBOX_SetOwnerDraw.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetScrollbarColor.o: src/GUI/Widget/LISTBOX_SetScrollbarColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetScrollbarColor.o src/GUI/Widget/LISTBOX_SetScrollbarColor.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetScrollbarWidth.o: src/GUI/Widget/LISTBOX_SetScrollbarWidth.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetScrollbarWidth.o src/GUI/Widget/LISTBOX_SetScrollbarWidth.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetString.o: src/GUI/Widget/LISTBOX_SetString.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetString.o src/GUI/Widget/LISTBOX_SetString.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetTextAlign.o: src/GUI/Widget/LISTBOX_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetTextAlign.o src/GUI/Widget/LISTBOX_SetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetTextColor.o: src/GUI/Widget/LISTBOX_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTBOX_SetTextColor.o src/GUI/Widget/LISTBOX_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW.o: src/GUI/Widget/LISTVIEW.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW.o src/GUI/Widget/LISTVIEW.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_Create.o: src/GUI/Widget/LISTVIEW_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_Create.o src/GUI/Widget/LISTVIEW_Create.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_CreateIndirect.o: src/GUI/Widget/LISTVIEW_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_CreateIndirect.o src/GUI/Widget/LISTVIEW_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_Default.o: src/GUI/Widget/LISTVIEW_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_Default.o src/GUI/Widget/LISTVIEW_Default.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteAllRows.o: src/GUI/Widget/LISTVIEW_DeleteAllRows.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteAllRows.o src/GUI/Widget/LISTVIEW_DeleteAllRows.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteColumn.o: src/GUI/Widget/LISTVIEW_DeleteColumn.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteColumn.o src/GUI/Widget/LISTVIEW_DeleteColumn.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteRow.o: src/GUI/Widget/LISTVIEW_DeleteRow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DeleteRow.o src/GUI/Widget/LISTVIEW_DeleteRow.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DisableRow.o: src/GUI/Widget/LISTVIEW_DisableRow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_DisableRow.o src/GUI/Widget/LISTVIEW_DisableRow.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetBkColor.o: src/GUI/Widget/LISTVIEW_GetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetBkColor.o src/GUI/Widget/LISTVIEW_GetBkColor.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetFont.o: src/GUI/Widget/LISTVIEW_GetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetFont.o src/GUI/Widget/LISTVIEW_GetFont.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetHeader.o: src/GUI/Widget/LISTVIEW_GetHeader.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetHeader.o src/GUI/Widget/LISTVIEW_GetHeader.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetItemText.o: src/GUI/Widget/LISTVIEW_GetItemText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetItemText.o src/GUI/Widget/LISTVIEW_GetItemText.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetNumColumns.o: src/GUI/Widget/LISTVIEW_GetNumColumns.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetNumColumns.o src/GUI/Widget/LISTVIEW_GetNumColumns.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetNumRows.o: src/GUI/Widget/LISTVIEW_GetNumRows.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetNumRows.o src/GUI/Widget/LISTVIEW_GetNumRows.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetSel.o: src/GUI/Widget/LISTVIEW_GetSel.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetSel.o src/GUI/Widget/LISTVIEW_GetSel.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetTextColor.o: src/GUI/Widget/LISTVIEW_GetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_GetTextColor.o src/GUI/Widget/LISTVIEW_GetTextColor.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_InsertRow.o: src/GUI/Widget/LISTVIEW_InsertRow.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_InsertRow.o src/GUI/Widget/LISTVIEW_InsertRow.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetAutoScroll.o: src/GUI/Widget/LISTVIEW_SetAutoScroll.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetAutoScroll.o src/GUI/Widget/LISTVIEW_SetAutoScroll.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetBkColor.o: src/GUI/Widget/LISTVIEW_SetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetBkColor.o src/GUI/Widget/LISTVIEW_SetBkColor.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetColumnWidth.o: src/GUI/Widget/LISTVIEW_SetColumnWidth.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetColumnWidth.o src/GUI/Widget/LISTVIEW_SetColumnWidth.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetFont.o: src/GUI/Widget/LISTVIEW_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetFont.o src/GUI/Widget/LISTVIEW_SetFont.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetGridVis.o: src/GUI/Widget/LISTVIEW_SetGridVis.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetGridVis.o src/GUI/Widget/LISTVIEW_SetGridVis.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetItemColor.o: src/GUI/Widget/LISTVIEW_SetItemColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetItemColor.o src/GUI/Widget/LISTVIEW_SetItemColor.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetItemText.o: src/GUI/Widget/LISTVIEW_SetItemText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetItemText.o src/GUI/Widget/LISTVIEW_SetItemText.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetLBorder.o: src/GUI/Widget/LISTVIEW_SetLBorder.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetLBorder.o src/GUI/Widget/LISTVIEW_SetLBorder.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetRBorder.o: src/GUI/Widget/LISTVIEW_SetRBorder.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetRBorder.o src/GUI/Widget/LISTVIEW_SetRBorder.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetRowHeight.o: src/GUI/Widget/LISTVIEW_SetRowHeight.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetRowHeight.o src/GUI/Widget/LISTVIEW_SetRowHeight.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetSel.o: src/GUI/Widget/LISTVIEW_SetSel.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetSel.o src/GUI/Widget/LISTVIEW_SetSel.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetSort.o: src/GUI/Widget/LISTVIEW_SetSort.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetSort.o src/GUI/Widget/LISTVIEW_SetSort.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetTextAlign.o: src/GUI/Widget/LISTVIEW_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetTextAlign.o src/GUI/Widget/LISTVIEW_SetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetTextColor.o: src/GUI/Widget/LISTVIEW_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_SetTextColor.o src/GUI/Widget/LISTVIEW_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/LISTVIEW_UserData.o: src/GUI/Widget/LISTVIEW_UserData.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/LISTVIEW_UserData.o src/GUI/Widget/LISTVIEW_UserData.c

${OBJECTDIR}/src/GUI/Widget/MENU.o: src/GUI/Widget/MENU.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU.o src/GUI/Widget/MENU.c

${OBJECTDIR}/src/GUI/Widget/MENU_Attach.o: src/GUI/Widget/MENU_Attach.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_Attach.o src/GUI/Widget/MENU_Attach.c

${OBJECTDIR}/src/GUI/Widget/MENU_CreateIndirect.o: src/GUI/Widget/MENU_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_CreateIndirect.o src/GUI/Widget/MENU_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/MENU_Default.o: src/GUI/Widget/MENU_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_Default.o src/GUI/Widget/MENU_Default.c

${OBJECTDIR}/src/GUI/Widget/MENU_DeleteItem.o: src/GUI/Widget/MENU_DeleteItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_DeleteItem.o src/GUI/Widget/MENU_DeleteItem.c

${OBJECTDIR}/src/GUI/Widget/MENU_DisableItem.o: src/GUI/Widget/MENU_DisableItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_DisableItem.o src/GUI/Widget/MENU_DisableItem.c

${OBJECTDIR}/src/GUI/Widget/MENU_EnableItem.o: src/GUI/Widget/MENU_EnableItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_EnableItem.o src/GUI/Widget/MENU_EnableItem.c

${OBJECTDIR}/src/GUI/Widget/MENU_GetItem.o: src/GUI/Widget/MENU_GetItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_GetItem.o src/GUI/Widget/MENU_GetItem.c

${OBJECTDIR}/src/GUI/Widget/MENU_GetItemText.o: src/GUI/Widget/MENU_GetItemText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_GetItemText.o src/GUI/Widget/MENU_GetItemText.c

${OBJECTDIR}/src/GUI/Widget/MENU_GetNumItems.o: src/GUI/Widget/MENU_GetNumItems.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_GetNumItems.o src/GUI/Widget/MENU_GetNumItems.c

${OBJECTDIR}/src/GUI/Widget/MENU_InsertItem.o: src/GUI/Widget/MENU_InsertItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_InsertItem.o src/GUI/Widget/MENU_InsertItem.c

${OBJECTDIR}/src/GUI/Widget/MENU_Popup.o: src/GUI/Widget/MENU_Popup.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_Popup.o src/GUI/Widget/MENU_Popup.c

${OBJECTDIR}/src/GUI/Widget/MENU_SetBkColor.o: src/GUI/Widget/MENU_SetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_SetBkColor.o src/GUI/Widget/MENU_SetBkColor.c

${OBJECTDIR}/src/GUI/Widget/MENU_SetBorderSize.o: src/GUI/Widget/MENU_SetBorderSize.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_SetBorderSize.o src/GUI/Widget/MENU_SetBorderSize.c

${OBJECTDIR}/src/GUI/Widget/MENU_SetFont.o: src/GUI/Widget/MENU_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_SetFont.o src/GUI/Widget/MENU_SetFont.c

${OBJECTDIR}/src/GUI/Widget/MENU_SetItem.o: src/GUI/Widget/MENU_SetItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_SetItem.o src/GUI/Widget/MENU_SetItem.c

${OBJECTDIR}/src/GUI/Widget/MENU_SetTextColor.o: src/GUI/Widget/MENU_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU_SetTextColor.o src/GUI/Widget/MENU_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/MENU__FindItem.o: src/GUI/Widget/MENU__FindItem.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MENU__FindItem.o src/GUI/Widget/MENU__FindItem.c

${OBJECTDIR}/src/GUI/Widget/MESSAGEBOX.o: src/GUI/Widget/MESSAGEBOX.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MESSAGEBOX.o src/GUI/Widget/MESSAGEBOX.c

${OBJECTDIR}/src/GUI/Widget/MULTIEDIT.o: src/GUI/Widget/MULTIEDIT.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MULTIEDIT.o src/GUI/Widget/MULTIEDIT.c

${OBJECTDIR}/src/GUI/Widget/MULTIEDIT_Create.o: src/GUI/Widget/MULTIEDIT_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MULTIEDIT_Create.o src/GUI/Widget/MULTIEDIT_Create.c

${OBJECTDIR}/src/GUI/Widget/MULTIEDIT_CreateIndirect.o: src/GUI/Widget/MULTIEDIT_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MULTIEDIT_CreateIndirect.o src/GUI/Widget/MULTIEDIT_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/MULTIPAGE.o: src/GUI/Widget/MULTIPAGE.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MULTIPAGE.o src/GUI/Widget/MULTIPAGE.c

${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_Create.o: src/GUI/Widget/MULTIPAGE_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_Create.o src/GUI/Widget/MULTIPAGE_Create.c

${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_CreateIndirect.o: src/GUI/Widget/MULTIPAGE_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_CreateIndirect.o src/GUI/Widget/MULTIPAGE_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_Default.o: src/GUI/Widget/MULTIPAGE_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/MULTIPAGE_Default.o src/GUI/Widget/MULTIPAGE_Default.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR.o: src/GUI/Widget/PROGBAR.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR.o src/GUI/Widget/PROGBAR.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_Create.o: src/GUI/Widget/PROGBAR_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_Create.o src/GUI/Widget/PROGBAR_Create.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_CreateIndirect.o: src/GUI/Widget/PROGBAR_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_CreateIndirect.o src/GUI/Widget/PROGBAR_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetBarColor.o: src/GUI/Widget/PROGBAR_SetBarColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetBarColor.o src/GUI/Widget/PROGBAR_SetBarColor.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetFont.o: src/GUI/Widget/PROGBAR_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetFont.o src/GUI/Widget/PROGBAR_SetFont.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetMinMax.o: src/GUI/Widget/PROGBAR_SetMinMax.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetMinMax.o src/GUI/Widget/PROGBAR_SetMinMax.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetText.o: src/GUI/Widget/PROGBAR_SetText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetText.o src/GUI/Widget/PROGBAR_SetText.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextAlign.o: src/GUI/Widget/PROGBAR_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextAlign.o src/GUI/Widget/PROGBAR_SetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextColor.o: src/GUI/Widget/PROGBAR_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextColor.o src/GUI/Widget/PROGBAR_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextPos.o: src/GUI/Widget/PROGBAR_SetTextPos.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/PROGBAR_SetTextPos.o src/GUI/Widget/PROGBAR_SetTextPos.c

${OBJECTDIR}/src/GUI/Widget/RADIO.o: src/GUI/Widget/RADIO.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO.o src/GUI/Widget/RADIO.c

${OBJECTDIR}/src/GUI/Widget/RADIO_Create.o: src/GUI/Widget/RADIO_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_Create.o src/GUI/Widget/RADIO_Create.c

${OBJECTDIR}/src/GUI/Widget/RADIO_CreateIndirect.o: src/GUI/Widget/RADIO_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_CreateIndirect.o src/GUI/Widget/RADIO_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/RADIO_Default.o: src/GUI/Widget/RADIO_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_Default.o src/GUI/Widget/RADIO_Default.c

${OBJECTDIR}/src/GUI/Widget/RADIO_GetText.o: src/GUI/Widget/RADIO_GetText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_GetText.o src/GUI/Widget/RADIO_GetText.c

${OBJECTDIR}/src/GUI/Widget/RADIO_Image.o: src/GUI/Widget/RADIO_Image.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_Image.o src/GUI/Widget/RADIO_Image.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetBkColor.o: src/GUI/Widget/RADIO_SetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetBkColor.o src/GUI/Widget/RADIO_SetBkColor.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetDefaultImage.o: src/GUI/Widget/RADIO_SetDefaultImage.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetDefaultImage.o src/GUI/Widget/RADIO_SetDefaultImage.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetFocusColor.o: src/GUI/Widget/RADIO_SetFocusColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetFocusColor.o src/GUI/Widget/RADIO_SetFocusColor.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetFont.o: src/GUI/Widget/RADIO_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetFont.o src/GUI/Widget/RADIO_SetFont.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetGroupId.o: src/GUI/Widget/RADIO_SetGroupId.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetGroupId.o src/GUI/Widget/RADIO_SetGroupId.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetImage.o: src/GUI/Widget/RADIO_SetImage.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetImage.o src/GUI/Widget/RADIO_SetImage.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetText.o: src/GUI/Widget/RADIO_SetText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetText.o src/GUI/Widget/RADIO_SetText.c

${OBJECTDIR}/src/GUI/Widget/RADIO_SetTextColor.o: src/GUI/Widget/RADIO_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/RADIO_SetTextColor.o src/GUI/Widget/RADIO_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/SCROLLBAR.o: src/GUI/Widget/SCROLLBAR.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SCROLLBAR.o src/GUI/Widget/SCROLLBAR.c

${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_Create.o: src/GUI/Widget/SCROLLBAR_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_Create.o src/GUI/Widget/SCROLLBAR_Create.c

${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_CreateIndirect.o: src/GUI/Widget/SCROLLBAR_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_CreateIndirect.o src/GUI/Widget/SCROLLBAR_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_Defaults.o: src/GUI/Widget/SCROLLBAR_Defaults.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_Defaults.o src/GUI/Widget/SCROLLBAR_Defaults.c

${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_GetValue.o: src/GUI/Widget/SCROLLBAR_GetValue.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_GetValue.o src/GUI/Widget/SCROLLBAR_GetValue.c

${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_SetColor.o: src/GUI/Widget/SCROLLBAR_SetColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_SetColor.o src/GUI/Widget/SCROLLBAR_SetColor.c

${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_SetWidth.o: src/GUI/Widget/SCROLLBAR_SetWidth.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SCROLLBAR_SetWidth.o src/GUI/Widget/SCROLLBAR_SetWidth.c

${OBJECTDIR}/src/GUI/Widget/SLIDER.o: src/GUI/Widget/SLIDER.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SLIDER.o src/GUI/Widget/SLIDER.c

${OBJECTDIR}/src/GUI/Widget/SLIDER_Create.o: src/GUI/Widget/SLIDER_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SLIDER_Create.o src/GUI/Widget/SLIDER_Create.c

${OBJECTDIR}/src/GUI/Widget/SLIDER_CreateIndirect.o: src/GUI/Widget/SLIDER_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SLIDER_CreateIndirect.o src/GUI/Widget/SLIDER_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/SLIDER_Default.o: src/GUI/Widget/SLIDER_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SLIDER_Default.o src/GUI/Widget/SLIDER_Default.c

${OBJECTDIR}/src/GUI/Widget/SLIDER_SetFocusColor.o: src/GUI/Widget/SLIDER_SetFocusColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/SLIDER_SetFocusColor.o src/GUI/Widget/SLIDER_SetFocusColor.c

${OBJECTDIR}/src/GUI/Widget/TEXT.o: src/GUI/Widget/TEXT.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT.o src/GUI/Widget/TEXT.c

${OBJECTDIR}/src/GUI/Widget/TEXT_Create.o: src/GUI/Widget/TEXT_Create.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_Create.o src/GUI/Widget/TEXT_Create.c

${OBJECTDIR}/src/GUI/Widget/TEXT_CreateIndirect.o: src/GUI/Widget/TEXT_CreateIndirect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_CreateIndirect.o src/GUI/Widget/TEXT_CreateIndirect.c

${OBJECTDIR}/src/GUI/Widget/TEXT_Default.o: src/GUI/Widget/TEXT_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_Default.o src/GUI/Widget/TEXT_Default.c

${OBJECTDIR}/src/GUI/Widget/TEXT_SetBkColor.o: src/GUI/Widget/TEXT_SetBkColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_SetBkColor.o src/GUI/Widget/TEXT_SetBkColor.c

${OBJECTDIR}/src/GUI/Widget/TEXT_SetFont.o: src/GUI/Widget/TEXT_SetFont.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_SetFont.o src/GUI/Widget/TEXT_SetFont.c

${OBJECTDIR}/src/GUI/Widget/TEXT_SetText.o: src/GUI/Widget/TEXT_SetText.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_SetText.o src/GUI/Widget/TEXT_SetText.c

${OBJECTDIR}/src/GUI/Widget/TEXT_SetTextAlign.o: src/GUI/Widget/TEXT_SetTextAlign.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_SetTextAlign.o src/GUI/Widget/TEXT_SetTextAlign.c

${OBJECTDIR}/src/GUI/Widget/TEXT_SetTextColor.o: src/GUI/Widget/TEXT_SetTextColor.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_SetTextColor.o src/GUI/Widget/TEXT_SetTextColor.c

${OBJECTDIR}/src/GUI/Widget/TEXT_SetWrapMode.o: src/GUI/Widget/TEXT_SetWrapMode.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/TEXT_SetWrapMode.o src/GUI/Widget/TEXT_SetWrapMode.c

${OBJECTDIR}/src/GUI/Widget/WIDGET.o: src/GUI/Widget/WIDGET.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET.o src/GUI/Widget/WIDGET.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D.o: src/GUI/Widget/WIDGET_Effect_3D.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D.o src/GUI/Widget/WIDGET_Effect_3D.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D1L.o: src/GUI/Widget/WIDGET_Effect_3D1L.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D1L.o src/GUI/Widget/WIDGET_Effect_3D1L.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D2L.o: src/GUI/Widget/WIDGET_Effect_3D2L.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_3D2L.o src/GUI/Widget/WIDGET_Effect_3D2L.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_None.o: src/GUI/Widget/WIDGET_Effect_None.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_None.o src/GUI/Widget/WIDGET_Effect_None.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_Simple.o: src/GUI/Widget/WIDGET_Effect_Simple.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_Effect_Simple.o src/GUI/Widget/WIDGET_Effect_Simple.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_FillStringInRect.o: src/GUI/Widget/WIDGET_FillStringInRect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_FillStringInRect.o src/GUI/Widget/WIDGET_FillStringInRect.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_SetEffect.o: src/GUI/Widget/WIDGET_SetEffect.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_SetEffect.o src/GUI/Widget/WIDGET_SetEffect.c

${OBJECTDIR}/src/GUI/Widget/WIDGET_SetWidth.o: src/GUI/Widget/WIDGET_SetWidth.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WIDGET_SetWidth.o src/GUI/Widget/WIDGET_SetWidth.c

${OBJECTDIR}/src/GUI/Widget/WINDOW.o: src/GUI/Widget/WINDOW.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WINDOW.o src/GUI/Widget/WINDOW.c

${OBJECTDIR}/src/GUI/Widget/WINDOW_Default.o: src/GUI/Widget/WINDOW_Default.c 
	${MKDIR} -p ${OBJECTDIR}/src/GUI/Widget
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GUI/Widget/WINDOW_Default.o src/GUI/Widget/WINDOW_Default.c

${OBJECTDIR}/src/Simulation/GUI_X_Win.o: src/Simulation/GUI_X_Win.c 
	${MKDIR} -p ${OBJECTDIR}/src/Simulation
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Simulation/GUI_X_Win.o src/Simulation/GUI_X_Win.c

${OBJECTDIR}/src/Simulation/LCDSIM.o: src/Simulation/LCDSIM.c 
	${MKDIR} -p ${OBJECTDIR}/src/Simulation
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Simulation/LCDSIM.o src/Simulation/LCDSIM.c

${OBJECTDIR}/src/Simulation/WinMain.o: src/Simulation/WinMain.c 
	${MKDIR} -p ${OBJECTDIR}/src/Simulation
	${RM} "$@.d"
	$(COMPILE.c) -O2 -Isrc/Config -Isrc/GUI/AntiAlias -Isrc/GUI/ConvertColor -Isrc/GUI/ConvertMono -Isrc/GUI/Core -Isrc/GUI/Font -Isrc/GUI/LCDDriver -Isrc/GUI/MemDev -Isrc/GUI/MultiLayer -Isrc/GUI/Widget -Isrc/GUI/WM -Isrc/Application/GUIDemo -Isrc/Simulation -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Simulation/WinMain.o src/Simulation/WinMain.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/opengl

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
