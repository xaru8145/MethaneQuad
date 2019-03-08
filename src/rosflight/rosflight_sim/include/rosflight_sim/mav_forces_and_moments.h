/*
 * Copyright (c) 2017 Daniel Koch, James Jackson and Gary Ellingson, BYU MAGICC Lab.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * * Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef ROSFLIGHT_SIM_MAV_FORCES_AND_MOMENTS_H
#define ROSFLIGHT_SIM_MAV_FORCES_AND_MOMENTS_H

#include <eigen3/Eigen/Core>

namespace rosflight_sim
{

class MAVForcesAndMoments {
protected:
    double sat(double x, double max, double min)
    {
      if(x > max)
        return max;
      else if(x < min)
        return min;
      else
        return x;
    }

    double max(double x, double y)
    {
      return (x > y) ? x : y;
    }

public:

    struct Current_State{
        Eigen::Vector3d pos; // Position of MAV in NED wrt initial position
        Eigen::Matrix3d rot; // Rotation of MAV in NED wrt initial position
        Eigen::Vector3d vel; // Body-fixed velocity of MAV wrt initial position (NED)
        Eigen::Vector3d omega; // Body-fixed angular velocity of MAV (NED)
        double t; // current time
    };

    virtual Eigen::Matrix<double, 6, 1> updateForcesAndTorques(Current_State x, const int act_cmds[]) = 0;
    virtual void set_wind(Eigen::Vector3d wind) = 0;
};

} // namespace rosflight_sim

#endif // ROSFLIGHT_SIM_MAV_FORCES_AND_MOMENTS_H
