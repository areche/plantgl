/* -*-c++-*-
 *  ----------------------------------------------------------------------------
 *
 *       PlantGL: Plant Graphic Library
 *
 *       Copyright 1995-2007 UMR Cirad/Inria/Inra Dap - Virtual Plant Team
 *
 *       File author(s): F. Boudon
 *
 *  ----------------------------------------------------------------------------
 *
 *                      GNU General Public Licence
 *
 *       This program is free software; you can redistribute it and/or
 *       modify it under the terms of the GNU General Public License as
 *       published by the Free Software Foundation; either version 2 of
 *       the License, or (at your option) any later version.
 *
 *       This program is distributed in the hope that it will be useful,
 *       but WITHOUT ANY WARRANTY; without even the implied warranty of
 *       MERCHANTABILITY or FITNESS For A PARTICULAR PURPOSE. See the
 *       GNU General Public License for more details.
 *
 *       You should have received a copy of the GNU General Public
 *       License along with this program; see the file COPYING. If not,
 *       write to the Free Software Foundation, Inc., 59
 *       Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *
 *  ----------------------------------------------------------------------------
 */

#include <plantgl/python/export_refcountptr.h>
#include <plantgl/python/exception.h>
#include <plantgl/python/export_property.h>
#include "export_sceneobject.h"

#include <plantgl/scenegraph/geometry/planarmodel.h>

using namespace boost::python;

PGL_USING_NAMESPACE
TOOLS_USING_NAMESPACE

DEF_POINTEE( PlanarModel )

void export_PlanarModel()
{
  class_<PlanarModel,PlanarModelPtr, bases<ParametricModel>, boost::noncopyable>( "PlanarModel", no_init ) ;
  implicitly_convertible<PlanarModelPtr, ParametricModelPtr>();

}

