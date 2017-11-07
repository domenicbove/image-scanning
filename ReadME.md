# OpenShift Image Scanner

Setup:

```
oc new-project scanner
oc create sa imagemanager
oc adm policy add-scc-to-user anyuid system:serviceaccount:scanner:imagemanager
```
To build image
```
oc process -f bctemplate.yml | oc create -f -
oc start-build image-scan-base --follow
```
To run pod
```
oc process -f podtemplate.yml | oc create -f -
```
