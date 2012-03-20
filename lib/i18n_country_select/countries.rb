module I18nCountrySelect
  module Countries
    codes = 'AF','AL','DZ','AS','AD','AO','AI','AQ','AG','AR',
            'AM','AW','AU','AT','AZ','BS','BH','BD','BB','BY',
            'BE','BZ','BJ','BM','BO','BA','BW','BV','BR','IO',
            'BN','BG','BF','BI','BT','KH','CM','CA','CV','KY',
            'CF','TD','CL','CN','CX','CC','CO','KM','CG','CK',
            'CR','HR','CU','CY','CZ','CS','DK','DJ','DM','DO',
            'TP','EC','EG','SV','GQ','EE','ET','FK','FO','FJ',
            'FI','FR','FX','TF','GA','GM','GE','DE','GH','GI',
            'GB','GR','GL','GD','GP','GU','GT','GN','GW','GY',
            'GF','HT','HM','HN','HK','HU','IS','IN','ID','IR',
            'IQ','IE','IE','IL','IT','CI','JM','JP','JO','KZ',
            'KE','KG','KI','KP','KR','KW','LA','LV','LB','LS',
            'LR','LY','LI','LT','LU','LB','LS','LR','LY','LI',
            'LT','LU','MO','MG','MW','MY','MV','ML','MT','MH',
            'MQ','MR','MU','MX','FM','MD','MC','MN','MS','MA',
            'MZ','MM','NA','NR','MD','MC','MN','MS','MA','MZ',
            'MM','NA','NR','NP','AN','NL','NT','NC','NZ','NI',
            'NE','NG','NU','NF','MP','NO','OM','PK','PW','PA',
            'PG','PY','PE','PH','PN','PL','PF','PT','PR','QA',
            'RE','RO','RU','RW','LC','WS','SM','SA','SN','SC',
            'SL','SG','SK','SI','SB','SO','ZA','SU','ES','LK',
            'SH','PM','ST','KN','VC','SD','SR','SJ','SZ','SE',
            'CH','SY','TJ','TW','TZ','TH','TG','TK','TO','TT',
            'TN','TR','TM','TC','TV','UG','UA','AE','GB','US',
            'UY','UM','UZ','VU','VA','VE','VN','VG','VI','WF',
            'EH','YE','YU','ZR','ZM','ZW'
    
    COUNTRIES = codes.map{|code| [I18n.t(code, :scope => :countries), code]}
  end
end
