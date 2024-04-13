# airflow環境構築

## docker-compose.yamlをダウンロード

```
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.9.0/docker-compose.yaml'
```

## セットアップ用スクリプトをダウンロードする
```
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.9.0/airflow.sh'
chmod +x airflow.sh
```

## セットアップを実行する
```
./airflow.sh info
```
## bashかpython容器に入る
```
./airflow.sh bash
./airflow.sh python
```

## clean up
```
docker compose down --volumes --rmi all
```