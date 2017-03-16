fluidPage(sidebarLayout(
  sidebarPanel(
    selectizeInput('ranked_RJClass_5', 'Ruijin_class', choices = seq(1,18)),
    selectizeInput('diaGroup', 'tumo size (cm)', choices = c(`<2 ` = 1, `> 2 and ≤ 4` = 2, `> 4 and ≤ 6` = 3, `> 6 and ≤ 8` = 4, `> 8` = 5)),
    selectizeInput('TNM_7th', 'TNM_7th', choices = c(`TNM1a` = 1, `TNM1b` = 2, `TNM2a` = 3, `TNM2b` = 4, `TNM3a` = 5, `TNM3b` = 6, `TNM3c` = 7, `TNM4` = 8)),
    selectizeInput('ageGroup_5', 'age', choices = c(`<50` = 1, `≥ 50 and < 60` = 2, `≥ 60 and < 70` = 3, `≥ 70` = 4)),
    selectizeInput('gender', 'gender', choices = c(`Male` = 1, `Female` = 2))
  ),
  mainPanel(
      tableOutput("values")
    )
), title = 'Gastric Cancer survival prediction')