object fDogovor: TfDogovor
  Left = 887
  Top = 325
  BorderStyle = bsDialog
  Caption = #1054#1090#1095#1077#1090
  ClientHeight = 309
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 0
    Width = 357
    Height = 309
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object frxReport1: TfrxReport
    Version = '5.3.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42116.991882546300000000
    ReportOptions.LastChange = 42116.991882546300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 32
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Duplex = dmHorizontal
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CENA: TfrxMemoView
          Left = 120.944960000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'CENA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."CENA"]')
          ParentFont = False
        end
        object frxDBDataset1DATA_PRODAJI: TfrxMemoView
          Left = 196.535560000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_PRODAJI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."DATA_PRODAJI"]')
          ParentFont = False
        end
        object frxDBDataset1KOL_VO: TfrxMemoView
          Left = 294.803340000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'KOL_VO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."KOL_VO"]')
          ParentFont = False
        end
        object frxDBDataset1SPOSOB_OPLATI: TfrxMemoView
          Left = 377.953000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'SPOSOB_OPLATI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."SPOSOB_OPLATI"]')
          ParentFont = False
        end
        object frxDBDataset1NAME_MODEL: TfrxMemoView
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'NAME_MODEL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."NAME_MODEL"]')
          ParentFont = False
        end
        object frxDBDataset1FAM: TfrxMemoView
          Left = 483.779840000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'FAM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."FAM"]')
          ParentFont = False
        end
        object frxDBDataset1IMYA: TfrxMemoView
          Left = 548.031850000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'IMYA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."IMYA"]')
          ParentFont = False
        end
        object frxDBDataset1OTCH: TfrxMemoView
          Left = 616.063390000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OTCH'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."OTCH"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 196.535560000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182#1056#1105)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 294.803340000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1056#1111#1056#1109#1057#1027#1056#1109#1056#177' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 483.779840000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1169#1056#176#1056#1030#1056#181#1057#8224)
          ParentFont = False
        end
      end
      object Memo2: TfrxMemoView
        Left = 147.401670000000000000
        Top = 11.338590000000000000
        Width = 230.551330000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          #1056#1115#1057#8218#1057#8225#1056#181#1057#8218' '#1056#1111#1056#1109' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182#1056#1105' '#1056#1109#1057#8218)
        ParentFont = False
      end
      object SysMemo1: TfrxSysMemoView
        Left = 381.732530000000000000
        Top = 11.338590000000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[DATE]')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ZAKAZ_ID=ZAKAZ_ID'
      'CENA=CENA'
      'DATA_PRODAJI=DATA_PRODAJI'
      'KOL_VO=KOL_VO'
      'OPLATA_ID=OPLATA_ID'
      'TOVAR_ID=TOVAR_ID'
      'SOTRUDNIK_ID=SOTRUDNIK_ID'
      'SPOSOB_OPLATI=SPOSOB_OPLATI'
      'FAM=FAM'
      'IMYA=IMYA'
      'OTCH=OTCH'
      'NAME_MODEL=NAME_MODEL')
    DataSource = DM.DSZakaz
    BCDToCurrency = False
    Left = 56
    Top = 32
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 40
    Top = 64
  end
end
