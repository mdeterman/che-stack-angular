FROM eclipse/node

LABEL che:server:4200:ref=ng-serve che:server:4200:protocol=http

RUN mkdir -p $HOME/.ssh && \
    ssh-keyscan github.com >> ~/.ssh/known_hosts && \
    ssh-keyscan gitlab.com >> ~/.ssh/known_hosts && \
    sudo npm cache clean -f && \
    sudo npm install -g n && \
    sudo n stable && \
    sudo npm install -g npm && \
    sudo npm install -g --unsafe-perm @angular/cli

EXPOSE 4200
