FROM registry.access.redhat.com/rhel7/rhel
USER root
RUN yum --enablerepo="rhel-7-server-extras-rpms" --enablerepo="rhel-7-server-optional-rpms" -y install libassuan-devel \
  ostree-devel runc skopeo-containers openscap-utils scap-security-guide
RUN curl -o buildah-0.4.1.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/buildah/0.4/1.git9cbccf8.fc27/x86_64/buildah-0.4-1.git9cbccf8.fc27.x86_64.rpm && \
  rpm -ivh buildah-0.4.1.x86_64.rpm && yum -y install buildah && \
  rm buildah-0.4.1.x86_64.rpm
COPY storage.conf etc/containers/storage.conf
