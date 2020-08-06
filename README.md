# alpine-nfs-client

using s6-overlay + nfs-utils + bash only

#### Env Vars:  
Vars          Default value  




| Vars  | Default value |  
|---|:---:|  
| MOUNTFSTYPE  |  nfs4  |  
|  MOUNT_TARGET |  localhost:/export |  
|  MOUNT_POINT | /nfs |
|  MOUNTOPTIONS | /nolock |

#### Example:
```
docker run -d --name nfs-client \  
--security-opt=apparmor:unconfined \  
--cap-add=SYS_ADMIN \  
-e MOUNT_TARGET=NFSServer:path/to/shared \  
-e MOUNT_POINT=/path/to/mount_point \  
-e MOUNT_OPTIONS="auto,nofail,noatime,nolock,intr,tcp,actimeo=1800" \  
 michaeleino/alpine-nfs-client:1.0
```
