
(cl:in-package :asdf)

(defsystem "multimaster_msgs_fkie-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Capability" :depends-on ("_package_Capability"))
    (:file "_package_Capability" :depends-on ("_package"))
    (:file "LinkState" :depends-on ("_package_LinkState"))
    (:file "_package_LinkState" :depends-on ("_package"))
    (:file "LinkStatesStamped" :depends-on ("_package_LinkStatesStamped"))
    (:file "_package_LinkStatesStamped" :depends-on ("_package"))
    (:file "MasterState" :depends-on ("_package_MasterState"))
    (:file "_package_MasterState" :depends-on ("_package"))
    (:file "ROSMaster" :depends-on ("_package_ROSMaster"))
    (:file "_package_ROSMaster" :depends-on ("_package"))
    (:file "SyncMasterInfo" :depends-on ("_package_SyncMasterInfo"))
    (:file "_package_SyncMasterInfo" :depends-on ("_package"))
    (:file "SyncServiceInfo" :depends-on ("_package_SyncServiceInfo"))
    (:file "_package_SyncServiceInfo" :depends-on ("_package"))
    (:file "SyncTopicInfo" :depends-on ("_package_SyncTopicInfo"))
    (:file "_package_SyncTopicInfo" :depends-on ("_package"))
  ))