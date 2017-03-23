fluidPage(sidebarLayout(
  sidebarPanel(
    # selectizeInput('ranked_RJClass_5', 'Ruijin_class', choices = seq(1,18)),
    # selectizeInput('diaGroup', 'tumo size (cm)', choices = c(`<2 ` = 1, `> 2 and ≤ 4` = 2, `> 4 and ≤ 6` = 3, `> 6 and ≤ 8` = 4, `> 8` = 5)),
    # selectizeInput('TNM_7th', 'TNM_7th', choices = c(`TNM1a` = 1, `TNM1b` = 2, `TNM2a` = 3, `TNM2b` = 4, `TNM3a` = 5, `TNM3b` = 6, `TNM3c` = 7, `TNM4` = 8)),
    # selectizeInput('ageGroup_5', 'age', choices = c(`<50` = 1, `≥ 50 and < 60` = 2, `≥ 60 and < 70` = 3, `≥ 70` = 4)),
    # selectizeInput('gender', 'gender', choices = c(`Male` = 1, `Female` = 2))
    selectizeInput('ageGroup_5', 'Age', choices = c(`<50-year` = 1, `50-60-year` = 2, `60-70-year` = 3, `>70-year` = 4)),
    selectizeInput('gender', 'Gender', choices = c(`Male` = 1, `Female` = 2)),
    selectizeInput('type', 'Borrmann type', choices = c(`early` = 0, `Ⅰ` = 1, `Ⅱ` = 2, `Ⅲ` = 3, `Ⅳ` = 4)),
    selectizeInput('diaGroup', 'Major diameter', choices = c(`<2cm ` = 1, `2-4cm` = 2, `4-6cm` = 3, `6-8cm` = 4, `>8cm` = 5)),
    selectizeInput('patholoGrade', 'Histology grade', choices = c(`Well-differentiated` = 1, `Moderate-differentiated` = 2, `Poorly-differentiated` = 3, `others` = 4, `>8cm` = 5)),
    selectizeInput('TNM_7th', '7th TNM stage', choices = c(`Ⅰa` = 1, `Ⅰb` = 2, `Ⅱa` = 3, `Ⅱb` = 4, `Ⅲa` = 5, `Ⅲb` = 6, `Ⅲc` = 7, `Ⅳ` = 8)),
    selectizeInput('ranked_RJClass_5', 'Shanghai classification', choices = c(`Lymphoepithelial-subtype` = 1, `Moderately-differentiated  cluster subtype with lymphocyte infiltration subtype` = 2, `Typical well-differentiated glandular subtype` = 3, `Solid large cell with lymphocyte infiltration subtype` = 4, `Typical papillary subtype` = 5, `Signet-ring cell, small cell-variant subtype` = 6, `Typical moderately-differentiated glandular subtype` = 7, `Typical poorly-differentiated glandular subtype` = 8, `Typical signet-ring cell subtype` = 9, `Mucinous cancer, glandular subtype` = 10, `Mucinous cancer, signet-ring cell subtype` = 11, `Signet-ring cell, large or spindle cell-variant subtype` = 12, `Clustered small or micro papillary subtype` = 13, `Undifferentiated sheet or cord subtype` = 14, `Adenosquamous carcinoma subtype` = 15, `Poorly-differentiated cribriform carcinoma with cancerous embolus subtype` = 16, `Hepatoid carcinoma subtype` = 17, `Neuroendocrine-like carcinoma subtype` = 18))
  ),
  mainPanel(
      tableOutput("values")
    )
), title = 'Gastric Cancer survival prediction')