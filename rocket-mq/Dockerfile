FROM foxiswho/rocketmq:4.7.0

EXPOSE 9876

#RUN mv ${ROCKETMQ_HOME}/bin/runserver-customize.sh ${ROCKETMQ_HOME}/bin/runserver.sh \
# && chmod +x ${ROCKETMQ_HOME}/bin/runserver.sh \
# && chmod +x ${ROCKETMQ_HOME}/bin/mqnamesrv
ADD ./rocketmq-4.7.1 /home/rocketmq/rocketmq-4.7.1

CMD cd /home/rocketmq/rocketmq-4.7.1/bin \
 && /home/rocketmq/rocketmq-4.7.1/bin/mqnamesrv
