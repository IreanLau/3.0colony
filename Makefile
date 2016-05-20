ROOT_PATH= $(shell pwd)

.PHONY:start
start:
		cd "${ROOT_PATH}/7000";\
		./start.sh;\
		cd -;\
		cd  "${ROOT_PATH}/7001";\
		./start.sh;\
		cd -;\
		cd "${ROOT_PATH}/7002";\
		./start.sh;\
		cd -;\
		cd  "${ROOT_PATH}/7003";\
		./start.sh;\
		cd -;\
		cd  "${ROOT_PATH}/7004";\
		./start.sh;\
		cd -;\
		cd  "${ROOT_PATH}/7005";\
		./start.sh;\
		cd -;\
	./redis-trib.rb create --replicas 1 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005
	./redis-cli -c -p 7000

	

.PHONY:clean
clean:
		killall -9 redis-server
		cd "${ROOT_PATH}/7000";\
		rm appendonly.aof;\
		rm dump.rdb;\
		rm nodes-6379.conf;\
		cd -;\
		cd  "${ROOT_PATH}/7001";\
		rm appendonly.aof;\
		rm dump.rdb;\
		rm nodes-6379.conf;\
		cd -;\
		cd "${ROOT_PATH}/7002";\
		rm appendonly.aof;\
		rm dump.rdb;\
		rm nodes-6379.conf;\
		cd -;\
		cd  "${ROOT_PATH}/7003";\
		rm appendonly.aof;\
		rm dump.rdb;\
		rm nodes-6379.conf;\
		cd -;\
		cd  "${ROOT_PATH}/7004";\
		rm appendonly.aof;\
		rm dump.rdb;\
		rm nodes-6379.conf;\
		cd -;\
		cd  "${ROOT_PATH}/7005";\
		rm appendonly.aof;\
		rm dump.rdb;\
		rm nodes-6379.conf;\
		cd -;\
