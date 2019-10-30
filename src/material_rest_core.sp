/**
 * This file is a part of "REST Material Admin" plugin.
 * Licensed by GNU GPL v3.
 *
 * All rights reserved.
 * (c) 2019 Material Admin Dev Team
 */

#include <sourcemod>
#include <ripext>

#define __CORE_VERSION  "0.0.0.1"

HTTPClient g_hClient;

public Plugin myinfo = {
    description = "Provides the core functional for working with Material Admin REST API",

    // Dynamic version string.
    // If we're building in Travis CI, we should write to version string - git commit hash.
#if defined __GIT_COMMIT_ABBREVIATEDHASH
    version     = __CORE_VERSION ... "-" ... __GIT_COMMIT_ABBREVIATEDHASH
#else
    version     = __CORE_VERSION,
#endif

    author      = "MATERIAL ADMIN Dev Team",
    name        = "[MATERIAL Admin - REST] Core",
    url         = "https://github.com/SB-MaterialAdmin"
};

/**
 * @section API
 */
public APLRes AskPluginLoad2(Handle hMySelf, bool bLate, char[] szError, int iBufferLength)
{
    // TODO: API
    RegPluginLibrary("material_rest");
}