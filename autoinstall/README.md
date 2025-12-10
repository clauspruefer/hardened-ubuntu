# Autoinstall Remarks

This `README.md` provides some useful tips enhancing the autoinstall process.

## User Based Configuration

The following must be added to `autointsall.yaml` (root node) to provide system user
based settings.

```yaml
user-data:
    users:
      - name: user1
        groups: sudo, users, admin
      - name: user2
        groups: users
    late-commands:
      - usermod -a -G docker user2
```

## Network Configuration / Netplan

In multi NIC setup environments it is also advisable to configure the netplan networking
inside `autoinstall.yaml`.
