# cdk-workshop-ts

## How to use

### Invoke shell command ```cp .sample.env .env```.

```
cp .sample.env .env
```

### Setup access key, secret key, region.

```
AWS_ACCESS_KEY_ID="AWS_ACCESS_KEY"
AWS_SECRET_ACCESS_KEY="SECRET_KEY"
AWS_DEFAULT_REGION="REGION"
```

### Invoke ```docker-compose build```.

```
docker-compose build
```

### Invoke ```docker-compose up -d``` or ```docker-compose up```.

```
docker-compose up -d
```

```
docker-compose up
```

### Invoke ```docker exec -it cdk_workshop_ts_app sh``` and go to inside a docker container.

```
docker exec -it cdk_workshop_ts_app sh
```

### Invoke ```cdk init sample-app --language typescript```.

```
cdk init sample-app --language typescript
```
