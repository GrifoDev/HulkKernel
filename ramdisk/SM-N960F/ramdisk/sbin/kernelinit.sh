#!/system/bin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Knox set to 0 on running system
/sbin/magiskreset -n ro.boot.warranty_bit "0"
/sbin/magiskreset -n ro.warranty_bit "0"

# Fix safetynet flags
/sbin/magiskreset -n ro.boot.veritymode "enforcing"
/sbin/magiskreset -n ro.boot.verifiedbootstate "green"
/sbin/magiskreset -n ro.boot.flash.locked "1"
/sbin/magiskreset -n ro.boot.ddrinfo "00000001"
/sbin/magiskreset -n ro.build.selinux "1"

# Samsung related flags
/sbin/magiskreset -n ro.fmp_config "1"
/sbin/magiskreset -n ro.boot.fmp_config "1"
