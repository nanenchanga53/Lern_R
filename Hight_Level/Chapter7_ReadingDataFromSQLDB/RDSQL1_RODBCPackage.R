#https://arclab.tistory.com/79 를 참고하자
#직접 가져오기 뭐하니 정리된 사이트에서 어떻게 가져오는지만 적어놓는다
#install.packages('RODBC') #라이브러리 설치
#library(RODBC) #사용선언
#conn <- odbcConnect(dsn="localhost", uid = "root", pwd = "123456",DBMSencoding="UTF-8") #UTF-8로 가져오기


#tab <- sqlTables(conn) #테이블 목록 가져오기
#af <- sqlFetch(conn,"bi.manufacturer") #표에 해당되는 스키마를 읽어오기
#sqlQuery(conn,"쿼리") #쿼리실행

# library(RODBC)
# connStr <- paste(
#     "Server=msedxeus.database.windows.net",
#     "Database=DAT209x01",
#     "uid=RLogin",
#     "pwd=P@ssw0rd",
#     "Driver={SQL Server}",
#     sep=";"
# )
# conn <- odbcDriverConnect(connStr)
# sqlTables(conn, tableType = "TABLE")
# sqlColumns(conn,"bi.sentiment")[c("COLUMN_NAME","TYPE_NAME")]

#      COLUMN_NAME TYPE_NAME
# 1         DateID       int
# 2        StateID  smallint
# 3 ManufacturerID  smallint
# 4          Score   numeric
# 5   Manufacturer   varchar
# 6           Date  datetime
# 7          State   varchar
# 8            zip   varchar
# 9      ProductID    bigint