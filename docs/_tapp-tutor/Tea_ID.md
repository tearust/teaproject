Every TPM ships with a unique asymmetric key, called the *Endorsement Key* (EK), burned by the manufacturer. We refer to the public portion of this key as *EKPub* and the associated private key as *EKPriv*. Some TPM chips also have an EK certificate that is issued by the manufacturer for the EKPub. We refer to this cert as *EKCert*. TEA ID is the EKPub of TPM chip inside every TEA mining machine.

This ID cannot be modified or updated once the chip was built. The TEA machine manufacturor can register this TPM ID to our layer-1 blockchain. The registration process requires the TPM manufacturor's EKCert. Anyone can verify any TPM EKPub using such a EKCert.

For more detail go to [tpm_key_attestation ](https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/manage/component-updates/tpm-key-attestation)
