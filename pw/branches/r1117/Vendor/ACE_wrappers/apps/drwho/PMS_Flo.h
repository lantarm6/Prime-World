/* -*- C++ -*- */
// $Id: PMS_Flo.h 80826 2008-03-04 14:51:23Z wotte $

// ============================================================================
//
// = LIBRARY
//    drwho
//
// = FILENAME
//    PMS_Flo.h
//
// = AUTHOR
//    Douglas C. Schmidt
//
// ============================================================================

#ifndef _PMS_FLO_H
#define _PMS_FLO_H

#include "PM_Server.h"

class PMS_Flo : public PM_Server
{
  // = TITLE
  //   Provides the server's lookup table abstraction for `flo' users...

public:
  PMS_Flo (void);

protected:
  virtual int encode (char *packet, int &total_bytes);
  virtual int decode (char *packet, int &total_bytes);
};

#endif /* _PMS_FLO_H */
