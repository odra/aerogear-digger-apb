FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogYnVpbGRmYXJtLWFwYgppbWFnZTogZmVlZGhlbnJ5L2J1aWxkZmFybS1hcGIKZGVzY3Jp\
cHRpb246IFRoaXMgaXMgYSBzYW1wbGUgYXBwbGljYXRpb24gZ2VuZXJhdGVkIGJ5IGFwYiBpbml0\
CmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwKbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6\
IE1vYmlsZSBDSS9DRAogIGxvbmdEZXNjcmlwdGlvbjogIlRvIHVzZSB0aGUgTW9iaWxlIENJL0NE\
IHNlcnZpY2UgeW91IG11c3QgZmlyc3QgYWdyZWUgdG8gdGhlIEFuZHJvaWQgU0RLIExpY2Vuc2Ug\
QWdyZWVtZW50LiBCeSBjaGVja2luZyB0aGlzIGJveCB5b3UgYXJlIGFncmVlaW5nIHRvIHRoZSBB\
bmRyb2lkIFNvZnR3YXJlIERldmVsb3BtZW50IEtpdCBMaWNlbnNlIGFncmVlbWVudCB3aGljaCBj\
YW4gYmUgcmVhZCBhdCB0aGUgZm9sbG93aW5nIFVSTDogaHR0cHM6Ly9kZXZlbG9wZXIuYW5kcm9p\
ZC5jb20vc3R1ZGlvL3Rlcm1zLmh0bWxcblxuLiBJZiB0aGUgYm94IGlzIG5vdCBjaGVja2VkIHRo\
ZSBpbnN0YWxsZXIgd2lsbCB0YWtlIG5vIGFjdGlvbi4iCiAgY29uc29sZS5vcGVuc2hpZnQuaW8v\
aWNvbkNsYXNzOiBmb250LWljb24gaWNvbi1qZW5raW5zCnBsYW5zOgogIC0gbmFtZTogZGVmYXVs\
dAogICAgZGVzY3JpcHRpb246IEV4YW1wbGUgZGVzY3JpcHRpb24KICAgIGZyZWU6IFRydWUKICAg\
IG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczoKICAgIC0gbmFtZTogQU5EUk9JRF9MSUNFTlNF\
X0FHUkVFTUVOVAogICAgICBkZWZhdWx0OiBGYWxzZQogICAgICB0eXBlOiBib29sZWFuCiAgICAg\
IGRlc2NyaXB0aW9uOiAiWW91IG5lZWQgdG8gYWNjZXB0IHRoZSBBbmRyb2lkIFNvZnR3YXJlIERl\
dmVsb3BtZW50IEtpdCBMaWNlbnNlIGFncmVlbWVudCBpbiBvcmRlciB0byBjb250aW51ZS4iCiAg\
ICAgIHRpdGxlOiBBbmRyb2lkIFNESyBMaWNlbnNlIEFncmVlbWVudAogICAgICByZXF1aXJlZDog\
VHJ1ZQoK"




COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
