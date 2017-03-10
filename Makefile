#
# OMNeT++/OMNEST Makefile for libiCanCloud
#
# This file was generated with the command:
#  opp_makemake -f --deep --make-so -O out -I../inet/src/linklayer/ieee80211/radio -I../inet/src/networklayer/routing/aodv -I../inet/src/networklayer/common -I../inet/src -I../inet/src/networklayer/icmpv6 -I../inet/src/world/obstacles -I../inet/src/networklayer/xmipv6 -I../inet/src/networklayer/contract -I../inet/src/networklayer/autorouting/ipv4 -I../inet/src/util -I../inet/src/linklayer/common -I../inet/src/transport/contract -I../inet/src/status -I../inet/src/linklayer/radio/propagation -I../inet/src/linklayer/ieee80211/radio/errormodel -I../inet/src/linklayer/radio -I../inet/src/util/headerserializers/tcp -I../inet/src/networklayer/ipv4 -I../inet/src/mobility/contract -I../inet/src/util/headerserializers/ipv4 -I../inet/src/base -I../inet/src/util/headerserializers -I../inet/src/world/radio -I../inet/src/linklayer/ieee80211/mac -I../inet/src/networklayer/ipv6 -I../inet/src/transport/sctp -I../inet/src/util/headerserializers/udp -I../inet/src/networklayer/ipv6tunneling -I../inet/src/util/headerserializers/ipv6 -I../inet/src/applications/pingapp -I../inet/src/battery/models -I../inet/src/linklayer/contract -I../inet/src/util/headerserializers/sctp -I../inet/src/transport/tcp_common -I../inet/src/networklayer/arp -I../inet/src/transport/udp -L../inet/out/$$\(CONFIGNAME\)/src -lz -linet -DINET_IMPORT -KINET_PROJ=../inet
#

# Name of target to be created (-o option)
TARGET = libiCanCloud$(SHARED_LIB_SUFFIX)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../inet/src/linklayer/ieee80211/radio \
    -I../inet/src/networklayer/routing/aodv \
    -I../inet/src/networklayer/common \
    -I../inet/src \
    -I../inet/src/networklayer/icmpv6 \
    -I../inet/src/world/obstacles \
    -I../inet/src/networklayer/xmipv6 \
    -I../inet/src/networklayer/contract \
    -I../inet/src/networklayer/autorouting/ipv4 \
    -I../inet/src/util \
    -I../inet/src/linklayer/common \
    -I../inet/src/transport/contract \
    -I../inet/src/status \
    -I../inet/src/linklayer/radio/propagation \
    -I../inet/src/linklayer/ieee80211/radio/errormodel \
    -I../inet/src/linklayer/radio \
    -I../inet/src/util/headerserializers/tcp \
    -I../inet/src/networklayer/ipv4 \
    -I../inet/src/mobility/contract \
    -I../inet/src/util/headerserializers/ipv4 \
    -I../inet/src/base \
    -I../inet/src/util/headerserializers \
    -I../inet/src/world/radio \
    -I../inet/src/linklayer/ieee80211/mac \
    -I../inet/src/networklayer/ipv6 \
    -I../inet/src/transport/sctp \
    -I../inet/src/util/headerserializers/udp \
    -I../inet/src/networklayer/ipv6tunneling \
    -I../inet/src/util/headerserializers/ipv6 \
    -I../inet/src/applications/pingapp \
    -I../inet/src/battery/models \
    -I../inet/src/linklayer/contract \
    -I../inet/src/util/headerserializers/sctp \
    -I../inet/src/transport/tcp_common \
    -I../inet/src/networklayer/arp \
    -I../inet/src/transport/udp \
    -I. \
    -Ibin \
    -Isimulations \
    -Isimulations/Cloud_A \
    -Isimulations/Cloud_B \
    -Isimulations/Cloud_C \
    -Isrc \
    -Isrc/Applications \
    -Isrc/Applications/Apps \
    -Isrc/Applications/Apps/ApplicationCheckpoint \
    -Isrc/Applications/Apps/ApplicationHPC \
    -Isrc/Applications/Apps/ApplicationHTC \
    -Isrc/Applications/Apps/CPU_Intensive \
    -Isrc/Applications/Apps/ServerApplication \
    -Isrc/Applications/Base \
    -Isrc/Applications/Base/Management \
    -Isrc/Applications/Libraries_API \
    -Isrc/Applications/Libraries_API/API_OS \
    -Isrc/Applications/Libraries_API/MPI_Base \
    -Isrc/Architecture \
    -Isrc/Architecture/Aggregation \
    -Isrc/Architecture/Machine \
    -Isrc/Architecture/Node \
    -Isrc/Architecture/Node/Node \
    -Isrc/Architecture/Node/NodeVL \
    -Isrc/Architecture/NodeComponents \
    -Isrc/Architecture/NodeComponents/Hardware \
    -Isrc/Architecture/NodeComponents/Hardware/CPUs \
    -Isrc/Architecture/NodeComponents/Hardware/CPUs/CPUController \
    -Isrc/Architecture/NodeComponents/Hardware/CPUs/CPUModules \
    -Isrc/Architecture/NodeComponents/Hardware/CPUs/CPUModules/CPUModule \
    -Isrc/Architecture/NodeComponents/Hardware/CPUs/CPUcores \
    -Isrc/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore \
    -Isrc/Architecture/NodeComponents/Hardware/Memories \
    -Isrc/Architecture/NodeComponents/Hardware/Memories/Caches \
    -Isrc/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache \
    -Isrc/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache \
    -Isrc/Architecture/NodeComponents/Hardware/Memories/MainMemories \
    -Isrc/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel \
    -Isrc/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory \
    -Isrc/Architecture/NodeComponents/Hardware/Storage \
    -Isrc/Architecture/NodeComponents/Hardware/Storage/Devices \
    -Isrc/Architecture/NodeComponents/Hardware/Storage/Devices/Disks \
    -Isrc/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI \
    -Isrc/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk \
    -Isrc/Architecture/NodeComponents/Hardware/Storage/StorageController \
    -Isrc/Architecture/NodeComponents/Hardware/Storage/StorageSystems \
    -Isrc/Architecture/NodeComponents/Hardware/Storage/StorageSystems/StorageSystem \
    -Isrc/Architecture/NodeComponents/OperatingSystems \
    -Isrc/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers \
    -Isrc/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO \
    -Isrc/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR \
    -Isrc/Architecture/NodeComponents/OperatingSystems/OperatingSystemModules \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler \
    -Isrc/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler \
    -Isrc/Architecture/NodeComponents/OperatingSystems/SyscallManager \
    -Isrc/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager \
    -Isrc/Architecture/NodeComponents/OperatingSystems/SystemApps \
    -Isrc/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp \
    -Isrc/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication \
    -Isrc/Architecture/NodeComponents/VirtualOS \
    -Isrc/Architecture/NodeComponents/VirtualOS/OperatingSystemModules \
    -Isrc/Architecture/NodeComponents/VirtualOS/SyscallManager \
    -Isrc/Base \
    -Isrc/Base/Messages \
    -Isrc/Base/Messages/SMS \
    -Isrc/Base/Parser \
    -Isrc/Base/Request \
    -Isrc/Base/Request/HPCRequest \
    -Isrc/Base/Request/RequestBase \
    -Isrc/Base/Request/RequestVM \
    -Isrc/Base/Request/StorageRequest \
    -Isrc/Base/Util \
    -Isrc/Base/Util/Log \
    -Isrc/Base/Util/ResourcesMeter \
    -Isrc/Base/VMID \
    -Isrc/Base/include \
    -Isrc/EnergySystem \
    -Isrc/EnergySystem/EnergyMeter \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterController \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization \
    -Isrc/EnergySystem/EnergyMeter/EnergyMeterUnit/States \
    -Isrc/EnergySystem/PSU \
    -Isrc/EnergySystem/PSU/MainPSU \
    -Isrc/Management \
    -Isrc/Management/CloudManagement \
    -Isrc/Management/CloudManagement/Base \
    -Isrc/Management/CloudManagement/CloudManager \
    -Isrc/Management/CloudManagement/ResourcesProvisioning \
    -Isrc/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS \
    -Isrc/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup \
    -Isrc/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR \
    -Isrc/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom \
    -Isrc/Management/DataCenterManagement \
    -Isrc/Management/DataCenterManagement/Base \
    -Isrc/Management/DataCenterManagement/ResourcesProvisioning \
    -Isrc/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers \
    -Isrc/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO \
    -Isrc/Management/MachinesStructure \
    -Isrc/Management/NetworkManager \
    -Isrc/Management/Topology \
    -Isrc/Users \
    -Isrc/Users/Base \
    -Isrc/Users/Profiles \
    -Isrc/Users/Profiles/CloudUser \
    -Isrc/Users/Profiles/GeneralUser \
    -Isrc/Users/Profiles/SmartUser \
    -Isrc/Users/UserGenerator \
    -Isrc/Users/UserGenerator/AppDefinition \
    -Isrc/Users/UserGenerator/DistributionDefinition \
    -Isrc/Users/UserGenerator/FSUserDefinition \
    -Isrc/Users/UserGenerator/PreloadFilesDefinition \
    -Isrc/Users/UserGenerator/VmDefinition \
    -Isrc/Users/UserGenerator/VmDefinition/VMToRent \
    -Isrc/Users/UserGenerator/core \
    -Isrc/Users/UserGenerator/core/CustomGeneratorCells \
    -Isrc/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay \
    -Isrc/Virtualization \
    -Isrc/Virtualization/Hypervisor \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager/H_StorageManagerCore \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers \
    -Isrc/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO \
    -Isrc/Virtualization/Hypervisor/Hypervisors \
    -Isrc/Virtualization/Hypervisor/Hypervisors/HypervisorPreset \
    -Isrc/Virtualization/VirtualMachines \
    -Isrc/Virtualization/VirtualMachines/BasicVM \
    -Isrc/Virtualization/VirtualMachines/SetDefinition \
    -Isrc/Virtualization/VirtualMachines/VMManagement \
    -Isrc/Virtualization/VirtualMachines/VMManagement/VmMsgController \
    -Isrc/out \
    -Isrc/out/gcc-debug

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../inet/out/$(CONFIGNAME)/src  -lz -linet
LIBS += -Wl,-rpath,`abspath ../inet/out/$(CONFIGNAME)/src`

