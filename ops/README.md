# Local immutable site publication

GitHub Actions stays disabled. Commit and push the reviewed source to this owned
repository. In the declared Ubuntu WSL/F-backed operator root, run:

`python3 -B ops/publish.py --repo "$PWD" --commit <full-commit> --service jtmb-dev --apply`

No host npm install is needed. The pinned, bounded existing BuildKit exports only
committed Dockerfile, static-site, nginx, package/lock and dependency-provenance
inputs, builds the owned site on maintained Nginx, and publishes through existing
`jtmb92/jtmb-dev:git-<full-commit>`. An existing immutable tag is never overwritten.
The Windows helper reads the existing Credential Manager entry into client memory
only; do not run its output into a terminal or save a credentials file. Exact
source/revision labels and remote manifest/config bytes are checked after push.

Build state, context, client config, temporary files and sockets use the same
existing declared F-backed task root. The new isolated builder has3GiB RAM,
zero swap,1.5CPU,512processes and2GiB allocated storage budget. Before starting,
C: and both F: filesystems must retain15GiB after the estimated stage. Existing
Docker defaults, cached images, other containers and Strata are not changed.
The publisher stops/removes only its own exact builder on exit. Reconcile its
inactive reproducible scratch using exact source/receipt/inode/FD/maps/mount and
container checks before completion; preserve the original repo, locks, failures,
registry/source/resource proofs and required runtime image. Never prune shared
images/volumes or use saved ad hoc image archives as deployment sources.

Scan the immutable digest and review its private branconet-charts image-only
change. Local validation -> validated -> Flux owns deployment. Check all site
assets, canonical/legacy script URLs, normal home/about content, strict TLS,
resource/Service/Ingress identities and a distinct Flux-managed restart. The
maintenance intentionally changes only the library/HTML/config items recorded in
the source manifest; the user's profile content/CSS/image/application JS remain.
Perform the normal browser acceptance after all remaining implementation. A
published image or successful scan alone is not deployment acceptance.

The clean-source check applies Windows checkout line-ending rules per command;
no Git/user setting or working file is normalized. Build inputs are exported from
raw immutable Git blobs, independent of working-tree CRLF representation.
