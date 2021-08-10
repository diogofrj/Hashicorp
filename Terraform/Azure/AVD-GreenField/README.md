
dsregcmd /status

;targetisaadjoined:i:1

Role: 	
Virtual Machine Administrator Login 

SecPool
Network security: Allow PKU2U authentication requests to this computer to use online identities.

PS C:\Windows\system32> dsregcmd /status

+----------------------------------------------------------------------+
| Device State                                                         |
+----------------------------------------------------------------------+

             AzureAdJoined : YES
          EnterpriseJoined : NO
              DomainJoined : NO
               Device Name : TEST-0

+----------------------------------------------------------------------+
| Device Details                                                       |
+----------------------------------------------------------------------+

                  DeviceId : 94300356f6eaf797
                Thumbprint : 74EE90DF3B9031E5DE85
 DeviceCertificateValidity : [ 2021-08-10 04:59:28.000 UTC -- 2031-08-10 05:29:28.000 UTC ]
            KeyContainerId : 12e5bd58-2c25-4cb7-8c06-8736c04fcee2
               KeyProvider : Microsoft Software Key Storage Provider
              TpmProtected : NO
          DeviceAuthStatus : SUCCESS

+----------------------------------------------------------------------+
| SSO State                                                            |
+----------------------------------------------------------------------+

                AzureAdPrt : YES
      AzureAdPrtUpdateTime : 2021-08-10 06:03:27.000 UTC
      AzureAdPrtExpiryTime : 2021-08-24 06:04:03.000 UTC
       AzureAdPrtAuthority : https://login.microsoftonline.com/5111b6c6-d49c-4f30-ae94-f32f6a0e053c
             EnterprisePrt : NO
    EnterprisePrtAuthority :

+----------------------------------------------------------------------+
| Diagnostic Data                                                      |
+----------------------------------------------------------------------+

        AadRecoveryEnabled : NO
    Executing Account Name : AzureAD\AzureAdmin, azure@diogofernandes.net
               KeySignTest : PASSED


For more information, please visit https://www.microsoft.com/aadjerrors