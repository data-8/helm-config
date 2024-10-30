How to deploy summer data8/data8r. This will be obsolete within a week or so.

```
$ git clone git@github.com:jupyterhub/helm-chart.git
 
$ git clone git@github.com:data-8/helm-config.git
 
$ git clone git@github.com:data-8/helm-config-private.git
 
$ scp doc-10.haas.berkeley.edu:/etc/kubernetes/admin somewhere/kube.conf
 
# edit kube.conf to have "kubernetes" instead of "localhost"
 
# add "127.0.0.1 kubernetes" to /etc/hosts
 
$ export KUBECONFIG=somewhere/kube.conf
 
$ ssh -N -L 6443:10.1.1.230:6443 doc-10.haas.berkeley.edu
 
$ helm upgrade data8 ./helm-chart/jupyterhub -f helm-config/summer17/data8/config.yaml -f helm-config-private/summer17/data8/secret.yaml
```

When this repository was archived there was an open issue by Yuvi Panda to set memory limits and guarantees for all courses. The current guarantee is implictly 1G. 
