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

#define SAMPLERATE 44100
#define SIZESOUNDBUFFER 44100 / 60 * 4

@interface DolphinGameCore () <OEGCSystemResponderClient>
{
    
}
@end

@implementation DolphinGameCore

# pragma mark - Execution

- (BOOL)loadFileAtPath:(NSString *)path
{
    return YES;
}

- (void)setupEmulation
{

}

- (void)stopEmulation
{

}

- (void)resetEmulation
{

}

- (void)executeFrame
{
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

@end
