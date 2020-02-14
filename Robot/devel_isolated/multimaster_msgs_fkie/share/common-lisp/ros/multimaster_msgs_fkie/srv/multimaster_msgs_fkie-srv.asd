
(cl:in-package :asdf)

(defsystem "multimaster_msgs_fkie-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :multimaster_msgs_fkie-msg
)
  :components ((:file "_package")
    (:file "DiscoverMasters" :depends-on ("_package_DiscoverMasters"))
    (:file "_package_DiscoverMasters" :depends-on ("_package"))
    (:file "GetSyncInfo" :depends-on ("_package_GetSyncInfo"))
    (:file "_package_GetSyncInfo" :depends-on ("_package"))
    (:file "ListDescription" :depends-on ("_package_ListDescription"))
    (:file "_package_ListDescription" :depends-on ("_package"))
    (:file "ListNodes" :depends-on ("_package_ListNodes"))
    (:file "_package_ListNodes" :depends-on ("_package"))
    (:file "LoadLaunch" :depends-on ("_package_LoadLaunch"))
    (:file "_package_LoadLaunch" :depends-on ("_package"))
    (:file "Task" :depends-on ("_package_Task"))
    (:file "_package_Task" :depends-on ("_package"))
  ))