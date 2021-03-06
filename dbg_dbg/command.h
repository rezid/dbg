#ifndef _COMMAND_H
#define _COMMAND_H

#include "_global.h"

//typedefs

struct COMMAND;

enum CMDRESULT
{
    STATUS_EXIT=0,
    STATUS_CONTINUE=1,
    STATUS_ERROR=2
};

typedef CMDRESULT (*CBCOMMAND)(const char*);
typedef bool (*CBCOMMANDPROVIDER)(char*, int);
typedef COMMAND* (*CBCOMMANDFINDER)(COMMAND*, char*);

struct COMMAND
{
    char* name;
    CBCOMMAND cbCommand;
    bool debugonly;
    COMMAND* next;
};

//functions
COMMAND* cmdinit();
void cmdfree(COMMAND* cmd_list);
COMMAND* cmdfind(COMMAND* command_list, const char* name, COMMAND** link);
bool cmdnew(COMMAND* command_list, const char* name, CBCOMMAND cbCommand, bool debugonly);
COMMAND* cmdget(COMMAND* command_list, const char* cmd);
CBCOMMAND cmdset(COMMAND* command_list, const char* name, CBCOMMAND cbCommand, bool debugonly);
bool cmddel(COMMAND* command_list, const char* name);
CMDRESULT cmdloop(COMMAND* command_list, CBCOMMAND cbUnknownCommand, CBCOMMANDPROVIDER cbCommandProvider, CBCOMMANDFINDER cbCommandFinder, bool error_is_fatal);
COMMAND* cmdfindmain(COMMAND* cmd_list, char* command);

#endif // _COMMAND_H
