sudo buildah from registry.access.redhat.com/rhel7.4
sudo buildah mount rhel7.4-working-container
sudo oscap-chroot /var/lib/containers/storage/overlay/dafb9ee7e8f9a774242afae1c5dce5b357cb1dfcb020bed629092b0cf21e2bfe/merged oval eval --results oval-results.xml --report report.html /usr/share/xml/scap/ssg/content/ssg-rhel7-oval.xml
