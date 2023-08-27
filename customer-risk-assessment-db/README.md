# 数据库Description

## 顾客表（customer）
用来存储顾客的基本信息，如姓名、身份证号、联系方式等。主键是顾客编号（customer_id）。

## 评估类型表（assessment_type）
用来存储不同的评估类型和标准，如风险因素分析法、模糊综合评价法等。主键是评估类型编号（assessment_type_id）。

## 评估指标表（assessment_indicator）
用来存储每种评估类型下的评估指标和方法，如财务状况、信用状况、行业风险等，以及相应的权重和分值。主键是评估指标编号（assessment_indicator_id），外键是评估类型编号（assessment_type_id）。

## 评估数据表（assessment_data）
用来存储每个顾客在每种评估类型下的评估数据，如财务报表、信用记录等。主键是评估数据编号（assessment_data_id），外键是顾客编号（customer_id）和评估类型编号（assessment_type_id）。

## 评估结果表（assessment_result）
用来存储每个顾客在每种评估类型下的评估结果，如风险等级、违约概率、信用限额等。主键是评估结果编号（assessment_result_id），外键是顾客编号（customer_id）和评估类型编号（assessment_type_id）。