# Output directory
PROJECT_OUTPUT_DIR = out
PROJECTRELATIVE_PATH =
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/src/Applications/Apps/ApplicationCheckpoint/ApplicationCheckpoint.o \
    $O/src/Applications/Apps/ApplicationHPC/ApplicationHPC.o \
    $O/src/Applications/Apps/ApplicationHTC/ApplicationHTC.o \
    $O/src/Applications/Apps/CPU_Intensive/CPU_Intensive.o \
    $O/src/Applications/Apps/ServerApplication/ServerApplication.o \
    $O/src/Applications/Base/jobBase.o \
    $O/src/Applications/Base/UserJob.o \
    $O/src/Applications/Base/Management/JobResultsSet.o \
    $O/src/Applications/Base/Management/JobQueue.o \
    $O/src/Applications/Base/Management/JobResults.o \
    $O/src/Applications/Libraries_API/API_OS/API_OS.o \
    $O/src/Applications/Libraries_API/MPI_Base/MPI_Call.o \
    $O/src/Applications/Libraries_API/MPI_Base/MPI_Base.o \
    $O/src/Architecture/Machine/Machine.o \
    $O/src/Architecture/Node/AbstractNode.o \
    $O/src/Architecture/Node/Node/Node.o \
    $O/src/Architecture/Node/NodeVL/NodeVL.o \
    $O/src/Architecture/NodeComponents/Hardware/HWEnergyInterface.o \
    $O/src/Architecture/NodeComponents/Hardware/CPUs/CPUController/CPUController.o \
    $O/src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/ICore.o \
    $O/src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore/CPUcore.o \
    $O/src/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache/BlockCache.o \
    $O/src/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache/NullCache.o \
    $O/src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel/RAMMemory_BlockModel.o \
    $O/src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/RAMmemory.o \
    $O/src/Architecture/NodeComponents/Hardware/Storage/Devices/IStorageDevice.o \
    $O/src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI/Disk_LI.o \
    $O/src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk/SimpleDisk.o \
    $O/src/Architecture/NodeComponents/Hardware/Storage/StorageController/StorageController.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO/CPU_Scheduler_FIFO.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR/CPU_Scheduler_RR.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem/Basic_FileSystem.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem/Node_FileSystem.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem/NodeVirtualFileSystem.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem/VirtualFileSystem.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager/NullStorageManager.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager/StorageManager.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler/BranchScheduler.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler/NullStorageScheduler.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.o \
    $O/src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.o \
    $O/src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.o \
    $O/src/Base/icancloud_Base.o \
    $O/src/Base/cGateManager.o \
    $O/src/Base/icancloud_MemoryBlock.o \
    $O/src/Base/Messages/icancloud_MPI_Message.o \
    $O/src/Base/Messages/icancloud_File.o \
    $O/src/Base/Messages/icancloud_App_IO_Message.o \
    $O/src/Base/Messages/icancloud_Message.o \
    $O/src/Base/Messages/icancloud_Migration_Message.o \
    $O/src/Base/Messages/icancloud_BlockList_Message.o \
    $O/src/Base/Messages/icancloud_App_CPU_Message.o \
    $O/src/Base/Messages/icancloud_App_MEM_Message.o \
    $O/src/Base/Messages/icancloud_App_NET_Message.o \
    $O/src/Base/Messages/SMS/SMS_RAID_0.o \
    $O/src/Base/Messages/SMS/icancloud_Request.o \
    $O/src/Base/Messages/SMS/SMS_Branch.o \
    $O/src/Base/Messages/SMS/SMS_NFS.o \
    $O/src/Base/Messages/SMS/SMS_PFS.o \
    $O/src/Base/Messages/SMS/SMS_MainMemory.o \
    $O/src/Base/Messages/SMS/SplittingMessageSystem.o \
    $O/src/Base/Parser/cfgCloud.o \
    $O/src/Base/Parser/cfgDataCenter.o \
    $O/src/Base/Parser/cfgMPI.o \
    $O/src/Base/Parser/cfgPreloadFS.o \
    $O/src/Base/Parser/cfgCommunications.o \
    $O/src/Base/Request/AbstractRequest.o \
    $O/src/Base/Request/HPCRequest/PhysicalResourcesRequest.o \
    $O/src/Base/Request/RequestBase/RequestBase.o \
    $O/src/Base/Request/RequestVM/RequestVM.o \
    $O/src/Base/Request/StorageRequest/StorageRequest.o \
    $O/src/Base/Util/Log/ICCLog.o \
    $O/src/Base/Util/ResourcesMeter/ResourcesMeter.o \
    $O/src/Base/VMID/VMID.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore/CPUMeterCore.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore/MemoryMeterCore.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore/NetworkMeterCore.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore/StorageMeterCore.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EState.o \
    $O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.o \
    $O/src/EnergySystem/PSU/AbstractPSU.o \
    $O/src/EnergySystem/PSU/MainPSU/MainPSU.o \
    $O/src/Management/CloudManagement/Base/AllocationManagement.o \
    $O/src/Management/CloudManagement/CloudManager/AbstractCloudManager.o \
    $O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS/CloudSchedulerFCFS.o \
    $O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup/CloudSchedulerFCFS_gnup.o \
    $O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR/CloudSchedulerRR.o \
    $O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom/CloudSchedulerRandom.o \
    $O/src/Management/DataCenterManagement/AbstractDCManager.o \
    $O/src/Management/DataCenterManagement/Base/DataCenterAPI.o \
    $O/src/Management/DataCenterManagement/Base/RequestsManagement.o \
    $O/src/Management/DataCenterManagement/Base/UserManagement.o \
    $O/src/Management/DataCenterManagement/Base/StorageManagement.o \
    $O/src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO/DataCenterSchedulerFIFO.o \
    $O/src/Management/MachinesStructure/MachinesMap.o \
    $O/src/Management/MachinesStructure/ElementType.o \
    $O/src/Management/MachinesStructure/HeterogeneousSet.o \
    $O/src/Management/NetworkManager/PortTable.o \
    $O/src/Management/NetworkManager/VirtualIPCell.o \
    $O/src/Management/NetworkManager/VirtualIPs.o \
    $O/src/Management/NetworkManager/NetworkManager.o \
    $O/src/Management/Topology/ComputeNode.o \
    $O/src/Management/Topology/StorageNode.o \
    $O/src/Users/AbstractUser.o \
    $O/src/Users/Base/userStorage.o \
    $O/src/Users/Base/queuesManager.o \
    $O/src/Users/Base/userBase.o \
    $O/src/Users/Profiles/CloudUser/AbstractCloudUser.o \
    $O/src/Users/Profiles/GeneralUser/GeneralUser.o \
    $O/src/Users/Profiles/SmartUser/SmartUser.o \
    $O/src/Users/UserGenerator/DistributionDefinition/DistributionDefinition.o \
    $O/src/Users/UserGenerator/FSUserDefinition/FSUserDefinition.o \
    $O/src/Users/UserGenerator/PreloadFilesDefinition/PreloadFilesDefinition.o \
    $O/src/Users/UserGenerator/VmDefinition/VMToRent/VmToRent.o \
    $O/src/Users/UserGenerator/core/AbstractUserGenerator.o \
    $O/src/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay/UserGeneratorDay.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO/H_CPU_SCHED_FIFO.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO/H_MEM_SCHED_FIFO.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/NetworkService.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ClientSideService.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ServerSideService.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO/H_NET_SCHED_FIFO.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic/Storage_cell_basic.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/PFS_Storage_Cell.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/NFS_Storage_Cell.o \
    $O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO/H_STORAGE_SCHED_FIFO.o \
    $O/src/Virtualization/Hypervisor/Hypervisors/Hypervisor.o \
    $O/src/Virtualization/VirtualMachines/VM.o \
    $O/src/Virtualization/VirtualMachines/SetDefinition/VmImage.o \
    $O/src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.o \
    $O/src/Base/Messages/icancloud_App_MEM_Message_m.o \
    $O/src/Base/Messages/icancloud_App_IO_Message_m.o \
    $O/src/Base/Messages/icancloud_BlockList_Message_m.o \
    $O/src/Base/Messages/icancloud_MPI_Message_m.o \
    $O/src/Base/Messages/icancloud_App_NET_Message_m.o \
    $O/src/Base/Messages/icancloud_Migration_Message_m.o \
    $O/src/Base/Messages/icancloud_App_CPU_Message_m.o \
    $O/src/Base/Messages/icancloud_Message_m.o

