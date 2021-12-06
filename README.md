Sample illustration of invoking terraform from OCI Managed Build stage.
------------
🎌 Flow 

- Use OCI managed build pipeline.
- USe OCI Vault for storing sensitive informations.
- Use OCI terraform provider for OCI infra management.
- Use OCI S3 as a backed for terraform.

✅ Usage

- Create an object storage bucket.
- Clone the repo to your local laptop.

```
$ git clone https://github.com/RahulMR42/oci-build-with-terraform
```

- Encrypt the pem file with a password

```
$ cat actual_pemfile |openssl aes-256-cbc -a -salt -pass pass:<Your pem_key> >
```
- Declare the below variables to OCI vault as secrets

```
pem_key
fingreprint
tenancy_ocid
user_ocid
compartment_ocid
aws_access_key_id
aws_secret_access_key
```

- Fill the correct OCID values in toe build_spec.yaml.
- Update variables.tf according to the OCI region selected.
- Create a build pipeline and create a manage build 
- Its a sample execution with file storage.

🗨️ References

- OCI Devops  - https://docs.oracle.com/en-us/iaas/Content/devops/using/home.htm

- OCI Terraform references - https://registry.terraform.io/providers/hashicorp/oci/latest/docs

- OCI Terraform with S3 backend - https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformUsingObjectStore.htm

- OCI Object storage - https://docs.oracle.com/en-us/iaas/Content/Object/home.htm


ITs a Sample execution ,refer OCI documentations for necessary permissions /policies and others details.