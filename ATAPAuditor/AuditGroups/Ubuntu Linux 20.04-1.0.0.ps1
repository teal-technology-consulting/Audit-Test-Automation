[AuditTest] @{
    Id = "1.1.1.1"
    Task = "Ensure mounting of cramfs filesystetms is disabled"
    Test = {
        $result1 = modprobe -n -v cramfs | grep -E '(cramfs|install)'
        $result2 = lsmod | grep cramfs
        
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.1.2"
    Task = "Ensure mounting of freevxfs filesystetms is disabled"
    Test = {
        $result1 = modprobe -n -v freevxfs | grep -E '(freevxfs|install)'
        $result2 = lsmod | grep freevxfs
        
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.1.3"
    Task = "Ensure mounting of jffs2 filesystetms is disabled"
    Test = {
        $result1 = modprobe -n -v jffs2 | grep -E '(jffs2|install)'
        $result2 = lsmod | grep jffs2
        
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.1.4"
    Task = "Ensure mounting of hfs filesystetms is disabled"
    Test = {
        $result1 = modprobe -n -v hfs | grep -E '(hfs|install)'
        $result2 = lsmod | grep hfs
        
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.1.5"
    Task = "Ensure mounting of hfsplus filesystetms is disabled"
    Test = {
        $result1 = modprobe -n -v hfsplus | grep -E '(hfsplus|install)'
        $result2 = lsmod | grep hfsplus
        
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.1.6"
    Task = "Ensure mounting of squashfs filesystetms is disabled"
    Test = {
        $result1 = modprobe -n -v squashfs | grep -E '(squashfs|install)'
        $result2 = lsmod | grep squashfs
        
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.1.7"
    Task = "Ensure mounting of udf filesystetms is disabled"
    Test = {
        $result1 = modprobe -n -v udf | grep -E '(udf|install)'
        $result2 = lsmod | grep udf
        
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.2"
    Task = "Ensure /tmp is configured"
    Test = {
        $result = findmnt -n /tmp
        if($result -match "/tmp"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.3"
    Task = "Ensure nodev option set on /tmp partition"
    Test = {
        $result = findmnt -n /tmp
        if($result -match "nodev"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.4"
    Task = "Ensure nosuid option set on /tmp partition"
    Test = {
        $result = findmnt -n /tmp
        if($result -match "nosuid"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.5"
    Task = "Ensure noexec option set on /tmp partition"
    Test = {
        $result = findmnt -n /tmp
        if($result -match "noexec"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.6"
    Task = "Ensure /dev/shm is configured"
    Test = {
        $result = findmnt -n /dev/shm
        if($result -match "/dev/shm"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.7"
    Task = "Ensure nodev option set on /dev/shm partition"
    Test = {
        $result = findmnt -n /dev/shm
        if($result -match "nodev"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.8"
    Task = "Ensure nosuid option set on /dev/shm partition"
    Test = {
        $result = findmnt -n /dev/shm
        if($result -match "nosuid"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.10"
    Task = "Ensure separate partition exists for /var"
    Test = {
        $result = findmnt /var
        if($result -match "/var"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.11"
    Task = "Ensure separate partition exists for /var/tmp"
    Test = {
        $result = findmnt /var/tmp
        if($result -match "/var/tmp"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.12"
    Task = "Ensure /var/tmp partition includes the nodev option"
    Test = {
        $result = findmnt /var/tmp
        if($result -match "nodev"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.13"
    Task = "Ensure /var/tmp partition includes the nosuid option"
    Test = {
        $result = findmnt /var/tmp
        if($result -match "nosuid"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.14"
    Task = "Ensure /var/tmp partition includes the noexec option"
    Test = {
        $result = findmnt /var/tmp
        if($result -match "noexec"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.15"
    Task = "Ensure separate partition exists for /var/log"
    Test = {
        $result = findmnt /var/log
        if($result -match "/var/log"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.16"
    Task = "Ensure separate partition exists for /var/log/audit"
    Test = {
        $result = findmnt /var/log/audit
        if($result -match "/var/log/audit"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.17"
    Task = "Ensure separate partition exists for /home"
    Test = {
        $result = findmnt /home
        if($result -match "/home"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.18"
    Task = "Ensure /home partition includes the nodev option"
    Test = {
        $result = findmnt /home
        if($result -match "nodev"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.19"
    Task = "Ensure nodev option set on removable media partitions"
    Test = {
        $result = mount
        foreach($line in $result){
            if(!($line -match "nodev")){
                return @{
                    Message = "Not-Compliant"
                    Status = "False"
                }
            }
        }
        return @{
            Message = "Compliant"
            Status = "True"
        }
    }
}
[AuditTest] @{
    Id = "1.1.20"
    Task = "Ensure nosuid option set on removable media partitions"
    Test = {
        $result = mount
        foreach($line in $result){
            if(!($line -match "nosuid")){
                return @{
                    Message = "Not-Compliant"
                    Status = "False"
                }
            }
        }
        return @{
            Message = "Compliant"
            Status = "True"
        }
    }
}
[AuditTest] @{
    Id = "1.1.21"
    Task = "Ensure noexec option set on removable media partitions"
    Test = {
        $result = mount
        foreach($line in $result){
            if(!($line -match "noexec")){
                return @{
                    Message = "Not-Compliant"
                    Status = "False"
                }
            }
        }
        return @{
            Message = "Compliant"
            Status = "True"
        }
    }
}
[AuditTest] @{
    Id = "1.1.22"
    Task = "Ensure sticky bit is set on all world-writable directories"
    Test = {
        $result = df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null
        if($result -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.23"
    Task = "Disable Automounting"
    Test = {
        $result = dpkg -s autofs
        if($result -match "package 'autofs' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        else{
            $result = systemctl is-enabled autofs
            if($result -match "disabled"){
                return @{
                    Message = "Compliant"
                    Status = "True"
                }
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.1.24"
    Task = "Disable USB Storage"
    Test = {
        $result1 = modprobe -n -v usb-storage
        $result2 = lsmod | grep usb-storage
        if($result1 -match "install /bin/true" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.2.1"
    Task = "Ensure package manager repositories are configured"
    Test = {
        $result = apt-cache policy
        if($result -ne $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.2.2"
    Task = "Ensure GPG keys are configured"
    Test = {
        $result = apt-key list
        if($result -ne $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }

        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.3.1"
    Task = "Ensure AIDE is installed"
    Test = {
        $result1 = dpkg -s aide | grep -E 'Status:|not installed)'
        $result2 = dpkg -s aide-common | grep -E 'Status:|not installed)'
        if($result1 -eq $null -or $result2 -eq $null){
            return @{
                Message = "Not-Compliant"
                Status = "False"
            }
        }
        
        return @{
            Message = "Compliant"
            Status = "True"
        }
    }
}
[AuditTest] @{
    Id = "1.3.2"
    Task = "Ensure filesystem integrity is regularly checked"
    Test = {
        $result = grep -Ers '^([^#]+\s+)?(\/usr\/s?bin\/|^\s*)aide(\.wrapper)?\s(--check|\$AIDEARGS)\b' /etc/cron.* /etc/crontab /var/spool/cron/
        if($result -eq $null){
            return @{
                Message = "Not-Compliant"
                Status = "False"
            }
        }
        
        return @{
            Message = "Compliant"
            Status = "True"
        }
    }
}
[AuditTest] @{
    Id = "1.4.1"
    Task = "Ensure permissions on bootloader config are not overridden"
    Test = {
        $output = grep -E '^\s*chmod\s+[0-7][0-7][0-7]\s+\$\{grub_cfg\}\.new' -A 1 -B1 /usr/sbin/grub-mkconfig
        $response = 'if [ "x${grub_cfg}" != "x" ] && ! grep "^password" ${grub_cfg}.new >/dev/null; then
        chmod 444 ${grub_cfg}.new || true
      fi
      ' 
        if($output -ne $response){
            return @{
                Message = "Not-Compliant"
                Status = "False"
            }
        }
        
        return @{
            Message = "Compliant"
            Status = "True"
        }
    }
}
[AuditTest] @{
    Id = "1.4.2"
    Task = "Ensure bootloader password is set"
    Test = {
        $result1 = grep "^set superusers" /boot/grub/grub.cfg
        $result2 = grep "^password" /boot/grub/grub.cfg
        if($result1 -match "set superusers=" -and $result2 -match "password_pbkdf2"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.4.3"
    Task = "Ensure permissions on bootloader config are configured"
    Test = {
        $result = stat /boot/grub/grub.cfg | grep "Uid: (    0/    root)   Gid: (    0/    root)"
        $result = $result | cut -d '(' -f 2
        $result = $result | cut '/'
        $result = $result | cut -d '/' -f 1
        if($result -ge 0400){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.4.4"
    Task = "Ensure authentication required for single user mode"
    Test = {
        $result = grep -Eq '^root:\$[0-9]' /etc/shadow || echo "root is locked"
        if($result -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.5.1"
    Task = "Ensure XD/NX support is enabled"
    Test = {
        $result = journalctl | grep 'protection: active'
        if($result -match "kernel: NX (Execute Disable) protection: active"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.5.2"
    Task = "Ensure address space layout randomization (ASLR) is enabled"
    Test = {
        $result1 = sysctl kernel.randomize_va_space
        $result2 = grep -Es "^\s*kernel\.randomize_va_space\s*=\s*([0-1]|[3-9]|[1-9][0-9]+)" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /usr/local/lib/sysctl.d/*.conf /run/sysctl.d/*.conf
        if($result1 -match "kernel.randomize_va_space = 2" -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.5.3"
    Task = "Ensure prelink is not installed"
    Test = {
        $result = dpkg -s prelink | grep -E '(Status:|not installed)'
        if($result -match "package 'prelink' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.5.4"
    Task = "Ensure core dumps are restricted"
    Test = {
        $result1 = grep -Es '^(\*|\s).*hard.*core.*(\s+#.*)?$' /etc/security/limits.conf /etc/security/limits.d/*
        $result2 = sysctl fs.suid_dumpable
        $result3 = grep "fs.suid_dumpable" /etc/sysctl.conf /etc/sysctl.d/*
        $result4 = systemctl is-enabled coredump.service
        $message = "Compliant"
        if($result4 -match "enabled" -or $result4 -match "masked" -or $result4 -match "disabled"){
            $message = "systemd-coredump is installed"
        }
        if($result1 -match "* hard core 0" -and $result2 -match "fs.suid_dumpable = 0" -and $result3 -match "fs.suid_dumpable = 0"){
            return @{
                Message = $message
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.6.1.1"
    Task = "Ensure AppArmor is installed"
    Test = {
        $result = dpkg -s apparmor | grep -E '(Status:|not installed)'
        
        if($result -match "Status: install ok installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.6.1.2"
    Task = "Ensure AppArmor is enabled in the bootloader configuration"
    Test = {
        $result1 = grep "^\s*linux" /boot/grub/grub.cfg | grep -v "apparmor=1"
        $result2 = grep "^\s*linux" /boot/grub/grub.cfg | grep -v "security=apparmor"
        if($result1 -eq $null -and $result2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.6.1.3"
    Task = "Ensure all AppArmor Profiles are in enforce or complain mode"
    Test = {
        $profileMode1 = apparmor_status | grep profiles | sed '1!d' | cut -d ' ' -f 1
        $profileMode2 = apparmor_status | grep profiles | sed '2!d' | cut -d ' ' -f 1
        $profileMode3 = apparmor_status | grep profiles | sed '3!d' | cut -d ' ' -f 1
        $result = expr $profileMode3 + $profileMode2
        
        $unconfinedProcesses = apparmor_status | grep processes | sed '4!d' | cut -d ' ' -f 1

        if($result -eq $profileMode1 -and $unconfinedProcesses -eq 0){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.6.1.4"
    Task = "Ensure all AppArmor Profiles are enforcing"
    Test = {
        $profileMode1 = apparmor_status | grep profiles | sed '1!d' | cut -d ' ' -f 1
        $profileMode2 = apparmor_status | grep profiles | sed '2!d' | cut -d ' ' -f 1
        
        $unconfinedProcesses = apparmor_status | grep processes | sed '4!d' | cut -d ' ' -f 1

        if($profileMode1 -eq $profileMode2 -and $unconfinedProcesses -eq 0){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.7.1"
    Task = "Ensure message of the day is configured properly"
    Test = {
        $output = grep -Eis "(\\\v|\\\r|\\\m|\\\s|$(grep '^ID=' /etc/os-release | cut -d= -f2 | sed -e 's/"//g'))" /etc/motd

        if($output -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.7.2"
    Task = "Ensure local login warning banner is configured properly"
    Test = {
        $output1 = cat /etc/issue
        $output2 = grep -E -i "(\\\v|\\\r|\\\m|\\\s|$(grep '^ID=' /etc/os-release | cut -d= -f2 | sed -e 's/"//g'))" /etc/issue
        
        if($output1 -ne $null -and $output2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.7.3"
    Task = "Ensure remote login warning banner is configured properly"
    Test = {
        $output1 = cat /etc/issue.net
        $output2 = grep -E -i "(\\\v|\\\r|\\\m|\\\s|$(grep '^ID=' /etc/os-release | cut -d= -f2 | sed -e 's/"//g'))" /etc/issue.net
        
        if($output1 -ne $null -and $output2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.7.4"
    Task = "Ensure permissions on /etc/motd are configured"
    Test = {
        $output = stat -L /etc/motd
        
        if($output -eq $null -or $output -match "Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.7.5"
    Task = "Ensure permissions on /etc/issue are configured"
    Test = {
        $output = stat -L /etc/issue
        
        if($output -match "Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.7.6"
    Task = "Ensure permissions on /etc/issue.net are configured"
    Test = {
        $output = stat -L /etc/issue.net
        
        if($output -match "Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.8.2"
    Task = "Ensure GNOME Display Manager is removed"
    Test = {
        $path = /etc/gdm3/greeter.dconf-defaults
        if(Test-Path $path){
            $content = cat $path
            $line1 = $content | grep "banner-message-enable=true"
            $line2 = $content | grep "banner-message-text="
            if($line1 -ne $null -and $line1[0] -ne '#' -and $line2 -ne $null -and $line2[0] -ne '#'){
                return @{
                    Message = "Compliant"
                    Status = "True"
                }
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.8.3"
    Task = "Ensure disable-user-list is enabled"
    Test = {
        $path = /etc/gdm3/greeter.dconf-defaults
        if(Test-Path $path){
            $content = cat $path
            $line = $content | grep "disable-user-list=true"
            if($line -ne $null -and $line[0] -ne '#'){
                return @{
                    Message = "Compliant"
                    Status = "True"
                }
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.8.4"
    Task = "Ensure XDCMP is not enabled"
    Test = {
        $output = grep -Eis '^\s*Enable\s*=\s*true' /etc/gdm3/custom.conf
        if($output -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "1.9"
    Task = "Ensure updates, patches, and additional security software are installed"
    Test = {
        $output = apt -s upgrade
        $result1 = $output | sed '13!d' | cut -d ' ' -f 1
        $result2 = $output | sed '13!d' | cut -d ' ' -f 3
        $result3 = $output | sed '13!d' | cut -d ' ' -f 6
        $result4 = $output | sed '13!d' | cut -d ' ' -f 10
        if($result1 -eq 0 -and $result2 -eq 0 -and $result3 -eq 0 -and $result4 -eq 0){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.1.1"
    Task = "Ensure time synchronization is in use"
    Test = {
        $test1 = systemctl is-enabled systemd-timesyncd        
        $test2 = dpkg -s chrony
        $test3 = dpkg -s ntp
        if($test1 -match "enabled" -or $test2 -match "Status: install ok installed" -or $test3 -match "Status: install ok installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.1.2"
    Task = "Ensure systemd-timesyncd is configured"
    Test = {
        $test1 = dpkg -s ntp
        $test2 = dpkg -s chrony
        $test3 = systemctl is-enabled systemd-timesyncd.service
        $time = timedatectl status
        if($test1 -match "package 'ntp' is not installed" -and $test2 -match "package 'chrony' is not installed" -and $test3 -match "enabled" -and $time -ne $null){    
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.1.3"
    Task = "Ensure chrony is configured"
    Test = {
        $test1 = dpkg -s ntp | grep -E '(Status:|not installed)'
        $test2 = systemctl is-enabled systemd-timesyncd
        $test3 = grep -E "^(server|pool)" /etc/chrony/chrony.conf
        $test4 = ps -ef | grep chronyd | grep "_chrony"
        if($test1 -match "package 'ntp' is not installed" -and $test2 -match "masked" -and $test3 -ne $null -and $test4 -ne $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.1.4"
    Task = "Ensure ntp is configured"
    Test = {
        $test1 = dpkg -s chrony | grep -E '(Status:|not installed)'
        $test2 = systemctl is-enabled systemd-timesyncd
        $test3 = grep "^restrict" /etc/ntp.conf | grep "restrict -4 default kod nomodify notrap nopeer noquery"
        $test4 = grep "^restrict" /etc/ntp.conf | grep "restrict -6 default kod nomodify notrap nopeer noquery"
        $test5 = grep -E "^(server|pool)" /etc/ntp.conf
        $test6 = grep "RUNASUSER=ntp" /etc/init.d/ntp
        if($test1 -match "package 'ntp' is not installed" -and $test2 -match "masked" -and $test3 -ne $null -and $test4 -ne $null -and $test5 -ne $null -and $test6 -match "RUNASUSER=ntp"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.2"
    Task = "Ensure X Window System is not installed"
    Test = {
        $test1 = dpkg -l xserver-xorg* | grep 'ii '
        if($test1 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.3"
    Task = "Ensure Avahi Server is not installed"
    Test = {
        $test1 = dpkg -s avahi-daemon | grep -E '(Status:|not installed)'
        if($test1 -match "package 'avahi-daemon' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.4"
    Task = "Ensure CUPS is not installed"
    Test = {
        $test1 = dpkg -s avahi-daemon | grep -E '(Status:|not installed)'
        if($test1 -match "package 'cups' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.5"
    Task = "Ensure DHCP Server is not installed"
    Test = {
        $test1 = dpkg -s isc-dhcp-server | grep -E '(Status:|not installed)'
        if($test1 -match "package 'isc-dhcp-server' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.6"
    Task = "Ensure LDAP server is not installed"
    Test = {
        $test1 = dpkg -s slapd | grep -E '(Status:|not installed)'
        if($test1 -match "package 'slapd' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.7"
    Task = "Ensure NFS is not installed"
    Test = {
        $test1 = dpkg -s nfs-kernel-server | grep -E '(Status:|not installed)'
        if($test1 -match "package 'nfs-kernel-server' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.8"
    Task = "Ensure DNS Server is not installed"
    Test = {
        $test1 = dpkg -s bind9 | grep -E '(Status:|not installed)'
        if($test1 -match "package 'bind9' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.9"
    Task = "Ensure FTP Server is not installed"
    Test = {
        $test1 = dpkg -s vsftpd | grep -E '(Status:|not installed)'
        if($test1 -match "package 'vsftpd' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.10"
    Task = "Ensure HTTP server is not installed"
    Test = {
        $test1 = dpkg -s apache2 | grep -E '(Status:|not installed)'
        if($test1 -match "package 'apache2' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.11"
    Task = "Ensure IMAP and POP3 server are not installed"
    Test = {
        $test1 = dpkg -s dovecot-imapd dovecot-pop3d | grep -E '(Status:|not installed)'
        if($test1 -match "package 'dovecot-imapd' is not installed" -and $test1 -match "package 'dovecot-pop3d' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.12"
    Task = "Ensure Samba is not installed"
    Test = {
        $test1 = dpkg -s samba | grep -E '(Status:|not installed)'
        if($test1 -match "package 'samba' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.13"
    Task = "Ensure HTTP Proxy Server is not installed"
    Test = {
        $test1 = dpkg -s squid | grep -E '(Status:|not installed)'
        if($test1 -match "package 'squid' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.14"
    Task = "Ensure SNMP Server is not installed"
    Test = {
        $test1 = dpkg -s snmpd | grep -E '(Status:|not installed)'
        if($test1 -match "package 'snmpd' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.15"
    Task = "Ensure mail transfer agent is configured for local-only mode"
    Test = {
        $test1 = ss -lntu | grep -E ':25\s' | grep -E -v '\s(127.0.0.1|::1):25\s'
        if($test1 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.16"
    Task = "Ensure rsync service is not installed"
    Test = {
        $test1 = dpkg -s rsync | grep -E '(Status:|not installed)'
        if($test1 -match "package 'rsync' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.1.17"
    Task = "Ensure NIS Server is not installed"
    Test = {
        $test1 = dpkg -s nis | grep -E '(Status:|not installed)'
        if($test1 -match "package 'nis' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.2.1"
    Task = "Ensure NIS Client is not installed"
    Test = {
        $test1 = dpkg -s nis | grep -E '(Status:|not installed)'
        if($test1 -match "package 'nis' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.2.2"
    Task = "Ensure rsh client is not installed"
    Test = {
        $test1 = dpkg -s rsh-client | grep -E '(Status:|not installed)'
        if($test1 -match "package 'rsh-client' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.2.3"
    Task = "Ensure talk client is not installed"
    Test = {
        $test1 = dpkg -s talk | grep -E '(Status:|not installed)'
        if($test1 -match "package 'talk' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.2.4"
    Task = "Ensure telnet client is not installed"
    Test = {
        $test1 = dpkg -s telnet | grep -E '(Status:|not installed)'
        if($test1 -match "package 'telnet' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.2.5"
    Task = "Ensure LDAP client is not installed"
    Test = {
        $test1 = dpkg -s ldap-utils | grep -E '(Status:|not installed)'
        if($test1 -match "package 'ldap-utils' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.2.6"
    Task = "Ensure RPC is not installed"
    Test = {
        $test1 = dpkg -s rpcbind | grep -E '(Status:|not installed)'
        if($test1 -match "package 'rpcbind' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "2.3"
    Task = "Ensure nonessential services are removed or masked"
    Test = {
        $test1 = lsof -i -P -n | grep -v "(ESTABLISHED)"
        if($test1 -ne $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.1.1"
    Task = "Disable IPv6"
    Test = {
        $test1 = sysctl net.ipv6.conf.all.disable_ipv6
        $test2 = sysctl net.ipv6.conf.default.disable_ipv6
        if($test1 -match "net.ipv6.conf.all.disable_ipv6 = 1" -and $test2 -match "net.ipv6.conf.default.disable_ipv6 = 1"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.1.2"
    Task = "Ensure wireless interfaces are disabled"
    Test = {
        bash "./3.1.2-Ensure wireless interfaces are disabled.sh"
        
        if($test1 -match "net.ipv6.conf.all.disable_ipv6 = 1" -and $test2 -match "net.ipv6.conf.default.disable_ipv6 = 1"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.2.1"
    Task = "Ensure packet redirect sending is disabled"
    Test = {
        $test1 = sysctl net.ipv4.conf.all.send_redirects
        $test2 = sysctl net.ipv4.conf.default.send_redirects
        $test3 = grep -E "^\s*net\.ipv4\.conf\.all\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*
        $test4 = grep -E "^\s*net\.ipv4\.conf\.default\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.conf.all.send_redirects = 0" -and $test2 -match "net.ipv4.conf.default.send_redirects = 0" -and $test3 -match "net.ipv4.conf.all.send_redirects = 0" -and $test4 -match "net.ipv4.conf.default.send_redirects= 0"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.2.2"
    Task = "Ensure IP forwarding is disabled"
    Test = {
        $test1 = sysctl net.ipv4.ip_forward
        $test2 = grep -E -s "^\s*net\.ipv4\.ip_forward\s*=\s*1" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf
        if($test1 -match "net.ipv4.ip_forward = 0" -and $test2 -eq $null){
            $test1 = sysctl net.ipv6.conf.all.forwarding
            $test2 = grep -E -s "^\s*net\.ipv6\.conf\.all\.forwarding\s*=\s*1" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf
            if($test1 -match "net.ipv6.conf.all.forwarding = 0" -and $test2 -eq $null){
                return @{
                    Message = "Compliant"
                    Status = "True"
                }
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.1"
    Task = "Ensure source routed packets are not accepted"
    Test = {
        $test1 = sysctl net.ipv4.conf.all.accept_source_route
        $test2 = sysctl net.ipv4.conf.default.accept_source_route
        $test3 = grep "net\.ipv4\.conf\.all\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*
        $test4 = grep "net\.ipv4\.conf\.default\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.conf.all.accept_source_route = 0" -and $test2 -match "net.ipv4.conf.default.accept_source_route = 0" -and $test3 -match "net.ipv4.conf.all.accept_source_route= 0" -and $test4 -match "net.ipv4.conf.default.accept_source_route= 0"){
            $test1 = sysctl net.ipv6.conf.all.accept_source_route
            $test2 = sysctl net.ipv6.conf.default.accept_source_route
            $test3 = grep "net\.ipv6\.conf\.all\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*
            $test4 = grep "net\.ipv6\.conf\.default\.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/*
            if($test1 -match "net.ipv6.conf.all.accept_source_route = 0" -and $test2 -match "net.ipv6.conf.default.accept_source_route = 0" -and $test3 -match "net.ipv4.conf.all.accept_source_route= 0" -and $test4 -match "net.ipv6.conf.default.accept_source_route= 0"){
                return @{
                    Message = "Compliant"
                    Status = "True"
                }
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.2"
    Task = "Ensure ICMP redirects are not accepted"
    Test = {
        $test1 = sysctl net.ipv4.conf.all.accept_redirects
        $test2 = sysctl net.ipv4.conf.default.accept_redirects
        $test3 = grep "net\.ipv4\.conf\.all\.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/*
        $test4 = grep "net\.ipv4\.conf\.default\.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.conf.all.accept_redirects = 0" -and $test2 -match "net.ipv4.conf.default.accept_redirects = 0" -and $test3 -match "net.ipv4.conf.all.accept_redirects= 0" -and $test4 -match "net.ipv4.conf.default.accept_redirects= 0"){
            $test1 = sysctl net.ipv6.conf.all.accept_redirects
            $test2 = sysctl net.ipv6.conf.default.accept_redirects
            $test3 = grep "net\.ipv6\.conf\.all\.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/*
            $test4 = grep "net\.ipv6\.conf\.default\.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/*
            if($test1 -match "net.ipv6.conf.all.accept_redirects = 0" -and $test2 -match "net.ipv6.conf.default.accept_redirects = 0" -and $test3 -match "net.ipv6.conf.all.accept_redirects= 0" -and $test4 -match "net.ipv6.conf.default.accept_redirects= 0"){
                return @{
                    Message = "Compliant"
                    Status = "True"
                }
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.3"
    Task = "Ensure secure ICMP redirects are not accepted"
    Test = {
        $test1 = sysctl net.ipv4.conf.all.secure_redirects
        $test2 = sysctl net.ipv4.conf.default.secure_redirects
        $test3 = grep "net\.ipv4\.conf\.all\.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/*
        $test4 = grep "net\.ipv4\.conf\.default\.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.conf.all.secure_redirects = 0" -and $test2 -match "net.ipv4.conf.default.secure_redirects = 0" -and $test3 -match "net.ipv4.conf.all.secure_redirects= 0" -and $test4 -match "net.ipv4.conf.default.secure_redirects= 0"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.4"
    Task = "Ensure suspicious packets are logged"
    Test = {
        $test1 = sysctl net.ipv4.conf.all.log_martians
        $test2 = sysctl net.ipv4.conf.default.log_martians
        $test3 = grep "net\.ipv4\.conf\.all\.log_martians" /etc/sysctl.conf /etc/sysctl.d/*
        $test4 = grep "net\.ipv4\.conf\.default\.log_martians" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.conf.all.log_martians = 1" -and $test2 -match "net.ipv4.conf.default.log_martians = 1" -and $test3 -match "net.ipv4.conf.all.log_martians = 1" -and $test4 -match "net.ipv4.conf.default.log_martians = 1"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.5"
    Task = "Ensure broadcast ICMP requests are ignored"
    Test = {
        $test1 = sysctl net.ipv4.icmp_echo_ignore_broadcasts
        $test2 = grep "net\.ipv4\.icmp_echo_ignore_broadcasts" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.icmp_echo_ignore_broadcasts = 1" -and $test2 -match "net.ipv4.icmp_echo_ignore_broadcasts = 1"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.6"
    Task = "Ensure bogus ICMP responses are ignored"
    Test = {
        $test1 = sysctl net.ipv4.icmp_ignore_bogus_error_responses
        $test2 = grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.icmp_ignore_bogus_error_responses = 1" -and $test2 -match "net.ipv4.icmp_ignore_bogus_error_responses = 1"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.7"
    Task = "Ensure Reverse Path Filtering is enabled"
    Test = {
        $test1 = sysctl net.ipv4.conf.all.rp_filter
        $test2 = sysctl net.ipv4.conf.default.rp_filter
        $test3 = grep "net\.ipv4\.conf\.all\.rp_filter" /etc/sysctl.conf /etc/sysctl.d/*
        $test4 = grep "net\.ipv4\.conf\.default\.rp_filter" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.conf.all.rp_filter = 1" -and $test2 -match "net.ipv4.conf.default.rp_filter = 1" -and $test3 -match "net.ipv4.conf.all.rp_filter = 1" -and $test4 -match "net.ipv4.conf.default.rp_filter = 1"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.8"
    Task = "Ensure TCP SYN Cookies is enabled"
    Test = {
        $test1 = sysctl net.ipv4.tcp_syncookies
        $test2 = grep "net\.ipv4\.tcp_syncookies" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv4.tcp_syncookies = 1" -and $test2 -match "net.ipv4.tcp_syncookies = 1"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.3.9"
    Task = "Ensure IPv6 router advertisements are not accepted"
    Test = {
        $test1 = sysctl net.ipv6.conf.all.accept_ra
        $test2 = sysctl net.ipv6.conf.default.accept_ra
        $test3 = grep "net\.ipv6\.conf\.all\.accept_ra" /etc/sysctl.conf /etc/sysctl.d/*
        $test4 = grep "net\.ipv6\.conf\.default\.accept_ra" /etc/sysctl.conf /etc/sysctl.d/*
        if($test1 -match "net.ipv6.conf.all.accept_ra = 0" -and $test2 -match "net.ipv6.conf.default.accept_ra = 0" -and $test3 -match "net.ipv6.conf.all.accept_ra = 0" -and $test4 -match "net.ipv6.conf.default.accept_ra = 0"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.4.1"
    Task = "Ensure DCCP is disabled"
    Test = {
        $test1 = modprobe -n -v dccp
        $test2 = lsmod | grep dccp
        if($test1 -match "install /bin/true" -and $test2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.4.2"
    Task = "Ensure SCTP is disabled"
    Test = {
        $test1 = modprobe -n -v sctp | grep -E '(sctp|install)'
        $test2 = lsmod | grep sctp
        if($test1 -match "install /bin/true" -and $test2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.4.3"
    Task = "Ensure RDS is disabled"
    Test = {
        $test1 = modprobe -n -v rds
        $test2 = lsmod | grep rds
        if($test1 -match "install /bin/true" -and $test2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.4.4"
    Task = "Ensure TIPC is disabled"
    Test = {
        $test1 = modprobe -n -v tipc | grep -E '(tipc|install)'
        $test2 = lsmod | grep tipc
        if($test1 -match "install /bin/true" -and $test2 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.1.1"
    Task = "Ensure ufw is installed"
    Test = {
        $test1 = dpkg -s ufw | grep 'Status: install'
        if($test1 -match "Status: install ok installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.1.2"
    Task = "Ensure iptables-persistent is not installed with ufw"
    Test = {
        $test1 = dpkg-query -s iptables-persistent
        if($test1 -match "'iptables-persistent' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.1.3"
    Task = "Ensure ufw service is enabled"
    Test = {
        $test1 = systemctl is-enabled ufw
        $test2 = ufw status | grep Status
        if($test1 -match "enabled" -and $test2 -match "Status: active"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.1.4"
    Task = "Ensure ufw loopback traffic is configured"
    Test = {
        $test1 = ufw status verbose
        if($test1 -notmatch "Status: inactive"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.1.5"
    Task = "Ensure ufw outbound connections are configured"
    Test = {
        $test1 = ufw status numbered
        if($test1 -notmatch "Status: inactive"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.1.7"
    Task = "Ensure ufw default deny firewall policy"
    Test = {
        $test1 = ufw status verbose
        if($test1 -match "deny" -or $test1 -match "reject"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.1"
    Task = "Ensure nftables is installed"
    Test = {
        $test1 = dpkg-query -s nftables | grep 'Status: install ok installed'
        if($test1 -match "Status: install ok installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.2"
    Task = "Ensure ufw is uninstalled or disabled with nftables"
    Test = {
        $test1 = dpkg-query -s ufw | grep 'Status: install ok installed'
        if($test1 -match "package 'ufw' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.3"
    Task = "Ensure iptables are flushed with nftables"
    Test = {
        $test1 = iptables -L
        $test2 = ip6tables -L
        if($test1 -notmatch "target" -and $test2 -notmatch "target"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.4"
    Task = "Ensure a nftables table exists"
    Test = {
        $test1 = nft list tables
        if($test1 -match "table"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.5"
    Task = "Ensure nftables base chains exist"
    Test = {
        $test1 = nft list ruleset | grep 'hook input'
        $test2 = nft list ruleset | grep 'hook forward'
        $test3 = nft list ruleset | grep 'hook output'
        if($test1 -match "type filter hook input priority 0;" -and $test2 -match "type filter hook forward priority 0;" -and $test3 -match "type filter hook output priority 0;"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.6"
    Task = "Ensure nftables loopback traffic is configured"
    Test = {
        $test1 = nft list ruleset | awk '/hook input/,/}/' | grep 'iif "lo" accept'
        $test2 = nft list ruleset | awk '/hook input/,/}/' | grep 'ip saddr'
        if($test1 -match 'iif "lo" accept' -and $test2 -match "ip saddr 127.0.0.0/8 counter packets 0 bytes 0 drop"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.7"
    Task = "Ensure nftables outbound and established connections are configured"
    Test = {
        $test1 = nft list ruleset | awk '/hook input/,/}/' | grep -E 'ip protocol (tcp|udp|icmp) ct state'
        $test2 = nft list ruleset | awk '/hook output/,/}/' | grep -E 'ip protocol (tcp|udp|icmp) ct state'
        if($test1 -match "ip protocol tcp ct state established accept" -and $test1 -match "p protocol udp ct state established accept" -and $test1 -match "ip protocol icmp ct state established accept" -and $test2 -match "ip protocol tcp ct state established,related,new accep" -and $test2 -match "ip protocol udp ct state established,related,new accept" -and $test2 -match "ip protocol icmp ct state established,related,new accept"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.8"
    Task = "Ensure nftables default deny firewall policy"
    Test = {
        $test1 = nft list ruleset | grep 'hook input'
        $test2 = nft list ruleset | grep 'hook forward'
        $test3 = nft list ruleset | grep 'hook output'
        if($test1 -match "policy drop" -and $test2 -match "policy drop" -and $test3 -match "policy drop"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.2.9"
    Task = "Ensure nftables service is enabled"
    Test = {
        $test1 = systemctl is-enabled nftables
        if($test1 -match "enabled"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
# [AuditTest] @{
#     Id = "3.5.2.10"
#     Task = "Ensure nftables rules are permanent"
#     Test = {
#         $test1 = [ -n "$(grep -E '^\s*include' /etc/nftables.conf)" ] && awk '/hook input/,/}/' $(awk '$1 ~ /^\s*include/ { gsub("\"","",$2); print $2 }' /etc/nftables.conf)
#         if($test1 -match "enabled"){
#             return @{
#                 Message = "Compliant"
#                 Status = "True"
#             }
#         }
#         return @{
#             Message = "Not-Compliant"
#             Status = "False"
#         }
#     }
# }
[AuditTest] @{
    Id = "3.5.3.1.1"
    Task = "Ensure iptables packages are installed"
    Test = {
        $test1 = apt list iptables iptables-persistent | grep installed
        if($test1 -match "iptables-persistent" -and $test1 -match "iptables"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.3.1.2"
    Task = "Ensure nftables is not installed with iptables"
    Test = {
        $test1 = dpkg -s nftables
        if($test1 -match "package 'nftables' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.3.1.3"
    Task = "Ensure ufw is uninstalled or disabled with iptables"
    Test = {
        $test1 = dpkg-query -s ufw
        $test2 = ufw status
        $test3 = systemctl is-enabled ufw
        if($test1 -match "package 'ufw' is not installed" -and $test2 -match "Status: inactive" -and $test3 -match "masked"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.3.2.3"
    Task = "Ensure iptables default deny firewall policy"
    Test = {
        $test1 = iptables -L
        if(($test1 -match "Chain INPUT (policy DROP)" -or $test1 -match "Chain INPUT (policy REJECT)") -and ($test1 -match "Chain FORWARD (policy DROP)" -or $test1 -match "Chain FORWARD (policy REJECT)") -and ($test1 -match "Chain OUTPUT (policy DROP)" -or $test1 -match "Chain OUTPUT (policy REJECT)")){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "3.5.3.3.3"
    Task = "Ensure ip6tables default deny firewall policy"
    Test = {
        $test1 = ip6tables -L
        if(($test1 -match "Chain INPUT (policy DROP)" -or $test1 -match "Chain INPUT (policy REJECT)") -and ($test1 -match "Chain FORWARD (policy DROP)" -or $test1 -match "Chain FORWARD (policy REJECT)") -and ($test1 -match "Chain OUTPUT (policy DROP)" -or $test1 -match "Chain OUTPUT (policy REJECT)")){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.1.1"
    Task = "Ensure auditd is installed"
    Test = {
        $test1 = dpkg -s auditd audispd-plugins
        if($test1 -notmatch "package 'auditd' is not installed"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.1.2"
    Task = "Ensure auditd service is enabled"
    Test = {
        $test1 = systemctl is-enabled auditd
        if($test1 -match "enabled"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.1.3"
    Task = "Ensure auditing for processes that start prior to auditd is enabled"
    Test = {
        $test1 = grep "^\s*linux" /boot/grub/grub.cfg | grep -v "audit=1"
        if($test1 -eq $null){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.1.4"
    Task = "Ensure audit_backlog_limit is sufficient"
    Test = {
        $test1 = grep "^\s*linux" /boot/grub/grub.cfg | grep -v "audit_backlog_limit="
        $test2 = grep "audit_backlog_limit=" /boot/grub/grub.cfg
        if($test1 -eq $null -and $test2 -ge 8192){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.2.1"
    Task = "Ensure audit log storage size is configured"
    Test = {
        $test1 = grep max_log_file /etc/audit/auditd.conf
        if($test1 -match "max_log_file"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.2.2"
    Task = "Ensure audit logs are not automatically deleted"
    Test = {
        $test1 = grep max_log_file_action /etc/audit/auditd.conf
        if($test1 -match "max_log_file_action = keep_logs"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.2.3"
    Task = "Ensure system is disabled when audit logs are full"
    Test = {
        $test1 = grep space_left_action /etc/audit/auditd.conf
        $test2 = grep action_mail_acct /etc/audit/auditd.conf
        $test3 = grep admin_space_left_action /etc/audit/auditd.conf
        if($test1 -match "space_left_action = email" -and $test2 -match "action_mail_acct = root" -and $test3 -match "admin_space_left_action = halt"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.2.3"
    Task = "Ensure system is disabled when audit logs are full"
    Test = {
        $test1 = grep space_left_action /etc/audit/auditd.conf
        $test2 = grep action_mail_acct /etc/audit/auditd.conf
        $test3 = grep admin_space_left_action /etc/audit/auditd.conf
        if($test1 -match "space_left_action = email" -and $test2 -match "action_mail_acct = root" -and $test3 -match "admin_space_left_action = halt"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.3"
    Task = "Ensure events that modify date and time information are collected"
    Test = {
        $test1 = grep time-change /etc/audit/rules.d/*.rules
        $test2 = auditctl -l | grep time-change
        $test3 = grep time-change /etc/audit/rules.d/*.rules
        $test4 = auditctl -l | grep time-change
        if($test1 -match "-a always,exit -F arch=b32 -S adjtimex -S settimeofday -S stime -k time-
        change
        -a always,exit -F arch=b32 -S clock_settime -k time-change
        -w /etc/localtime -p wa -k time-change" -and $test2 -match "-a always,exit -F arch=b32 -S stime,settimeofday,adjtimex -F key=time-change
        -a always,exit -F arch=b32 -S clock_settime -F key=time-change
        -w /etc/localtime -p wa -k time-change" -and $test3 -match "-a always,exit -F arch=b64 -S adjtimex -S settimeofday -k time-change
        -a always,exit -F arch=b32 -S adjtimex -S settimeofday -S stime -k time-
        change
        -a always,exit -F arch=b64 -S clock_settime -k time-change
        -a always,exit -F arch=b32 -S clock_settime -k time-change
        -w /etc/localtime -p wa -k time-change" -and $test4 -match "-a always,exit -F arch=b64 -S adjtimex,settimeofday -F key=time-change
        -a always,exit -F arch=b32 -S stime,settimeofday,adjtimex -F key=time-change
        -a always,exit -F arch=b64 -S clock_settime -F key=time-change
        -a always,exit -F arch=b32 -S clock_settime -F key=time-change
        -w /etc/localtime -p wa -k time-change"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.4"
    Task = "Ensure events that modify user/group information are collected"
    Test = {
        $test1 = grep identity /etc/audit/rules.d/*.rules
        $test2 = auditctl -l | grep identity
        if($test1 -match "-w /etc/group -p wa -k identity
        -w /etc/passwd -p wa -k identity
        -w /etc/gshadow -p wa -k identity
        -w /etc/shadow -p wa -k identity
        -w /etc/security/opasswd -p wa -k identity" -and $test2 -match "-w /etc/group -p wa -k identity
        -w /etc/passwd -p wa -k identity
        -w /etc/gshadow -p wa -k identity
        -w /etc/shadow -p wa -k identity
        -w /etc/security/opasswd -p wa -k identity"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}
[AuditTest] @{
    Id = "4.1.4"
    Task = "Ensure events that modify user/group information are collected"
    Test = {
        $test1 = grep identity /etc/audit/rules.d/*.rules
        $test2 = auditctl -l | grep identity
        if($test1 -match "-w /etc/group -p wa -k identity
        -w /etc/passwd -p wa -k identity
        -w /etc/gshadow -p wa -k identity
        -w /etc/shadow -p wa -k identity
        -w /etc/security/opasswd -p wa -k identity" -and $test2 -match "-w /etc/group -p wa -k identity
        -w /etc/passwd -p wa -k identity
        -w /etc/gshadow -p wa -k identity
        -w /etc/shadow -p wa -k identity
        -w /etc/security/opasswd -p wa -k identity"){
            return @{
                Message = "Compliant"
                Status = "True"
            }
        }
        return @{
            Message = "Not-Compliant"
            Status = "False"
        }
    }
}