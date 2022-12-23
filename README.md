[0.4] What are computer ports on a high level? How many ports are there on a typical computer? 
Порт - это виртуальная точка, где начинаются и заканчиваются сетевые подключения. Порты основаны на программном обеспечении и управляются операционной системой компьютера. Каждый порт связан с определенным процессом или службой. Порты позволяют компьютерам легко различать различные виды трафика: например, электронные письма отправляются на другой порт, чем веб-страницы, даже если оба они поступают на компьютер через одно и то же интернет-соединение. В компьютере точное количество портов – 65 535. И ух них есть своя градация. То есть порты с номерами до 1023 Линукс и Unix-подобными ОС считаются за «критически важные» для сетевой деятельности системы, так что для доступа к ним и службам, с ними связанными часто требуются root права.
[0.4] What is the difference between http, https, ssh, and other protocols? In what sense are they similar? Name default ports for several data transfer protocols. 
И ssh, и HTTP являются протоколами для связи между клиентом и сервером.Ниже приведены основные различия между SSH и HTTP.
SSH означает “Защищенная оболочка”. Он имеет встроенную систему аутентификации по имени пользователя / паролю для установления соединения. Он использует порт 22 для выполнения процесса согласования или аутентификации для подключения. Аутентификация удаленной системы осуществляется с использованием криптографии с открытым ключом и, при необходимости, позволяет удаленному компьютеру аутентифицировать пользователей.

HTTP означает протокол передачи гипертекста. HTTP является базовым протоколом, используемым всемирной паутиной, и этот протокол определяет, как форматируются и передаются сообщения, и какие действия веб-серверы и браузеры должны предпринимать в ответ на различные команды. Основное различие между протоколами HTTP и HTTPS заключается в том, что HTTP не является безопасным, тогда как HTTPS - это безопасный протокол, который использует сертификат TLS / SSL для обеспечения аутентификации.

