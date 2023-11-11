## Reinforced-Concrete-Huff

Ports [Reinforced Concrete](https://eprint.iacr.org/2021/1038.pdf) Hash function (bn254 field) into Huff.

Provides full test parity with the existing implementation in [rust](https://extgit.iaik.tugraz.at/krypto/zkfriendlyhashzoo/-/blob/33fe9952682eca1337ac7f947b9ebe366faeda9c/plain_impls/src/reinforced_concrete/reinforced_concrete.rs)

> Note: This implementation consumes `24076` gas. 

## Deployments

| Network | Address                                    |
|---------|--------------------------------------------|
| Sepolia | [0x73F3A616C6958026F1730cb89d7e3D2221A6d5b9](./broadcast/ReinforcedConcrete.s.sol/11155111/run-latest.json) |

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Help

```shell
$ forge --help
```

## License

[The Unlicense](https://github.com/rymnc/reinforced-concrete-huff/blob/master/LICENSE)

## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._