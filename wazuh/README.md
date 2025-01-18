# ��������� Wazuh � ������� Docker Compose

���� �������� ��������� ������� ��������� � ������� Wazuh � �������������� Docker Compose.

## ��������������� ����������

����� ������� ���������, ��� �� ����� ������� �����������:

- **Git**
- **Ubuntu** (�������������� ������ 20.04 � ����)

## ���� ���������

### 1. ���������� ������� � ��������� ����������� �������

��������� ��������� ������� ��� ���������� ������� � ��������� Docker:
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
curl -L "https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo apt update
sudo apt install -y docker-ce 
```

### 2. ������������ �����������

���������� ����������� Wazuh Docker Compose:
```bash
git clone https://github.com/wazuh/wazuh-docker.git
cd wazuh-docker
git checkout v4.9.2
```

### 3. ��������� ������������ ��� Wazuh Indexer

��������� � ���������� `single-node` � ��������� ��������� ������������:
```bash
cd single-node
docker-compose -f generate-indexer-certs.yml run --rm generator
```
![Certs](https://i.imgur.com/0JZ4D9B.png)


### 4. ������ Docker Compose

��� ������� ���� �������� ���������:
```bash
docker-compose up -d
```
![Last](https://i.imgur.com/ZMCngM2.png)

��� ������� �������� ��������� ����������:
- Wazuh Manager
- Wazuh Indexer (ElasticSearch)
- Wazuh Dashboard (Kibana)

### 5. �������� ��������� �����������

���������, ��� ��� ���������� �������� ���������:
```bash
docker compose ps
```

���� ���������� �� �����������, ����������� ���� ��� �����������:
```bash
docker compose logs -f
```

### 6. ������ � Dashboard

����� �������, �������� ������� � ��������� �� ������:
```
https://locahost.com
```

�������, ��������� ������� ������ �� ���������:
- **��� ������������**: `admin`
- **������**: `SecretPassword`

**�����:** �������� ������ ����� ������� ����� � �������.
![end](https://i.imgur.com/AUaVH44.png)

### ��������� �����������

��� ��������� ���� ����������� ���������:
```bash
docker compose down
```

### ���������� �����������

��� ����������� �����������:
```bash
docker compose restart
```

