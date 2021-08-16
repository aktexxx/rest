object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Rest Main'
  ClientHeight = 687
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 56
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 56
    Top = 104
    Width = 297
    Height = 465
    BorderStyle = bsNone
    Color = clMenuBar
    Lines.Strings = (
      '[{"name":"Estonia","topLevelDomain":'
      '[".ee"],"alpha2Code":"EE","alpha3Code":"EST","callingCodes'
      '":["372"],"capital":"Tallinn","altSpellings":'
      '["EE","Eesti","Republic of Estonia","Eesti '
      'Vabariik"],"region":"Europe","subregion":"Northern '
      'Europe","population":1315944,"latlng":'
      '[59.0,26.0],"demonym":"Estonian","area":45227.0,"gini":36'
      '.0,"timezones":["UTC+02:00"],"borders":'
      '["LVA","RUS"],"nativeName":"Eesti","numericCode":"233","c'
      'urrencies":'
      '[{"code":"EUR","name":"Euro","symbol":"'#8364'"}],"languages":'
      '[{"iso639_1":"et","iso639_2":"est","name":"Estonian","nativ'
      'eName":"eesti"}],"translations":'
      '{"de":"Estland","es":"Estonia","fr":"Estonie","ja":"'#12456#12473#12488#12491
      #12450'","it":"Estonia","br":"Est'#244'nia","pt":"Est'#243'nia","nl":"Estland","'
      'hr":"Estonija","fa":"'
      #1575#1587#1578#1608#1606#1740'"},"flag":"https://restcountries.eu/data/est.svg","re'
      'gionalBlocs":[{"acronym":"EU","name":"European '
      'Union","otherAcronyms":[],"otherNames":[]}],"cioc":"EST"}]')
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 216
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://restcountries.eu'
    Params = <>
    Left = 416
    Top = 120
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'land'
        Options = [poAutoCreated]
        Value = 'eesti'
      end>
    Resource = 'rest/v2/name/{land}'
    Response = RESTResponse1
    Left = 512
    Top = 40
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 416
    Top = 40
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Schnelle Bindungen'
      DataSource = RESTResponse1
      FieldName = 'Content'
      Control = Memo1
      Track = False
    end
  end
end
