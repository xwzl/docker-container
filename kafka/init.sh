rm -rf data
#is_create_network=$(docker network list | grep app-tier | wc -l)
#if [ ${is_create_network} -eq 0 ]; then
#  docker network create app-tier --driver bridge
#fi
for i in {1..3}; do
  mkdir -p $(pwd)/data/kafka${i} && chmod -R 777 $(pwd)/data/kafka${i}
done

chmod -R 777 ./data