# Message files
MSGFILES = \
    src/Base/Messages/icancloud_App_MEM_Message.msg \
    src/Base/Messages/icancloud_App_IO_Message.msg \
    src/Base/Messages/icancloud_BlockList_Message.msg \
    src/Base/Messages/icancloud_MPI_Message.msg \
    src/Base/Messages/icancloud_App_NET_Message.msg \
    src/Base/Messages/icancloud_Migration_Message.msg \
    src/Base/Messages/icancloud_App_CPU_Message.msg \
    src/Base/Messages/icancloud_Message.msg

# Other makefile variables (-K)
INET_PROJ=../inet

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" -loppenvir$D $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS) -DINET_IMPORT $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

# we want to recompile everything if COPTS changes,
# so we store COPTS into $COPTS_FILE and have object
# files depend on it (except when "make depend" was called)
COPTS_FILE = $O/.last-copts
ifneq ($(MAKECMDGOALS),depend)
ifneq ("$(COPTS)","$(shell cat $(COPTS_FILE) 2>/dev/null || echo '')")
$(shell $(MKPATH) "$O" && echo "$(COPTS)" >$(COPTS_FILE))
endif
endif

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target
all: $O/$(TARGET)
	$(Q)$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	@echo Creating shared library: $@
	$(Q)$(SHLIB_LD) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(AS_NEEDED_OFF) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS) $(LDFLAGS)
	$(Q)$(SHLIB_POSTPROCESS) $O/$(TARGET)

.PHONY: all clean cleanall depend msgheaders

.SUFFIXES: .cc

