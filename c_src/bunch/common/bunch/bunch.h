#pragma once

#include <errno.h>

#define BUNCH_UNUSED(x) (void)(x)

const char * bunch_errno_to_string(int num);
