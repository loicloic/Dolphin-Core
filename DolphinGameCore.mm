/*
 Copyright (c) 2013, OpenEmu Team

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
     * Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
     * Neither the name of the OpenEmu Team nor the
       names of its contributors may be used to endorse or promote products
       derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY OpenEmu Team ''AS IS'' AND ANY
 EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL OpenEmu Team BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "DolphinGameCore.h"
#import <OpenEmuBase/OERingBuffer.h>

#import <OpenEmuBase/OERingBuffer.h>
#import <OpenGL/gl.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/CGLContext.h>
#import <OpenGL/CGLCurrent.h>
#import <OpenGL/CGLTypes.h>

#include "Common.h"
#include "FileUtil.h"

#include "Core.h"
#include "Host.h"
#include "CPUDetect.h"

#include "Thread.h"
#include "PowerPC.h"

#include "VideoBackendBase.h"
#include "ConfigManager.h"
#include "LogManager.h"
#include "BootManager.h"

#define SAMPLERATE 44100
#define SIZESOUNDBUFFER 44100 / 60 * 4

@interface DolphinGameCore () <OEGCSystemResponderClient>
{}
@property (copy) NSString *filePath;
@end

DolphinGameCore *g_core;

@implementation DolphinGameCore
- (id)init
{
    self = [super init];
    if (self) {
        g_core = self;
    }
    return self;
}
# pragma mark - Execution

- (BOOL)loadFileAtPath:(NSString *)path
{
    self.filePath = path;

    LogManager::Init();
	SConfig::Init();
	VideoBackend::PopulateList();
	VideoBackend::ActivateBackend(SConfig::GetInstance(). m_LocalCoreStartupParameter.m_strVideoBackend);

    const char * cpath = [[self filePath] cStringUsingEncoding:NSUTF8StringEncoding];
	return BootManager::BootCore(cpath);
}

- (void)setupEmulation
{
    Core::SetState(Core::CORE_RUN);
}

- (void)stopEmulation
{
    Core::Stop();
    while (PowerPC::GetState() != PowerPC::CPU_POWERDOWN)
		[NSThread sleepForTimeInterval:0.1];
	VideoBackend::ClearList();
	SConfig::Shutdown();
	LogManager::Shutdown();
}

- (void)resetEmulation
{

}

- (void)executeFrame
{
    [NSThread sleepForTimeInterval:1/60.0];
    /*
    if(!isInitialized)
    {
        // This is where PPSSPP will look for ppge_atlas.zim
        NSString *resourcePath = [[[[self owner] bundle] resourcePath] stringByAppendingString:@"/"];
        
        NativeInit(0, nil, nil, [resourcePath UTF8String], nil);
        NativeInitGraphics();
    }

    if(shouldReset)
        PSP_Shutdown();

    if(!isInitialized || shouldReset)
    {
        isInitialized = YES;
        shouldReset = NO;

        std::string error_string;
        if(!PSP_Init(coreParam, &error_string))
            NSLog(@"ERROR: %s", error_string.c_str());

        host->BootDone();
		host->UpdateDisassembly();
    }

    NativeRender();
    
    int samplesWritten = NativeMix((short *)soundBuffer, SAMPLERATE / 60);
    [[self ringBufferAtIndex:0] write:soundBuffer maxLength:sizeof(uint16_t) * samplesWritten * 2];

    glFlushRenderAPPLE();
    */
}

- (void)setPauseEmulation:(BOOL)flag
{
    [super setPauseEmulation:flag];
    Core::EState state = flag ? Core::CORE_PAUSE : Core::CORE_RUN;
	Core::SetState(state);
}
# pragma mark - Video

- (BOOL)rendersToOpenGL
{
    return YES;
}

- (OEIntSize)bufferSize
{
    return OEIntSizeMake(480, 272);
}

- (OEIntSize)aspectSize
{
    return OEIntSizeMake(16, 9);
}

# pragma mark - Audio

- (NSUInteger)channelCount
{
    return 2;
}

- (double)audioSampleRate
{
    return SAMPLERATE;
}

# pragma mark - Save States

- (void)saveStateToFileAtPath:(NSString *)fileName completionHandler:(void (^)(BOOL))block
{

}


- (void)loadStateFromFileAtPath:(NSString *)fileName completionHandler:(void (^)(BOOL))block
{

}

# pragma mark - Input
/*
const int buttonMap[] = { CTRL_UP, CTRL_DOWN, CTRL_LEFT, CTRL_RIGHT, 0, 0, 0, 0, CTRL_TRIANGLE, CTRL_CIRCLE, CTRL_CROSS, CTRL_SQUARE, CTRL_LTRIGGER, CTRL_RTRIGGER, CTRL_START, CTRL_SELECT };

- (oneway void)didMovePSPJoystickDirection:(OEPSPButton)button withValue:(CGFloat)value forPlayer:(NSUInteger)player
{
    if(button == OEPSPAnalogUp || button == OEPSPAnalogDown)
        __CtrlSetAnalogY(button == OEPSPAnalogUp ? value : -value);
    else
        __CtrlSetAnalogX(button == OEPSPAnalogRight ? value : -value);
}

-(oneway void)didPushPSPButton:(OEPSPButton)button forPlayer:(NSUInteger)player
{
    __CtrlButtonDown(buttonMap[button]);
}

- (oneway void)didReleasePSPButton:(OEPSPButton)button forPlayer:(NSUInteger)player
{
    __CtrlButtonUp(buttonMap[button]);
}
*/

#pragma mark -
void Host_GetRenderWindowSize(int& x, int& y, int& width, int& height)
{
	x = 0;
	y = 0;
	width = 640;
	height = 480;
}

void Host_SetStartupDebuggingParameters()
{
    NSLog(@"DolphinCore: Set Startup Debugging Parameters");
    SCoreStartupParameter& StartUp = SConfig::GetInstance().m_LocalCoreStartupParameter;
	StartUp.bEnableDebugging = false;
	StartUp.bBootToPause = true;
    StartUp.bWii = false;
}
#pragma mark - Dolphin callback stubs
void Host_NotifyMapLoaded(){}
void Host_RefreshDSPDebuggerWindow(){}
void Host_ShowJitResults(unsigned int address){}
void Host_Message(int Id){}
void* Host_GetRenderHandle(){ return NULL; }
void* Host_GetInstance(){ return NULL; }
void Host_UpdateTitle(const char* title){};
void Host_UpdateLogDisplay(){}
void Host_UpdateDisasmDialog(){}
void Host_UpdateMainFrame(){}
void Host_UpdateBreakPointView(){}
bool Host_GetKeyState(int keycode){	return false; }
void Host_RequestRenderWindowSize(int width, int height){}
bool Host_RendererHasFocus(){ return NO; }
void Host_ConnectWiimote(int wm_idx, bool connect){}
void Host_SetWaitCursor(bool enable){}
void Host_UpdateStatusBar(const char* _pText, int Filed){}
void Host_SysMessage(const char *fmt, ...) {}
void Host_SetWiiMoteConnectionState(int _State){}

@end
