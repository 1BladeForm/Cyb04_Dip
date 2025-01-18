# Установка Wazuh с помощью Docker Compose

Этот документ описывает процесс установки и запуска Wazuh с использованием Docker Compose.

## Предварительные требования

Перед началом убедитесь, что на вашей системе установлены:

- **Git**
- **Ubuntu** (поддерживаются версии 20.04 и выше)

## Шаги установки

### 1. Обновление системы и установка необходимых пакетов

Выполните следующие команды для обновления системы и установки Docker:
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
curl -L "https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo apt update
sudo apt install -y docker-ce 
```

### 2. Клонирование репозитория

Клонируйте репозиторий Wazuh Docker Compose:
```bash
git clone https://github.com/wazuh/wazuh-docker.git
cd wazuh-docker
git checkout v4.9.2
```

### 3. Генерация сертификатов для Wazuh Indexer

Перейдите в директорию `single-node` и запустите генерацию сертификатов:
```bash
cd single-node
docker-compose -f generate-indexer-certs.yml run --rm generator
```
![Certs](https://i.imgur.com/0JZ4D9B.png)


### 4. Запуск Docker Compose

Для запуска всех сервисов выполните:
```bash
docker-compose up -d
```
![Last](https://i.imgur.com/ZMCngM2.png)

Эта команда запустит следующие контейнеры:
- Wazuh Manager
- Wazuh Indexer (ElasticSearch)
- Wazuh Dashboard (Kibana)

### 5. Проверка состояния контейнеров

Убедитесь, что все контейнеры работают корректно:
```bash
docker compose ps
```

Если контейнеры не запускаются, используйте логи для диагностики:
```bash
docker compose logs -f
```

### 6. Доступ к Dashboard

После запуска, откройте браузер и перейдите по адресу:
```
https://locahost.com
```

Войдите, используя учетные данные по умолчанию:
- **Имя пользователя**: `admin`
- **Пароль**: `SecretPassword`

**Важно:** Измените пароль после первого входа в систему.
![end](https://i.imgur.com/AUaVH44.png)

### Остановка контейнеров

Для остановки всех контейнеров выполните:
```bash
docker compose down
```

### Перезапуск контейнеров

Для перезапуска используйте:
```bash
docker compose restart
```

