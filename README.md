[0.5] What is Docker, and how it differs from dependencies management systems? From virtual machines? 
Docker — это платформа, которая позволяет упаковать в контейнер приложение со всем окружением и зависимостями, а затем доставить и запустить его в целевой системе.Главное отличие docker от виртуальной машины в том, что виртуальная машина виртуализирует аппаратные ресурсы, такие как процессор, память, системы input и output, а контейнеры виртуализируют только ОС.
[0.5] What are the advantages and disadvantages of using containers over other approaches? 
Плюсы: контейнеризорованное приложение не зависит от архитектуры или ресурсов хоста, возможность простого и линейного маштабирования, разработчик привязывает все компоненты и зависимости к приложению, что позволяет работать как цельным объектом, изолирование среды, послойность Минусы: необходима очень точная настройка, проблемы с удалением, потеря общей производительности, усложнение архитектуры, необходимость постоянной поддержки и сопровождения.
[0.5] Explain how Docker works: what are Dockerfiles, how are containers created, and how are they run and destroyed? 
Контейнер - оболочка, написанная поверх сисетмы. Контейнеры запускаются на основе образов. Images - шаблоны для чтения и создания контейнеров. Контейнеры читают образы и запускаются на их основе. Внутри контейнера могут быть получены, отредактированы и записаны данные, извлекаемые с помощью volumes. Создать контейнер можно с помощью команды docker build. Для создания необходим Dockerfile с описанием зависимостей. Docker запускается командой run.
[0.25] Name and describe at least one Docker competitor (i.e., a tool based on the same containerization technology).
Podman - чуть посложнее Docker, но зато спроектирован в соответствии с «философией Unix».
[0.25] What is conda? How it differs from apt, yarn, and others?
Conda– это менеджер пакетов для любого программного обеспечения (установка, обновление, удаление). Он работает с виртуальными системными средами. Conda — это инструмент для управления пакетами и установщик с куда большим функционалом, чем в pip. Conda может обрабатывать зависимости библиотек вне пакетов Python, а также сами пакеты Python.
Отличительной чертой conda является возможность локальной работы, т.е. независимо для каждого юзера.
Anaconda:

[1] Install conda, create a new virtual environment, and install all necessary packages.
Установила
Сщздала окружение salmon
Добавила каналы и установила необходимые пакеты кроме picard.
[0.75] You won't be able to install some tools - that's fine. List their names, and explain what should be done to make them conda-friendly (conda-forge channel, bioconda channel).
Нужной версии picard в конде нет, но мне удалось установить ее из репрозитория через терминал.
[0.25] Export the environment (example) to the file and verify that it can be rebuilt from the file without problems.
Прикрепляю скрин своего env файла
![image](https://user-images.githubusercontent.com/119702267/209340508-320cf452-802b-49b3-a0f0-1eb501f99fb1.png)
[3] Create a Dockerfile for a container with all required dependencies. Don't forget about comments; test that all tools are accessible and work inside the container. Hints:
If needed, grant rights to execute downloaded/compiled binaries using chmod (chmod a+x BINARY_NAME)
Move all executables to $PATH folders (e.g./usr/local/bin) to make them accessible without specifying the full path.
Typical command to run a container interactively (-it) and delete on exit(--rm): docker run --rm -it name:tag
[1] Use hadolint and remove as many reported warnings as possible.
[0.5] Add relevant labels, e.g. maintainer, version, etc. (hint)
Скачала и установила Docker в соответствии с инструкцией на сайте, создала Dockerfile.
Сам Dockerfile прикрепила в github.
