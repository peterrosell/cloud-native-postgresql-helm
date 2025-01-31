## Update chart's README.md
docs:
	helm-docs || \
		(echo "Please, install https://github.com/norwoodj/helm-docs first" && exit 1)


schema:
	helm schema-gen charts/cloud-native-postgresql/values.yaml > charts/cloud-native-postgresql/values.schema.json || \
		(echo "Please, run: helm plugin install https://github.com/karuppiah7890/helm-schema-gen.git" && exit 1)
