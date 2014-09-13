MySQL高性能数据库实践
---

构建高性能mysql集群
---

####业务场景
1. 业务发展能迅速,高度写比你,大粗活动

高并发事务

实现瓶颈,人员数量小,mysql本身限制

1. 5.5 vs 5.6

索引计算有偏差
索引的选择性.区别度.

join实现有问题
nested loop join 内部循环.指数击的复杂度

TPS一倍差距

? cpc,cps

####解决方案

Time
高性能精简 PCIE+LargeMemory(大内存)
> 32CPU,160GB内存,1.6T

典型的replication主从,(无环状部署)
> 审计,MYSQL VERSION +OS大页
> 垂直隔离,水平风格,4组PCIE实例,5组SATA实例

SQL规范,审核,扫描建议
> SQL开发建议.
> SQL去连表查寻.索引进行优化.(DML)?扫描,数据库表成本审计系统

索引优化.select * from Beaty where tryid in (99.22.2) order by id desc limit 30;

create table ba (
    id int auto_in not null
    tryid int
    userid
    type ..
)

添加force index(idx_tryid) 之前为3秒,后者0.0001秒

MYSQL外围保护,应用架构优化
---

php proxy + middlelayer:conns pool
架构支持读写分离,敏感数据落在master
区分oltp/olap
垂直切分 主站业务在不同的数据库实例
水平切分


外围保护,query timeout, big range scan,table full table scan

MYSQL性能监控/SQL性能分析

数据生命周期管理

过期业务,数据归档,冷热数据分离不同硬件



