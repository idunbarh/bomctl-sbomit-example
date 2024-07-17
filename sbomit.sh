rm -Rf bomctl *.link

poetry run in-toto-run --step-name clone --use-dsse --products bomctl --signing-key functionary -- git clone https://github.com/bomctl/bomctl.git


poetry run in-toto-record start --step-name vendor-dependencies --use-dsse --signing-key functionary --materials bomctl 
cd bomctl || exit
go mod vendor
cd ..
poetry run in-toto-record stop --step-name vendor-dependencies --use-dsse --signing-key functionary --products bomctl/vendor


poetry run in-toto-record start --step-name build --use-dsse --signing-key functionary --materials bomctl 
go build -C bomctl -mod=vendor
poetry run in-toto-record stop --step-name build --use-dsse --signing-key functionary --products bomctl/bomctl


syft -o cyclonedx-json=bomctl.cdx.json bomctl/bomctl