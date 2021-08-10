para os estudos de Vault será utilizado o GCP como solução de cloud


- Start vault personalizado    
```
    vault -autocomplete-install
    vault server -dev -dev-listen-address=0.0.0.0:8200 -dev-root-token-id=eivor
    vault kv list secret
    vault list secret/ 
```
- Criar chave
    vault kv put secret/eivor value=RAVEN
    vault kv put secret/eivor frase=RAVENS
- Consulta chave    
    vault kv get secret/eivor
    vault kv get -field=frase secret/eivor
    vault kv get -version=1 -field=value secret/eivor

    vault kv metadata get secret/eivor
    vault kv get -version=1 secret/eivor

- Delete key
    vault kv delete --versions 1 secret/eivor
    vault kv destroy --versions 1 secret/eivor

- Recupera Key    
    vault kv undelete --versions 1 secret/eivor


### habilitando secrets engine

    vault secrets enable -version=1 kv
    vault list kv
    vault kv put kv/opa ms=azure
    vault kv get kv/opa
    vault kv enable-versioning kv/
    vault kv metadata get kv/opa
    vault secrets enable -version=2 kv
    
### Azure

    vault secrets enable azure

    vault write azure/config \
        subscription_id=$AZURE_SUBSCRIPTION_ID \
        tenant_id=$AZURE_TENANT_ID \
        client_id=$AZURE_CLIENT_ID \
        client_secret=$AZURE_CLIENT_SECRET





# FIX ISSUES
### Corrigindo erro "client_loop: send disconnect: Broken pipe"

cat .ssh/config 
Host *
    ServerAliveInterval 20
    TCPKeepAlive no

