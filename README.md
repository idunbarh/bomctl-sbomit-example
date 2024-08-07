## Options for including url and secure hash as properties

### Option 1

``` json
      "properties": [
        {
          "name": "sbomit:attestation:urls:url:0",
          "value": "https://raw.githubusercontent.com/idunbarh/bomctl-sbomit-example/main/attestations/clone.210dcc50.link"
        },
        {
          "name": "sbomit:attestation:urls:hash:0",
          "value": "sha256:dfadd6d0597b16ae590345055ce74e3ea81d313ca4870514c797ce576d0dfae0"
        },
        {
          "name": "sbomit:attestation:urls:url:1",
          "value": "https://raw.githubusercontent.com/idunbarh/bomctl-sbomit-example/main/attestations/vendor-dependencies.210dcc50.link"
        },
        {
          "name": "sbomit:attestation:urls:hash:1",
          "value": "sha256:3e8631b9eca2cabcdc05422f98aa665669e05ef781a179e14b4a2d10f85883de"
        },
        {
          "name": "sbomit:attestation:urls:url:2",
          "value": "https://raw.githubusercontent.com/idunbarh/bomctl-sbomit-example/main/attestations/build.210dcc50.link"
        },
        {
          "name": "sbomit:attestation:urls:hash:2",
          "value": "sha256:e1d4cd362de112e54b4b6b730739cfd95f0ea6cdbe55a3fa059d17afed7aaca0"
        },
        {
          "name": "sbomit:attestation:contents",
          "value": "eyJwYXlsb2FkIjogImV5SmZkSGx3W...VcifV19"
        }
      ]
```

### Option 2

``` json
      "properties": [
        {
          "name": "sbomit:attestation:urls",
          "value": "sha256:dfadd6d0597b16ae590345055ce74e3ea81d313ca4870514c797ce576d0dfae0@https://raw.githubusercontent.com/idunbarh/bomctl-sbomit-example/main/attestations/clone.210dcc50.link,sha256:3e8631b9eca2cabcdc05422f98aa665669e05ef781a179e14b4a2d10f85883de@https://raw.githubusercontent.com/idunbarh/bomctl-sbomit-example/main/attestations/vendor-dependencies.210dcc50.link,sha256:e1d4cd362de112e54b4b6b730739cfd95f0ea6cdbe55a3fa059d17afed7aaca0@https://raw.githubusercontent.com/idunbarh/bomctl-sbomit-example/main/attestations/build.210dcc50.link"
        },
        {
          "name": "sbomit:attestation:contents",
          "value": "eyJwYXlsb2FkIjogImV5SmZkSGx3W...VcifV19"
        }
      ]
```

### Option 3

``` json
      "properties": [
        {
          "name": "sbomit:attestation:urls",
          "value": "e74e3ea81d313ca4870514c797...dcif3452"
        },
        {
          "name": "sbomit:attestation:contents",
          "value": "eyJwYXlsb2FkIjogImV5SmZkSGx3W...VcifV19"
        }
      ]
```