[0.4] Explain briefly: (1) what is IP, (2) what IPs are called 'white'/public, (3) and what happens when you enter 'google.com' into the web browser.
IP означает «Интернет-протокол» – набор правил, регулирующих формат данных, отправляемых через интернет или локальную сеть. По сути, IP-адрес – это идентификатор, позволяющий передавать информацию между устройствами в сети: он содержит информацию о местоположении устройства и обеспечивает его доступность для связи.
Публичным IP-адресом называется IP-адрес, который используется для выхода в Интернет. Публичные (глобальные) IP-адреса маршрутизируются в Интернете, в отличие от частных адресов. Наличие публичного позволяет организовать собственный сервер (VPN, FTP, WEB и др.), удаленный доступ к компьютеру, камерам видеонаблюдения, и получить к ним доступ из любой точки глобальной сети. С "белым" IP-адресом можно организовать любой собственный домашний сервер для публикации его в сети Интернет: веб (HTTP), VPN (L2TP/IPSec, PPTP, IPSec, OpenVPN, WireGuard), медиа (аудио/видео), FTP, сетевой накопитель NAS, игровой сервер и т.д.
Кгда мы нажимаем клавишу «g», браузер получает событие и запускается механизм автоподстановки. В качестве некой нулевой точки можно выбрать момент, когда клавиша Enter на клавиатуре нажата до конца и находится в нижнем положении. В этой точке замыкается электрическая цепь этой клавиши и небольшое количество тока отправляется по электросхеме клавиатуры, которая сканирует состояние каждого переключателя клавиши и конвертирует сигнал в целочисленный код клавиши (в данном случае — 13). Затем контроллер клавиатуры конвертирует код клавиши для передачи его компьютеру. Клавиатура отправляет сигналы в свою «линию запросов прерываний» (IRQ), которая затем сопоставляется с «вектором прерывания» (целое число) контроллером прерываний. Процессор использует «таблицу дескрипторов прерываний» (IDT) для сопоставления векторов прерываний с функциями («обработчики прерываний») ядра. Когда появляется прерывание, процессор (CPU) обновляет IDT вектором прерывания и запускает соответствующий обработчик. Таким образом, в дело вступает ядро. Дальше происходит парсинг URL. Информация об URL у браузера: Protocol «HTTP» (использовать «Hyper Text Transfer Protocol»), Resource «/» (показать главную (индексную) страницу). Браузер проверяет список «предзагруженных HSTS (HTTP Strict Transport Security)». Это список сайтов, которые требуют, чтобы к ним обращались только по HTTPS. Если нужный сайт есть в этом списке, то браузер отправляет ему запрос через HTTPS вместо HTTP. В противном случае, начальный запрос посылается по HTTP. (При этом сайт может использовать политику HSTS, но не находиться в списке HSTS — в таком случае на первый запрос по HTTP будет отправлен ответ о том, что необходимо отправлять запросы по HTTPS. Браузер проверяет имя хоста на наличие символов, отличных от a-z, A-Z, 0-9, -, или .. Браузер проверяет наличие домена в своём кэше. Если домена там нет, то браузер вызывает библиотечную функцию gethostbyname (отличается в разных ОС) для поиска нужного адреса. Прежде, чем искать домен по DNS gethostbyname пытается найти нужный адрес в файле hosts (его расположение отличается в разных ОС). Если домен нигде не закэширован и отсутствует в файле hosts, gethostbyname отправляет запрос к сетевому DNS-серверу. Как правило, это локальный роутер или DNS-сервер интернет-провайдера. Если DNS-сервер находится в той же подсети, то ARP-запрос отправляется этому серверу. Если DNS-сервер находится в другой подсети, то ARP-запрос отправляется на IP-адрес шлюза по умолчанию (default gateway). Для того, чтобы отправить широковещательный ARP-запрос необходимо отыскать целевой IP-адрес, а также знать MAC-адрес интерфейса, который будет использоваться для отправки ARP-запроса. Кэш ARP проверяется для каждого целевого IP-адреса — если адрес есть в кэше, то библиотечная функция возвращает результат: Target IP = MAC.
Если же записи в кэше нет:

Проверяется таблица маршрутизации — это делается для того, чтобы узнать, есть ли искомый IP-адрес в какой-либо из подсетей локальной таблицы. Если он там, то запрос посылается с помощью интерфейса, связанного с этой подсетью. Если адрес в таблице не обнаружен, то используется интерфейс подсети шлюза по умолчанию. Определяется MAC-адрес выбранного сетевого интерфейса. Отправляется ARP-запрос (второй уровень стека). Теперь у сетевой библиотеки есть IP-адрес либо DNS-сервера либо шлюза по умолчанию, который можно использовать для разрешения доменного имени:

Порт 53 открывается для отправки UDP-запроса к DNS-серверу (если размер ответа слишком велик, будет использован TCP). Если локальный или на стороне провайдера DNS-сервер «не знает» нужный адрес, то запрашивается рекурсивный поиск, который проходит по списку вышестоящих DNS-серверов, пока не будет найдена SOA-запись, а затем возвращается результат. Когда браузер получает IP-адрес конечного сервера, то он берёт эту информацию и данные об используемом порте из URL (80 порт для HTTP, 443 для HTTPS) и осуществляет вызов функции socket системной библиотеки и запрашивает поток TCP сокета — AF_INET и SOCK_STREAM.

[0.4] What is Nginx? How does it work on the high level? List several alternative web servers. 
nginx — это HTTP-сервер и обратный прокси-сервер, почтовый прокси-сервер, а также TCP/UDP прокси-сервер общего назначения. NGINX использует модель с фиксированным числом процессов, которая наиболее эффективно задействует доступные ресурсы системы: Единственный мастер-процесс выполняет операции, которые требуют повышенных прав, такие, как чтение конфигурации и открытие портов, а затем порождает небольшое число дочерних процессов (следующие три типа). Загрузчик кэша запускается на старте чтобы загрузить данные кэша, расположенные на диске, в оперативную память, а затем завершается. Его работа спланирована так, чтобы не потреблять много ресурсов. Кэш-менеджер просыпается периодически и удаляет объекты кэша с жесткого диска, чтобы поддерживать его объем в рамках заданного ограничения. Рабочие процессы выполняют всю работу. Они обрабатывают сетевые соединения, читают данные с диска и пишут на диск, общаются с бэкенд-серверами. HAProxy, HashiCorp Consul, G2 Deals, Traefik.
[0.4] What is SSH, and for what is it typically used? Explain two ways to authenticate in an SSH server in detail. 
SSH (Secure SHell - защищенная оболочка) — сетевой протокол прикладного уровня, предназначеный для безопасного удаленного доступа к UNIX-системам. Данный протокол эффективен тем, что шифрует всю передаваемую информацию по сети. По умолчанию, используется 22-й порт. В основном он нужен для удаленного управления данными пользователя на сервере, запуска служебных команд, работы в консольном режиме с базами данных. Использование SSH подключения имеет ряд преимуществ: безопасная работа на удаленном сервере с использованием командной оболочки; использование разных алгоритмов шифрования (симметричного, асимметричного и хеширования); возможность безопасного использования любого сетевого протокола, что позволяет передавать по защищенному каналу файлы любого размера; использование шифрования для защиты передачи данных между хостом и клиентом.

[2] Create a new virtual machine in the Yandex/Mail/etc cloud (order at least 10GB of free disk space). 
Generate SSH key pair and use it to connect to your server. 
Создала вируальную машину: IP 95.163.180.207, ID 2f40ac9e-cb57-41c0-a94f-2fc6d53540db
[1] Download the latest human genome assembly (GRCh38) from the Ensemble FTP server (fasta, GFF3). 
Index the fasta using samtools (samtools faidx) and GFF3 using tabix.

#Загружаю

wget https://ftp.ensembl.org/pub/release-108/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz

wget https://ftp.ensembl.org/pub/release-108/gff3/homo_sapiens/Homo_sapiens.GRCh38.108.gff3.gz

#Индексирую fasta с помощью samtools

sudo apt-get install samtools

gzip -d Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz

samtools faidx Homo_sapiens.GRCh38.dna.primary_assembly.fa


#Индексирую GFF3 с помощью tabix

sudo apt-get install tabix

gzip -d Homo_sapiens.GRCh38.108.gff3.gz

(grep "^#" Homo_sapiens.GRCh38.108.gff3; grep -v "^#" Homo_sapiens.GRCh38.108.gff3 | sort -t"`printf '\t'`" -k1,1 -k4,4n) | bgzip > Homo_sapiens.GRCh38.108.sorted.gff3.gz

tabix -p gff Homo_sapiens.GRCh38.108.sorted.gff3.gz

[1] Select and download BED files for three ChIP-seq and one ATAC-seq experiment from the ENCODE (use one tissue/cell line). Sort, bgzip, and index them using tabix.
#ChIP-seq
wget -O AHR.bigBed "https://www.encodeproject.org/files/ENCFF334MKW/@@download/ENCFF334MKW.bigBed"
wget -O CLOCK.bigBed "https://www.encodeproject.org/files/ENCFF748BNP/@@download/ENCFF748BNP.bigBed"
wget -O NEUROD1.bigBed "https://www.encodeproject.org/files/ENCFF954FLR/@@download/ENCFF954FLR.bigBed"
#ATAC-seq
wget -O ATAC.bigBed "https://www.encodeproject.org/files/ENCFF995VVW/@@download/ENCFF995VVW.bigBed"

# Переводим файлы в более удобный формат
wget http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bigBedToBed
chmod a+x bigBedToBed
./bigBedToBed "AHR.bigBed" "AHR.bed"
./bigBedToBed "CLOCK.bigBed" "CLOCK.bed"
./bigBedToBed "NEUROD1.bigBed" "NEUROD1.bed"
./bigBedToBed "ATAC.bigBed" "ATAC.bed"

#Удаляю 'chr' из файлов
sed 's/chr//' AHR.bed > AHR_1.bed
sed 's/chr//' CLOCK.bed > CLOCK_1.bed
sed 's/chr//' NEUROD1.bed > NEUROD1_1.bed
sed 's/chr//' ATAC.bed > ATAC_1.bed

# Сортирую
sort -n -k2 AHR_1.bed -o AHR_sort.bed
sort -n -k2 CLOCK_1.bed -o CLOCK_sort.bed
sort -n -k2 NEIROD1_1.bed -o NEUROD1_sort.bed
sort -n -k2 ATAC_1.bed -o ATAC_sort.bed

# Запаковываю
bgzip -c AHR_sort.bed > AHR_sort.bed.gz
bgzip -c CLOCK_sort.bed > CLOCK_sort.bed.gz
bgzip -c NEUROD1_sort.bed > NEUROD1_sort.bed.gz
bgzip -c ATAC_sort.bed > ATAC_sort.bed.gz

# Индексирую
tabix -p bed AHR_sort_bed.gz
tabix -p bed CLOCK_sort_bed.gz
tabix -p bed NEUROD1_sort_bed.gz
tabix -p bed ATAC_sort_bed.gz

[1] Download and install JBrowse 2. Create a new jbrowse repository in /mnt/JBrowse/ (or some other folder).
Скачала и учтановила. Репрозиторий создала.

[0.25] Install nginx and amend its config(/etc/nginx/nginx.conf) to contain the following section:
# Дополнила файл через vim
![image](https://user-images.githubusercontent.com/119702267/209338830-da2c4f7b-96c2-4a9e-956e-8b7e355c512f.png)

[0.25] Restart the nginx (reload its config) and make sure that you can access the browser using a link like this: http://64.129.58.13/jbrowse/. Here 64.129.58.13 is your public IP address.
[1] Add your files to the genome browser and verify that everything works as intended. Don't forget to index the genome annotation, so you could later search by gene names.
