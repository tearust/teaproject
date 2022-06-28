GlueSQL (https://github.com/gluesql/gluesql) s a SQL database library written in Rust.

TEA Project uses GlueSQL as an embedded SQL database **inside** a [[State_Machine_Replica]]'s enclave. All data is stored in RAM only. The [[State_Machine]] keeps all SQL states consistent across all replicas.
