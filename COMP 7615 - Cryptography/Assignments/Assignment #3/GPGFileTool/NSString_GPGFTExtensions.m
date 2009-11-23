//
//  NSString_GPGFTExtensions.m
//  GPGFileTool
//
//  Created by Gordon Worley on Sun Dec 08 2002.
//  Copyright (c) 2002 Mac GPG Project.
//
//  This code is free software; you can redistribute it and/or modify it under
//  the terms of the GNU General Public License as published by the Free
//  Software Foundation; either version 2 of the License, or any later version.
//
//  This code is distributed in the hope that it will be useful, but WITHOUT ANY
//  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
//  FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
//  details.
//
//  For a copy of the GNU General Public License, visit <http://www.gnu.org/> or
//  write to the Free Software Foundation, Inc., 59 Temple Place--Suite 330,
//  Boston, MA 02111-1307, USA.
//
//  More info at <http://macgpg.sourceforge.net/> or <macgpg@rbisland.cx>
//

#import "NSString_GPGFTExtensions.h"


@implementation NSString (GPGFTExtensions)

- (NSString *)unixAsMacPath
{
    char *str;
    int i;

    str = [self cString];
    for (i = 0; i < [self length]; i++)
        if (*(str + i) == '/')
            *(str + i) = ':';

    return [NSString stringWithCString: str];
}

@end
