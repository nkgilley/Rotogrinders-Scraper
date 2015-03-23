# Rotogrinders DraftDay NBA Scraper
# Install RSelenium if required. You will need phantomjs in your path or follow instructions
# in package vignettes
# devtools::install_github("ropensci/RSelenium")
# login first
username <- 'user'
password <- 'password123'
appURL <- 'https://rotogrinders.com/sign-in'
library(RSelenium)
pJS <- phantom() # start phantomjs
remDr <- remoteDriver(browserName = "phantomjs")
remDr$open()

# This section is for users with a rotogrinders incentives account.
#
# remDr$navigate(appURL)
# remDr$findElement("css", ".cmp input[type='text']")$sendKeysToElement(list(username))
# remDr$findElement("css", ".cmp input[type='password']")$sendKeysToElement(list(password))
# remDr$findElement("css", ".cmp input[type='submit']")$clickElement()
# Sys.sleep(2)

# DraftDay NBA Projections
# appURL <- 'https://rotogrinders.com/projected-stats/nba?site=draftday'
# remDr$navigate(appURL)
# tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
# projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
# draftdayNbaTable <- projTable[[1]]
# write.csv(draftdayNbaTable, file="draftday-nba.csv", row.names=F)

# Rotogrinders NBA Vegas Odds
appURL <- 'https://rotogrinders.com/pages/NBA_Vegas_Odds_Page-81324'
remDr$navigate(appURL)
tableElem <- remDr$findElement(using = 'id', value = "DataTables_Table_1")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
vegasTable <- projTable[[1]]
write.csv(vegasTable, file="rotogrinders-vegas-odds.csv", row.names=F)

# Rotogrinders NBA DvP Point Guard
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=16&site=draftday&range=season'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpPGTable <- projTable[[1]]
write.csv(dvpPGTable, file="rotogrinders-dvp-pg.csv", row.names=F)

# Rotogrinders NBA DvP Shooting Guard
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=25&site=draftday&range=season'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpSGTable <- projTable[[1]]
write.csv(dvpSGTable, file="rotogrinders-dvp-sg.csv", row.names=F)

# Rotogrinders NBA DvP Small Forward
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=26&site=draftday&range=season'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpSFTable <- projTable[[1]]
write.csv(dvpSFTable, file="rotogrinders-dvp-sf.csv", row.names=F)

# Rotogrinders NBA DvP Power Forward
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=17&site=draftday&range=season'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpPFTable <- projTable[[1]]
write.csv(dvpPFTable, file="rotogrinders-dvp-pf.csv", row.names=F)

# Rotogrinders NBA DvP Center
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=15&site=draftday&range=season'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
shot = remDr$screenshot(display = TRUE)
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpCTable <- projTable[[1]]
write.csv(dvpCTable, file="rotogrinders-dvp-c.csv", row.names=F)

# Rotogrinders NBA DvP Point Guard - Last 3 Weeks
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=16&site=draftday&range=3weeks'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpPGTable <- projTable[[1]]
write.csv(dvpPGTable, file="rotogrinders-dvp-pg-3weeks.csv", row.names=F)

# Rotogrinders NBA DvP Shooting Guard - Last 3 Weeks
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=25&site=draftday&range=3weeks'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpSGTable <- projTable[[1]]
write.csv(dvpSGTable, file="rotogrinders-dvp-sg-3weeks.csv", row.names=F)

# Rotogrinders NBA DvP Small Forward - Last 3 Weeks
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=26&site=draftday&range=3weeks'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpSFTable <- projTable[[1]]
write.csv(dvpSFTable, file="rotogrinders-dvp-sf-3weeks.csv", row.names=F)

# Rotogrinders NBA DvP Power Forward - Last 3 Weeks
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=17&site=draftday&range=3weeks'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpPFTable <- projTable[[1]]
write.csv(dvpPFTable, file="rotogrinders-dvp-pf-3weeks.csv", row.names=F)

# Rotogrinders NBA DvP Center - Last 3 Weeks
appURL <- 'https://rotogrinders.com/team-stats/nba-allowed?sport=nba&position=15&site=draftday&range=3weeks'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
shot = remDr$screenshot(display = TRUE)
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
dvpCTable <- projTable[[1]]
write.csv(dvpCTable, file="rotogrinders-dvp-c-3weeks.csv", row.names=F)

# Rotogrinders NBA Player Stats
appURL <- 'https://rotogrinders.com/game-stats/nba-player?site=draftday&range=season'
remDr$navigate(appURL)
remDr$findElement(using = 'name', value = "toggle-values")$clickElement()
dropDown <- remDr$findElement(using = 'name', value = "proj-stats_length")  #$clickElement()
remDr$mouseMoveToLocation(webElement = dropDown) # move mouse to the element we selected
remDr$click(1) # 1 is left, 2 indicates click the right mouse button
remDr$sendKeysToActiveElement(list(key = 'down_arrow', key = 'down_arrow', key = 'down_arrow', key = 'down_arrow', key = 'enter'))
tableElem <- remDr$findElement(using = 'id', value = "proj-stats")
projTable <- readHTMLTable(header = TRUE, tableElem$getElementAttribute("outerHTML")[[1]])
playerStatsTable <- projTable[[1]]
write.csv(playerStatsTable[-2][-2], file="rotogrinders-playerstats.csv", row.names=F)

pJS$stop()