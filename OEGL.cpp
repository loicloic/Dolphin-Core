// Copyright (C) 2003 Dolphin Project.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, version 2.0.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License 2.0 for more details.

// A copy of the GPL 2.0 should have been included with the program.
// If not, see http://www.gnu.org/licenses/

// Official SVN repository and contact information can be found at
// http://code.google.com/p/dolphin-emu/

#include "VideoConfig.h"
#include "Host.h"
#include "RenderBase.h"
#include "ConfigManager.h"
#include "VertexShaderManager.h"
#include "GLInterface.h"
#include "OEGL.h"

void cInterfaceAGL::Swap()
{
}

// Create rendering window.
//		Call browser: Core.cpp:EmuThread() > main.cpp:Video_Initialize()
bool cInterfaceAGL::Create(void *&window_handle)
{
	return true;
}

bool cInterfaceAGL::MakeCurrent()
{
	return true;
}

bool cInterfaceAGL::ClearCurrent()
{
	// not tested at all
	//clearCurrentContext();
	return true;
}

// Close backend
void cInterfaceAGL::Shutdown()
{

}

void cInterfaceAGL::Update()
{

}


