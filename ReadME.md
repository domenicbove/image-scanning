# OpenShift Image Scanner

Setup:

```
oc new-project scanner
oc create sa imagemanager
oc adm policy add-scc-to-user anyuid -z imagemanager
oc adm policy add-scc-to-user privileged -z imagemanager
```
To build image
```
oc process -f bctemplate.yml | oc create -f -
```
After build completes, to run pod
```
oc process -f podtemplate.yml | oc create -f -
```
