# setup-vm-cookbook

Centosに必要なパッケージをインストールします。例えば`tmux`、`git`などです。

## Supported Platforms

- Centos7

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['setup-vm']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### setup-vm::default

Include `setup-vm` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[setup-vm::default]"
  ]
}
```

## License and Authors

Author:: Wang Zhijun
