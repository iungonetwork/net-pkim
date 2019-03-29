# Public key infrastructure manager #
This service is intended for internal use of IUNGO network, it has no authentication/authorization control.
This is a part of IUNGO network services and is not intended to run as standalone service.

## Setup ##
Mount PKI data volume on /pki and initialize it with pkim-init command. Customize CA configuration in /pki/ca.conf and run pkim-genroot command to generate root certificate. Issue certificates with pkim-issue command.