FROM eclipse/node

LABEL che:server:4200:ref=ng-serve che:server:4200:protocol=http

RUN sudo ssh -o StrictHostKeyChecking=no git@gitlab.com && \
    sudo npm cache clean -f && \
    sudo npm install -g n && \
    sudo n stable && \
    sudo npm install -g npm && \
    sudo npm install -g --unsafe-perm @angular/cli

EXPOSE 4200
