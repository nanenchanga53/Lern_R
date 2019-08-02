#외부로 다열어 놓은 공개 데이터베이스 인거 같다
library(RODBC)
connStr <- paste("Server=msedxeus.database.windows.net",
                    "Database=DAT209x01",
                    "uid=RLogin",
                    "pwd=P@ssw0rd",
                    "Driver={SQL Server}",
                    sep=";"
)
conn <- odbcDriverConnect(connStr)

my.data.frame <- sqlQuery(conn,
                         "SELECT SUM(Revenue), SUM(Units), ProductID
                         FROM bi.salesFact
                         WHERE Date > '2013-12-31' AND Date < '2015-01-01'
                         GROUP BY ProductID"
)

names(my.data.frame)<-c("SUM(Revenue)","SUM(Units)","ProductID")
print(head(my.data.frame[order(my.data.frame[,2],decreasing=TRUE),]))
print(head(my.data.frame[order(my.data.frame[,1],decreasing=TRUE),]))