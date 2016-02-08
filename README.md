# nr-coreos-manage
A generic collection of scripts to assist in managing coreos environments.

How to:
```
  docker run --rm -ti -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK cpnilly/nr-coreos-manage
```