$O/%.o: %.cc $(COPTS_FILE)
	@$(MKPATH) $(dir $@)
	$(qecho) "$<"
	$(Q)$(CXX) -c $(CXXFLAGS) $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(qecho) MSGC: $<
	$(Q)$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	$(qecho) Cleaning...
	$(Q)-rm -rf $O
	$(Q)-rm -f iCanCloud iCanCloud.exe libiCanCloud.so libiCanCloud.a libiCanCloud.dll libiCanCloud.dylib
	$(Q)-rm -f ./*_m.cc ./*_m.h
	$(Q)-rm -f bin/*_m.cc bin/*_m.h
	$(Q)-rm -f simulations/*_m.cc simulations/*_m.h
	$(Q)-rm -f simulations/Cloud_A/*_m.cc simulations/Cloud_A/*_m.h
	$(Q)-rm -f simulations/Cloud_B/*_m.cc simulations/Cloud_B/*_m.h
	$(Q)-rm -f simulations/Cloud_C/*_m.cc simulations/Cloud_C/*_m.h
	$(Q)-rm -f src/*_m.cc src/*_m.h
	$(Q)-rm -f src/Applications/*_m.cc src/Applications/*_m.h
	$(Q)-rm -f src/Applications/Apps/*_m.cc src/Applications/Apps/*_m.h
	$(Q)-rm -f src/Applications/Apps/ApplicationCheckpoint/*_m.cc src/Applications/Apps/ApplicationCheckpoint/*_m.h
	$(Q)-rm -f src/Applications/Apps/ApplicationHPC/*_m.cc src/Applications/Apps/ApplicationHPC/*_m.h
	$(Q)-rm -f src/Applications/Apps/ApplicationHTC/*_m.cc src/Applications/Apps/ApplicationHTC/*_m.h
	$(Q)-rm -f src/Applications/Apps/CPU_Intensive/*_m.cc src/Applications/Apps/CPU_Intensive/*_m.h
	$(Q)-rm -f src/Applications/Apps/ServerApplication/*_m.cc src/Applications/Apps/ServerApplication/*_m.h
	$(Q)-rm -f src/Applications/Base/*_m.cc src/Applications/Base/*_m.h
	$(Q)-rm -f src/Applications/Base/Management/*_m.cc src/Applications/Base/Management/*_m.h
	$(Q)-rm -f src/Applications/Libraries_API/*_m.cc src/Applications/Libraries_API/*_m.h
	$(Q)-rm -f src/Applications/Libraries_API/API_OS/*_m.cc src/Applications/Libraries_API/API_OS/*_m.h
	$(Q)-rm -f src/Applications/Libraries_API/MPI_Base/*_m.cc src/Applications/Libraries_API/MPI_Base/*_m.h
	$(Q)-rm -f src/Architecture/*_m.cc src/Architecture/*_m.h
	$(Q)-rm -f src/Architecture/Aggregation/*_m.cc src/Architecture/Aggregation/*_m.h
	$(Q)-rm -f src/Architecture/Machine/*_m.cc src/Architecture/Machine/*_m.h
	$(Q)-rm -f src/Architecture/Node/*_m.cc src/Architecture/Node/*_m.h
	$(Q)-rm -f src/Architecture/Node/Node/*_m.cc src/Architecture/Node/Node/*_m.h
	$(Q)-rm -f src/Architecture/Node/NodeVL/*_m.cc src/Architecture/Node/NodeVL/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/*_m.cc src/Architecture/NodeComponents/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/*_m.cc src/Architecture/NodeComponents/Hardware/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/CPUs/*_m.cc src/Architecture/NodeComponents/Hardware/CPUs/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/CPUs/CPUController/*_m.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUController/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/CPUs/CPUModules/*_m.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUModules/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/CPUs/CPUModules/CPUModule/*_m.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUModules/CPUModule/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/*_m.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore/*_m.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Memories/*_m.cc src/Architecture/NodeComponents/Hardware/Memories/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Memories/Caches/*_m.cc src/Architecture/NodeComponents/Hardware/Memories/Caches/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache/*_m.cc src/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache/*_m.cc src/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Memories/MainMemories/*_m.cc src/Architecture/NodeComponents/Hardware/Memories/MainMemories/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel/*_m.cc src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/*_m.cc src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/Devices/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/StorageController/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/StorageController/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/StorageSystems/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/StorageSystems/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/Hardware/Storage/StorageSystems/StorageSystem/*_m.cc src/Architecture/NodeComponents/Hardware/Storage/StorageSystems/StorageSystem/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/*_m.cc src/Architecture/NodeComponents/OperatingSystems/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/*_m.cc src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO/*_m.cc src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR/*_m.cc src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/OperatingSystemModules/*_m.cc src/Architecture/NodeComponents/OperatingSystems/OperatingSystemModules/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler/*_m.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/SyscallManager/*_m.cc src/Architecture/NodeComponents/OperatingSystems/SyscallManager/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/*_m.cc src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/SystemApps/*_m.cc src/Architecture/NodeComponents/OperatingSystems/SystemApps/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/*_m.cc src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/*_m.cc src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/VirtualOS/*_m.cc src/Architecture/NodeComponents/VirtualOS/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/VirtualOS/OperatingSystemModules/*_m.cc src/Architecture/NodeComponents/VirtualOS/OperatingSystemModules/*_m.h
	$(Q)-rm -f src/Architecture/NodeComponents/VirtualOS/SyscallManager/*_m.cc src/Architecture/NodeComponents/VirtualOS/SyscallManager/*_m.h
	$(Q)-rm -f src/Base/*_m.cc src/Base/*_m.h
	$(Q)-rm -f src/Base/Messages/*_m.cc src/Base/Messages/*_m.h
	$(Q)-rm -f src/Base/Messages/SMS/*_m.cc src/Base/Messages/SMS/*_m.h
	$(Q)-rm -f src/Base/Parser/*_m.cc src/Base/Parser/*_m.h
	$(Q)-rm -f src/Base/Request/*_m.cc src/Base/Request/*_m.h
	$(Q)-rm -f src/Base/Request/HPCRequest/*_m.cc src/Base/Request/HPCRequest/*_m.h
	$(Q)-rm -f src/Base/Request/RequestBase/*_m.cc src/Base/Request/RequestBase/*_m.h
	$(Q)-rm -f src/Base/Request/RequestVM/*_m.cc src/Base/Request/RequestVM/*_m.h
	$(Q)-rm -f src/Base/Request/StorageRequest/*_m.cc src/Base/Request/StorageRequest/*_m.h
	$(Q)-rm -f src/Base/Util/*_m.cc src/Base/Util/*_m.h
	$(Q)-rm -f src/Base/Util/Log/*_m.cc src/Base/Util/Log/*_m.h
	$(Q)-rm -f src/Base/Util/ResourcesMeter/*_m.cc src/Base/Util/ResourcesMeter/*_m.h
	$(Q)-rm -f src/Base/VMID/*_m.cc src/Base/VMID/*_m.h
	$(Q)-rm -f src/Base/include/*_m.cc src/Base/include/*_m.h
	$(Q)-rm -f src/EnergySystem/*_m.cc src/EnergySystem/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/*_m.cc src/EnergySystem/EnergyMeter/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterController/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterController/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/*_m.h
	$(Q)-rm -f src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/*_m.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/*_m.h
	$(Q)-rm -f src/EnergySystem/PSU/*_m.cc src/EnergySystem/PSU/*_m.h
	$(Q)-rm -f src/EnergySystem/PSU/MainPSU/*_m.cc src/EnergySystem/PSU/MainPSU/*_m.h
	$(Q)-rm -f src/Management/*_m.cc src/Management/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/*_m.cc src/Management/CloudManagement/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/Base/*_m.cc src/Management/CloudManagement/Base/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/CloudManager/*_m.cc src/Management/CloudManagement/CloudManager/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/ResourcesProvisioning/*_m.cc src/Management/CloudManagement/ResourcesProvisioning/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS/*_m.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup/*_m.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR/*_m.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR/*_m.h
	$(Q)-rm -f src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom/*_m.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom/*_m.h
	$(Q)-rm -f src/Management/DataCenterManagement/*_m.cc src/Management/DataCenterManagement/*_m.h
	$(Q)-rm -f src/Management/DataCenterManagement/Base/*_m.cc src/Management/DataCenterManagement/Base/*_m.h
	$(Q)-rm -f src/Management/DataCenterManagement/ResourcesProvisioning/*_m.cc src/Management/DataCenterManagement/ResourcesProvisioning/*_m.h
	$(Q)-rm -f src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/*_m.cc src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/*_m.h
	$(Q)-rm -f src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO/*_m.cc src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO/*_m.h
	$(Q)-rm -f src/Management/MachinesStructure/*_m.cc src/Management/MachinesStructure/*_m.h
	$(Q)-rm -f src/Management/NetworkManager/*_m.cc src/Management/NetworkManager/*_m.h
	$(Q)-rm -f src/Management/Topology/*_m.cc src/Management/Topology/*_m.h
	$(Q)-rm -f src/Users/*_m.cc src/Users/*_m.h
	$(Q)-rm -f src/Users/Base/*_m.cc src/Users/Base/*_m.h
	$(Q)-rm -f src/Users/Profiles/*_m.cc src/Users/Profiles/*_m.h
	$(Q)-rm -f src/Users/Profiles/CloudUser/*_m.cc src/Users/Profiles/CloudUser/*_m.h
	$(Q)-rm -f src/Users/Profiles/GeneralUser/*_m.cc src/Users/Profiles/GeneralUser/*_m.h
	$(Q)-rm -f src/Users/Profiles/SmartUser/*_m.cc src/Users/Profiles/SmartUser/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/*_m.cc src/Users/UserGenerator/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/AppDefinition/*_m.cc src/Users/UserGenerator/AppDefinition/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/DistributionDefinition/*_m.cc src/Users/UserGenerator/DistributionDefinition/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/FSUserDefinition/*_m.cc src/Users/UserGenerator/FSUserDefinition/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/PreloadFilesDefinition/*_m.cc src/Users/UserGenerator/PreloadFilesDefinition/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/VmDefinition/*_m.cc src/Users/UserGenerator/VmDefinition/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/VmDefinition/VMToRent/*_m.cc src/Users/UserGenerator/VmDefinition/VMToRent/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/core/*_m.cc src/Users/UserGenerator/core/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/core/CustomGeneratorCells/*_m.cc src/Users/UserGenerator/core/CustomGeneratorCells/*_m.h
	$(Q)-rm -f src/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay/*_m.cc src/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay/*_m.h
	$(Q)-rm -f src/Virtualization/*_m.cc src/Virtualization/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/*_m.cc src/Virtualization/Hypervisor/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager/H_StorageManagerCore/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager/H_StorageManagerCore/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO/*_m.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/Hypervisors/*_m.cc src/Virtualization/Hypervisor/Hypervisors/*_m.h
	$(Q)-rm -f src/Virtualization/Hypervisor/Hypervisors/HypervisorPreset/*_m.cc src/Virtualization/Hypervisor/Hypervisors/HypervisorPreset/*_m.h
	$(Q)-rm -f src/Virtualization/VirtualMachines/*_m.cc src/Virtualization/VirtualMachines/*_m.h
	$(Q)-rm -f src/Virtualization/VirtualMachines/BasicVM/*_m.cc src/Virtualization/VirtualMachines/BasicVM/*_m.h
	$(Q)-rm -f src/Virtualization/VirtualMachines/SetDefinition/*_m.cc src/Virtualization/VirtualMachines/SetDefinition/*_m.h
	$(Q)-rm -f src/Virtualization/VirtualMachines/VMManagement/*_m.cc src/Virtualization/VirtualMachines/VMManagement/*_m.h
	$(Q)-rm -f src/Virtualization/VirtualMachines/VMManagement/VmMsgController/*_m.cc src/Virtualization/VirtualMachines/VMManagement/VmMsgController/*_m.h
	$(Q)-rm -f src/out/*_m.cc src/out/*_m.h
	$(Q)-rm -f src/out/gcc-debug/*_m.cc src/out/gcc-debug/*_m.h

cleanall: clean
	$(Q)-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(qecho) Creating dependencies...
	$(Q)$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc bin/*.cc simulations/*.cc simulations/Cloud_A/*.cc simulations/Cloud_B/*.cc simulations/Cloud_C/*.cc src/*.cc src/Applications/*.cc src/Applications/Apps/*.cc src/Applications/Apps/ApplicationCheckpoint/*.cc src/Applications/Apps/ApplicationHPC/*.cc src/Applications/Apps/ApplicationHTC/*.cc src/Applications/Apps/CPU_Intensive/*.cc src/Applications/Apps/ServerApplication/*.cc src/Applications/Base/*.cc src/Applications/Base/Management/*.cc src/Applications/Libraries_API/*.cc src/Applications/Libraries_API/API_OS/*.cc src/Applications/Libraries_API/MPI_Base/*.cc src/Architecture/*.cc src/Architecture/Aggregation/*.cc src/Architecture/Machine/*.cc src/Architecture/Node/*.cc src/Architecture/Node/Node/*.cc src/Architecture/Node/NodeVL/*.cc src/Architecture/NodeComponents/*.cc src/Architecture/NodeComponents/Hardware/*.cc src/Architecture/NodeComponents/Hardware/CPUs/*.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUController/*.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUModules/*.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUModules/CPUModule/*.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/*.cc src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore/*.cc src/Architecture/NodeComponents/Hardware/Memories/*.cc src/Architecture/NodeComponents/Hardware/Memories/Caches/*.cc src/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache/*.cc src/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache/*.cc src/Architecture/NodeComponents/Hardware/Memories/MainMemories/*.cc src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel/*.cc src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/*.cc src/Architecture/NodeComponents/Hardware/Storage/*.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/*.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/*.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI/*.cc src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk/*.cc src/Architecture/NodeComponents/Hardware/Storage/StorageController/*.cc src/Architecture/NodeComponents/Hardware/Storage/StorageSystems/*.cc src/Architecture/NodeComponents/Hardware/Storage/StorageSystems/StorageSystem/*.cc src/Architecture/NodeComponents/OperatingSystems/*.cc src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/*.cc src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO/*.cc src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR/*.cc src/Architecture/NodeComponents/OperatingSystems/OperatingSystemModules/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler/*.cc src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler/*.cc src/Architecture/NodeComponents/OperatingSystems/SyscallManager/*.cc src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/*.cc src/Architecture/NodeComponents/OperatingSystems/SystemApps/*.cc src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/*.cc src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/*.cc src/Architecture/NodeComponents/VirtualOS/*.cc src/Architecture/NodeComponents/VirtualOS/OperatingSystemModules/*.cc src/Architecture/NodeComponents/VirtualOS/SyscallManager/*.cc src/Base/*.cc src/Base/Messages/*.cc src/Base/Messages/SMS/*.cc src/Base/Parser/*.cc src/Base/Request/*.cc src/Base/Request/HPCRequest/*.cc src/Base/Request/RequestBase/*.cc src/Base/Request/RequestVM/*.cc src/Base/Request/StorageRequest/*.cc src/Base/Util/*.cc src/Base/Util/Log/*.cc src/Base/Util/ResourcesMeter/*.cc src/Base/VMID/*.cc src/Base/include/*.cc src/EnergySystem/*.cc src/EnergySystem/EnergyMeter/*.cc src/EnergySystem/EnergyMeter/EnergyMeterController/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/*.cc src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/*.cc src/EnergySystem/PSU/*.cc src/EnergySystem/PSU/MainPSU/*.cc src/Management/*.cc src/Management/CloudManagement/*.cc src/Management/CloudManagement/Base/*.cc src/Management/CloudManagement/CloudManager/*.cc src/Management/CloudManagement/ResourcesProvisioning/*.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS/*.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup/*.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR/*.cc src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom/*.cc src/Management/DataCenterManagement/*.cc src/Management/DataCenterManagement/Base/*.cc src/Management/DataCenterManagement/ResourcesProvisioning/*.cc src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/*.cc src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO/*.cc src/Management/MachinesStructure/*.cc src/Management/NetworkManager/*.cc src/Management/Topology/*.cc src/Users/*.cc src/Users/Base/*.cc src/Users/Profiles/*.cc src/Users/Profiles/CloudUser/*.cc src/Users/Profiles/GeneralUser/*.cc src/Users/Profiles/SmartUser/*.cc src/Users/UserGenerator/*.cc src/Users/UserGenerator/AppDefinition/*.cc src/Users/UserGenerator/DistributionDefinition/*.cc src/Users/UserGenerator/FSUserDefinition/*.cc src/Users/UserGenerator/PreloadFilesDefinition/*.cc src/Users/UserGenerator/VmDefinition/*.cc src/Users/UserGenerator/VmDefinition/VMToRent/*.cc src/Users/UserGenerator/core/*.cc src/Users/UserGenerator/core/CustomGeneratorCells/*.cc src/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay/*.cc src/Virtualization/*.cc src/Virtualization/Hypervisor/*.cc src/Virtualization/Hypervisor/HypervisorManagers/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager/H_StorageManagerCore/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/*.cc src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO/*.cc src/Virtualization/Hypervisor/Hypervisors/*.cc src/Virtualization/Hypervisor/Hypervisors/HypervisorPreset/*.cc src/Virtualization/VirtualMachines/*.cc src/Virtualization/VirtualMachines/BasicVM/*.cc src/Virtualization/VirtualMachines/SetDefinition/*.cc src/Virtualization/VirtualMachines/VMManagement/*.cc src/Virtualization/VirtualMachines/VMManagement/VmMsgController/*.cc src/out/*.cc src/out/gcc-debug/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/src/Applications/Apps/ApplicationCheckpoint/ApplicationCheckpoint.o: src/Applications/Apps/ApplicationCheckpoint/ApplicationCheckpoint.cc \
	src/Applications/Apps/ApplicationCheckpoint/ApplicationCheckpoint.h \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Base.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Call.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Apps/ApplicationHPC/ApplicationHPC.o: src/Applications/Apps/ApplicationHPC/ApplicationHPC.cc \
	src/Applications/Apps/ApplicationHPC/ApplicationHPC.h \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Base.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Call.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Apps/ApplicationHTC/ApplicationHTC.o: src/Applications/Apps/ApplicationHTC/ApplicationHTC.cc \
	src/Applications/Apps/ApplicationHTC/ApplicationHTC.h \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Base.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Call.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Apps/CPU_Intensive/CPU_Intensive.o: src/Applications/Apps/CPU_Intensive/CPU_Intensive.cc \
	src/Applications/Apps/CPU_Intensive/CPU_Intensive.h \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Apps/ServerApplication/ServerApplication.o: src/Applications/Apps/ServerApplication/ServerApplication.cc \
	src/Applications/Apps/ServerApplication/ServerApplication.h \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Base/UserJob.o: src/Applications/Base/UserJob.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Base/jobBase.o: src/Applications/Base/jobBase.cc \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Base/Management/JobQueue.o: src/Applications/Base/Management/JobQueue.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Base/Management/JobResults.o: src/Applications/Base/Management/JobResults.cc \
	src/Applications/Base/Management/JobResults.h
$O/src/Applications/Base/Management/JobResultsSet.o: src/Applications/Base/Management/JobResultsSet.cc \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Libraries_API/API_OS/API_OS.o: src/Applications/Libraries_API/API_OS/API_OS.cc \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Libraries_API/MPI_Base/MPI_Base.o: src/Applications/Libraries_API/MPI_Base/MPI_Base.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Base.h \
	src/Applications/Libraries_API/MPI_Base/MPI_Call.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Applications/Libraries_API/MPI_Base/MPI_Call.o: src/Applications/Libraries_API/MPI_Base/MPI_Call.cc \
	src/Applications/Libraries_API/MPI_Base/MPI_Call.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/Machine/Machine.o: src/Architecture/Machine/Machine.cc \
	src/Architecture/Machine/Machine.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/MachinesStructure/ElementType.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/Node/AbstractNode.o: src/Architecture/Node/AbstractNode.cc \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/MachinesStructure/ElementType.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/Node/Node/Node.o: src/Architecture/Node/Node/Node.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/Node/NodeVL/NodeVL.o: src/Architecture/Node/NodeVL/NodeVL.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/Node/NodeVL/NodeVL.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/CloudManagement/CloudManager/AbstractCloudManager.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/Hypervisors/Hypervisor.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/HWEnergyInterface.o: src/Architecture/NodeComponents/Hardware/HWEnergyInterface.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/CPUs/CPUController/CPUController.o: src/Architecture/NodeComponents/Hardware/CPUs/CPUController/CPUController.cc \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUController/CPUController.h \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/ICore.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/ICore.o: src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/ICore.cc \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUController/CPUController.h \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/ICore.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore/CPUcore.o: src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore/CPUcore.cc \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUController/CPUController.h \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/CPUcore/CPUcore.h \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/ICore.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache/BlockCache.o: src/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache/BlockCache.cc \
	src/Architecture/NodeComponents/Hardware/Memories/Caches/BlockCache/BlockCache.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache/NullCache.o: src/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache/NullCache.cc \
	src/Architecture/NodeComponents/Hardware/Memories/Caches/NullCache/NullCache.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel/RAMMemory_BlockModel.o: src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel/RAMMemory_BlockModel.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMMemory_BlockModel/RAMMemory_BlockModel.h \
	src/Base/Messages/SMS/SMS_MainMemory.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/icancloud_MemoryBlock.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/RAMmemory.o: src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/RAMmemory.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/RAMmemory.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Storage/Devices/IStorageDevice.o: src/Architecture/NodeComponents/Hardware/Storage/Devices/IStorageDevice.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/Hardware/Storage/Devices/IStorageDevice.h \
	src/Architecture/NodeComponents/Hardware/Storage/StorageController/StorageController.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI/Disk_LI.o: src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI/Disk_LI.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/Disk_LI/Disk_LI.h \
	src/Architecture/NodeComponents/Hardware/Storage/Devices/IStorageDevice.h \
	src/Architecture/NodeComponents/Hardware/Storage/StorageController/StorageController.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk/SimpleDisk.o: src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk/SimpleDisk.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/Hardware/Storage/Devices/Disks/SimpleDisk/SimpleDisk.h \
	src/Architecture/NodeComponents/Hardware/Storage/Devices/IStorageDevice.h \
	src/Architecture/NodeComponents/Hardware/Storage/StorageController/StorageController.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/Hardware/Storage/StorageController/StorageController.o: src/Architecture/NodeComponents/Hardware/Storage/StorageController/StorageController.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/Hardware/Storage/Devices/IStorageDevice.h \
	src/Architecture/NodeComponents/Hardware/Storage/StorageController/StorageController.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO/CPU_Scheduler_FIFO.o: src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO/CPU_Scheduler_FIFO.cc \
	src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_FIFO/CPU_Scheduler_FIFO.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR/CPU_Scheduler_RR.o: src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR/CPU_Scheduler_RR.cc \
	src/Architecture/NodeComponents/OperatingSystems/CPU_Schedulers/CPU_Scheduler_RR/CPU_Scheduler_RR.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem/Basic_FileSystem.o: src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem/Basic_FileSystem.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Basic_FileSystem/Basic_FileSystem.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem/Node_FileSystem.o: src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem/Node_FileSystem.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/FileSystems/Node_FileSystem/Node_FileSystem.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgPreloadFS.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem/NodeVirtualFileSystem.o: src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem/NodeVirtualFileSystem.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/NodeVirtualFileSystem/NodeVirtualFileSystem.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem/VirtualFileSystem.o: src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem/VirtualFileSystem.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/VirtualFileSystems/VirtualFileSystem/VirtualFileSystem.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager/NullStorageManager.o: src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager/NullStorageManager.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/NullStorageManager/NullStorageManager.h \
	src/Base/Messages/SMS/SMS_RAID_0.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager/StorageManager.o: src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager/StorageManager.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageManagers/StorageManager/StorageManager.h \
	src/Base/Messages/SMS/SMS_RAID_0.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyStatesDefinitions.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler/BranchScheduler.o: src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler/BranchScheduler.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/BranchScheduler/BranchScheduler.h \
	src/Base/Messages/SMS/SMS_Branch.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler/NullStorageScheduler.o: src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler/NullStorageScheduler.cc \
	src/Architecture/NodeComponents/OperatingSystems/Storage/VolumeManagers/StorageSchedulers/NullStorageScheduler/NullStorageScheduler.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.o: src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.cc \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.o: src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.cc \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/MachinesStructure/ElementType.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.o: src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.cc \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.o: src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.cc \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.o: src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/cGateManager.o: src/Base/cGateManager.cc \
	src/Base/cGateManager.h
$O/src/Base/icancloud_Base.o: src/Base/icancloud_Base.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/icancloud_MemoryBlock.o: src/Base/icancloud_MemoryBlock.cc \
	src/Base/icancloud_MemoryBlock.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Messages/icancloud_App_CPU_Message.o: src/Base/Messages/icancloud_App_CPU_Message.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_App_CPU_Message_m.o: src/Base/Messages/icancloud_App_CPU_Message_m.cc \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_App_IO_Message.o: src/Base/Messages/icancloud_App_IO_Message.cc \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_App_IO_Message_m.o: src/Base/Messages/icancloud_App_IO_Message_m.cc \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_App_MEM_Message.o: src/Base/Messages/icancloud_App_MEM_Message.cc \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_App_MEM_Message_m.o: src/Base/Messages/icancloud_App_MEM_Message_m.cc \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_App_NET_Message.o: src/Base/Messages/icancloud_App_NET_Message.cc \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_App_NET_Message_m.o: src/Base/Messages/icancloud_App_NET_Message_m.cc \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_BlockList_Message.o: src/Base/Messages/icancloud_BlockList_Message.cc \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_BlockList_Message_m.o: src/Base/Messages/icancloud_BlockList_Message_m.cc \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_File.o: src/Base/Messages/icancloud_File.cc \
	src/Base/Messages/icancloud_File.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Messages/icancloud_MPI_Message.o: src/Base/Messages/icancloud_MPI_Message.cc \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_MPI_Message_m.o: src/Base/Messages/icancloud_MPI_Message_m.cc \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_Message.o: src/Base/Messages/icancloud_Message.cc \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_Message_m.o: src/Base/Messages/icancloud_Message_m.cc \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Messages/icancloud_Migration_Message.o: src/Base/Messages/icancloud_Migration_Message.cc \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/icancloud_Migration_Message_m.o: src/Base/Messages/icancloud_Migration_Message_m.cc \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/SMS/SMS_Branch.o: src/Base/Messages/SMS/SMS_Branch.cc \
	src/Base/Messages/SMS/SMS_Branch.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/SMS/SMS_MainMemory.o: src/Base/Messages/SMS/SMS_MainMemory.cc \
	src/Base/Messages/SMS/SMS_MainMemory.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/SMS/SMS_NFS.o: src/Base/Messages/SMS/SMS_NFS.cc \
	src/Base/Messages/SMS/SMS_NFS.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/SMS/SMS_PFS.o: src/Base/Messages/SMS/SMS_PFS.cc \
	src/Base/Messages/SMS/SMS_PFS.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/SMS/SMS_RAID_0.o: src/Base/Messages/SMS/SMS_RAID_0.cc \
	src/Base/Messages/SMS/SMS_RAID_0.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/SMS/SplittingMessageSystem.o: src/Base/Messages/SMS/SplittingMessageSystem.cc \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Messages/SMS/icancloud_Request.o: src/Base/Messages/SMS/icancloud_Request.cc \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Parser/cfgCloud.o: src/Base/Parser/cfgCloud.cc \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Parser/cfgCommunications.o: src/Base/Parser/cfgCommunications.cc \
	src/Base/Parser/cfgCommunications.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Parser/cfgDataCenter.o: src/Base/Parser/cfgDataCenter.cc \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Parser/cfgMPI.o: src/Base/Parser/cfgMPI.cc \
	src/Base/Parser/cfgMPI.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Parser/cfgPreloadFS.o: src/Base/Parser/cfgPreloadFS.cc \
	src/Base/Parser/cfgPreloadFS.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Request/AbstractRequest.o: src/Base/Request/AbstractRequest.cc \
	src/Base/Request/Request.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Request/HPCRequest/PhysicalResourcesRequest.o: src/Base/Request/HPCRequest/PhysicalResourcesRequest.cc \
	src/Base/Request/Request.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Request/RequestBase/RequestBase.o: src/Base/Request/RequestBase/RequestBase.cc \
	src/Base/Request/Request.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Request/RequestVM/RequestVM.o: src/Base/Request/RequestVM/RequestVM.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Base/Request/StorageRequest/StorageRequest.o: src/Base/Request/StorageRequest/StorageRequest.cc \
	src/Base/Request/Request.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h
$O/src/Base/Util/Log/ICCLog.o: src/Base/Util/Log/ICCLog.cc \
	src/Base/Util/Log/ICCLog.h
$O/src/Base/Util/ResourcesMeter/ResourcesMeter.o: src/Base/Util/ResourcesMeter/ResourcesMeter.cc \
	src/Base/Util/ResourcesMeter/ResourcesMeter.h
$O/src/Base/VMID/VMID.o: src/Base/VMID/VMID.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.o: src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore/CPUMeterCore.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore/CPUMeterCore.cc \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUController/CPUController.h \
	src/Architecture/NodeComponents/Hardware/CPUs/CPUcores/ICore.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/CPUMeter/CPUMeterCore/CPUMeterCore.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore/MemoryMeterCore.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore/MemoryMeterCore.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/Hardware/Memories/MainMemories/RAMmemory/RAMmemory.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/MemoryMeter/MemoryMeterCore/MemoryMeterCore.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore/NetworkMeterCore.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore/NetworkMeterCore.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/NetworkMeter/NetworkMeterCore/NetworkMeterCore.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore/StorageMeterCore.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore/StorageMeterCore.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/ComponentsMeter/StorageMeter/StorageMeterCore/StorageMeterCore.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.cc \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EState.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EState.cc \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EState.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.cc \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h
$O/src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.o: src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.cc \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h
$O/src/EnergySystem/PSU/AbstractPSU.o: src/EnergySystem/PSU/AbstractPSU.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/EnergySystem/PSU/MainPSU/MainPSU.o: src/EnergySystem/PSU/MainPSU/MainPSU.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/EnergySystem/PSU/MainPSU/MainPSU.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/CloudManagement/Base/AllocationManagement.o: src/Management/CloudManagement/Base/AllocationManagement.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/CloudManagement/CloudManager/AbstractCloudManager.o: src/Management/CloudManagement/CloudManager/AbstractCloudManager.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/Node/NodeVL/NodeVL.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/CloudManagement/CloudManager/AbstractCloudManager.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/Hypervisors/Hypervisor.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS/CloudSchedulerFCFS.o: src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS/CloudSchedulerFCFS.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/Node/NodeVL/NodeVL.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/CloudManagement/CloudManager/AbstractCloudManager.h \
	src/Management/CloudManagement/ResourcesProvisioning/AbstractCloudScheduler.h \
	src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS/CloudSchedulerFCFS.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/Hypervisors/Hypervisor.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup/CloudSchedulerFCFS_gnup.o: src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup/CloudSchedulerFCFS_gnup.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/Node/NodeVL/NodeVL.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/CloudManagement/CloudManager/AbstractCloudManager.h \
	src/Management/CloudManagement/ResourcesProvisioning/AbstractCloudScheduler.h \
	src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerFCFS_gnup/CloudSchedulerFCFS_gnup.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/Hypervisors/Hypervisor.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR/CloudSchedulerRR.o: src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR/CloudSchedulerRR.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/Node/NodeVL/NodeVL.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/CloudManagement/CloudManager/AbstractCloudManager.h \
	src/Management/CloudManagement/ResourcesProvisioning/AbstractCloudScheduler.h \
	src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRR/CloudSchedulerRR.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/Hypervisors/Hypervisor.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom/CloudSchedulerRandom.o: src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom/CloudSchedulerRandom.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/Node/NodeVL/NodeVL.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/CloudManagement/CloudManager/AbstractCloudManager.h \
	src/Management/CloudManagement/ResourcesProvisioning/AbstractCloudScheduler.h \
	src/Management/CloudManagement/ResourcesProvisioning/CloudSchedulerRandom/CloudSchedulerRandom.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/Hypervisors/Hypervisor.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/DataCenterManagement/AbstractDCManager.o: src/Management/DataCenterManagement/AbstractDCManager.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/DataCenterManagement/Base/DataCenterAPI.o: src/Management/DataCenterManagement/Base/DataCenterAPI.cc \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/DataCenterManagement/Base/RequestsManagement.o: src/Management/DataCenterManagement/Base/RequestsManagement.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/DataCenterManagement/Base/StorageManagement.o: src/Management/DataCenterManagement/Base/StorageManagement.cc \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/DataCenterManagement/Base/UserManagement.o: src/Management/DataCenterManagement/Base/UserManagement.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO/DataCenterSchedulerFIFO.o: src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO/DataCenterSchedulerFIFO.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulerInterface.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/DataCenterSchedulers/DataCenterSchedulerFIFO/DataCenterSchedulerFIFO.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/MachinesStructure/ElementType.o: src/Management/MachinesStructure/ElementType.cc \
	src/Management/MachinesStructure/ElementType.h
$O/src/Management/MachinesStructure/HeterogeneousSet.o: src/Management/MachinesStructure/HeterogeneousSet.cc \
	src/Architecture/Machine/Machine.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/MachinesStructure/MachinesMap.o: src/Management/MachinesStructure/MachinesMap.cc \
	src/Architecture/Machine/Machine.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/NetworkManager/NetworkManager.o: src/Management/NetworkManager/NetworkManager.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Management/NetworkManager/PortTable.o: src/Management/NetworkManager/PortTable.cc \
	src/Base/include/Constants.h \
	src/Management/NetworkManager/PortTable.h
$O/src/Management/NetworkManager/VirtualIPCell.o: src/Management/NetworkManager/VirtualIPCell.cc \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h
$O/src/Management/NetworkManager/VirtualIPs.o: src/Management/NetworkManager/VirtualIPs.cc \
	src/Management/NetworkManager/VirtualIPs.h
$O/src/Management/Topology/ComputeNode.o: src/Management/Topology/ComputeNode.cc \
	src/Management/Topology/ComputeNode.h
$O/src/Management/Topology/StorageNode.o: src/Management/Topology/StorageNode.cc \
	src/Management/Topology/StorageNode.h
$O/src/Users/AbstractUser.o: src/Users/AbstractUser.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/Base/queuesManager.o: src/Users/Base/queuesManager.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Users/Base/queuesManager.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/Base/userBase.o: src/Users/Base/userBase.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/Base/userStorage.o: src/Users/Base/userStorage.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/Profiles/CloudUser/AbstractCloudUser.o: src/Users/Profiles/CloudUser/AbstractCloudUser.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/Profiles/GeneralUser/GeneralUser.o: src/Users/Profiles/GeneralUser/GeneralUser.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/Profiles/GeneralUser/GeneralUser.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/Profiles/SmartUser/SmartUser.o: src/Users/Profiles/SmartUser/SmartUser.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/Profiles/SmartUser/SmartUser.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/UserGenerator/DistributionDefinition/DistributionDefinition.o: src/Users/UserGenerator/DistributionDefinition/DistributionDefinition.cc \
	src/Users/UserGenerator/DistributionDefinition/DistributionDefinition.h
$O/src/Users/UserGenerator/FSUserDefinition/FSUserDefinition.o: src/Users/UserGenerator/FSUserDefinition/FSUserDefinition.cc \
	src/Users/UserGenerator/FSUserDefinition/FSUserDefinition.h
$O/src/Users/UserGenerator/PreloadFilesDefinition/PreloadFilesDefinition.o: src/Users/UserGenerator/PreloadFilesDefinition/PreloadFilesDefinition.cc \
	src/Users/UserGenerator/PreloadFilesDefinition/PreloadFilesDefinition.h
$O/src/Users/UserGenerator/VmDefinition/VMToRent/VmToRent.o: src/Users/UserGenerator/VmDefinition/VMToRent/VmToRent.cc \
	src/Users/UserGenerator/VmDefinition/VMToRent/VmToRent.h
$O/src/Users/UserGenerator/core/AbstractUserGenerator.o: src/Users/UserGenerator/core/AbstractUserGenerator.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay/UserGeneratorDay.o: src/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay/UserGeneratorDay.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Users/UserGenerator/core/CustomGeneratorCells/UserGeneratorDay/UserGeneratorDay.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.o: src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO/H_CPU_SCHED_FIFO.o: src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO/H_CPU_SCHED_FIFO.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/Schedulers/H_CPU_SCHED_FIFO/H_CPU_SCHED_FIFO.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.o: src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO/H_MEM_SCHED_FIFO.o: src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO/H_MEM_SCHED_FIFO.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/Schedulers/H_MEM_SCHED_FIFO/H_MEM_SCHED_FIFO.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.cc \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.cc \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/NetworkService.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/NetworkService.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/NetworkService.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ClientSideService.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ServerSideService.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddressResolver.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h \
	$(INET_PROJ)/src/transport/contract/TCPSocketMap.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ClientSideService.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ClientSideService.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/NetworkService.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ClientSideService.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ServerSideService.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddressResolver.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h \
	$(INET_PROJ)/src/transport/contract/TCPSocketMap.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ServerSideService.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ServerSideService.cc \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/NetworkService/NetworkService.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ClientSideService.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/NetworkServices/TCP_Services/TCP_ServerSideService.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddressResolver.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h \
	$(INET_PROJ)/src/transport/contract/TCPSocketMap.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO/H_NET_SCHED_FIFO.o: src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO/H_NET_SCHED_FIFO.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Schedulers/H_NET_SCHED_FIFO/H_NET_SCHED_FIFO.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.o: src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.o: src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic/Storage_cell_basic.o: src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic/Storage_cell_basic.cc \
	src/Base/Messages/SMS/SMS_NFS.h \
	src/Base/Messages/SMS/SMS_PFS.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/Storage_cell_basic/Storage_cell_basic.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/NFS_Storage_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/PFS_Storage_Cell.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.o: src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.cc \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/NFS_Storage_Cell.o: src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/NFS_Storage_Cell.cc \
	src/Base/Messages/SMS/SMS_NFS.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/NFS_Storage_Cell.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/PFS_Storage_Cell.o: src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/PFS_Storage_Cell.cc \
	src/Base/Messages/SMS/SMS_NFS.h \
	src/Base/Messages/SMS/SMS_PFS.h \
	src/Base/Messages/SMS/SplittingMessageSystem.h \
	src/Base/Messages/SMS/icancloud_Request.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/FsType/PFS_Storage_Cell.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO/H_STORAGE_SCHED_FIFO.o: src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO/H_STORAGE_SCHED_FIFO.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/Schedulers/H_STORAGE_SCHED_FIFO/H_STORAGE_SCHED_FIFO.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/Hypervisor/Hypervisors/Hypervisor.o: src/Virtualization/Hypervisor/Hypervisors/Hypervisor.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/Node/Node/Node.h \
	src/Architecture/Node/NodeVL/NodeVL.h \
	src/Architecture/NodeComponents/Hardware/HWEnergyInterface.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgCloud.h \
	src/Base/Parser/cfgDataCenter.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/VMID/VMID.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterController/EnergyMeterController.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/AbstractMeterUnit.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyMeterStates.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/States/EnergyState.h \
	src/EnergySystem/PSU/AbstractPSU.h \
	src/Management/CloudManagement/Base/AllocationManagement.h \
	src/Management/CloudManagement/CloudManager/AbstractCloudManager.h \
	src/Management/DataCenterManagement/AbstractDCManager.h \
	src/Management/DataCenterManagement/Base/DataCenterAPI.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/DataCenterManagement/Base/StorageManagement.h \
	src/Management/DataCenterManagement/Base/UserManagement.h \
	src/Management/DataCenterManagement/ResourcesProvisioning/AbstractDCManager.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Management/NetworkManager/NetworkManager.h \
	src/Management/NetworkManager/PortTable.h \
	src/Management/NetworkManager/VirtualIPCell.h \
	src/Management/NetworkManager/VirtualIPs.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Users/UserGenerator/core/AbstractUserGenerator.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_CPUManager/H_CPUManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_MemoryManager/H_MemoryManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/LocalNetManager.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/PortAddressTranslation.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/User_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/LocalNetManager/PAT/Vm_VirtualPort_Cell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_NetworkManager/Managers/H_NETManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/HW_Cells/AbstractStorageCell.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/H_StorageManager_Base.h \
	src/Virtualization/Hypervisor/HypervisorManagers/H_StorageManager/RemoteFS/Abstract_Remote_FS.h \
	src/Virtualization/Hypervisor/Hypervisors/Hypervisor.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTable.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/VirtualMachines/VM.o: src/Virtualization/VirtualMachines/VM.cc \
	src/Applications/Base/Management/JobQueue.h \
	src/Applications/Base/Management/JobResults.h \
	src/Applications/Base/Management/JobResultsSet.h \
	src/Applications/Base/UserJob.h \
	src/Applications/Base/jobBase.h \
	src/Applications/Libraries_API/API_OS/API_OS.h \
	src/Architecture/Machine/Machine.h \
	src/Architecture/Node/AbstractNode.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/AbstractSyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SyscallManager/NodeSyscallManager/SyscallManager.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/RemoteStorageApp/RemoteStorageApp.h \
	src/Architecture/NodeComponents/OperatingSystems/SystemApps/StatesApplication/StatesApplication.h \
	src/Architecture/NodeComponents/VirtualOS/SyscallManager/VMSyscallManager.h \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Parser/cfgMPI.h \
	src/Base/Request/Request.h \
	src/Base/Request/RequestVM/RequestVM.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Management/DataCenterManagement/Base/RequestsManagement.h \
	src/Management/MachinesStructure/ElementType.h \
	src/Management/MachinesStructure/HeterogeneousSet.h \
	src/Management/MachinesStructure/MachinesMap.h \
	src/Users/AbstractUser.h \
	src/Users/Base/queuesManager.h \
	src/Users/Base/userBase.h \
	src/Users/Base/userStorage.h \
	src/Users/Profiles/CloudUser/AbstractCloudUser.h \
	src/Virtualization/VirtualMachines/VM.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h
$O/src/Virtualization/VirtualMachines/SetDefinition/VmImage.o: src/Virtualization/VirtualMachines/SetDefinition/VmImage.cc \
	src/Virtualization/VirtualMachines/SetDefinition/VmImage.h
$O/src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.o: src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.cc \
	src/Base/Messages/icancloud_App_CPU_Message.h \
	src/Base/Messages/icancloud_App_CPU_Message_m.h \
	src/Base/Messages/icancloud_App_IO_Message.h \
	src/Base/Messages/icancloud_App_IO_Message_m.h \
	src/Base/Messages/icancloud_App_MEM_Message.h \
	src/Base/Messages/icancloud_App_MEM_Message_m.h \
	src/Base/Messages/icancloud_App_NET_Message.h \
	src/Base/Messages/icancloud_App_NET_Message_m.h \
	src/Base/Messages/icancloud_BlockList_Message.h \
	src/Base/Messages/icancloud_BlockList_Message_m.h \
	src/Base/Messages/icancloud_File.h \
	src/Base/Messages/icancloud_MPI_Message.h \
	src/Base/Messages/icancloud_MPI_Message_m.h \
	src/Base/Messages/icancloud_Message.h \
	src/Base/Messages/icancloud_Message_m.h \
	src/Base/Messages/icancloud_Migration_Message.h \
	src/Base/Messages/icancloud_Migration_Message_m.h \
	src/Base/Util/Log/ICCLog.h \
	src/Base/cGateManager.h \
	src/Base/icancloud_Base.h \
	src/Base/include/Constants.h \
	src/Base/include/icancloud_debug.h \
	src/Base/include/icancloud_types.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/Memoization_uthash.h \
	src/EnergySystem/EnergyMeter/EnergyMeterUnit/Memorization/uthash.h \
	src/Virtualization/VirtualMachines/VMManagement/VmMsgController/VmMsgController.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPv6Address.h \
	$(INET_PROJ)/src/networklayer/contract/IPvXAddress.h \
	$(INET_PROJ)/src/transport/contract/TCPCommand_m.h \
	$(INET_PROJ)/src/transport/contract/TCPSocket.h

