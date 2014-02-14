object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Buildings GenTest'
  ClientHeight = 333
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 17
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 857
    Height = 309
    Align = alClient
    Picture.Data = {
      07544269746D61703A000000424D3A0000000000000036000000280000000100
      0000010000000100180000000000040000000000000000000000000000000000
      0000FFFFFF00}
    OnClick = Image1Click
    ExplicitWidth = 1134
    ExplicitHeight = 432
  end
  object Panel1: TPanel
    Left = 0
    Top = 309
    Width = 857
    Height = 24
    Align = alBottom
    BevelEdges = []
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object StatusBar1: TStatusBar
      Left = 169
      Top = 0
      Width = 688
      Height = 24
      Align = alClient
      Panels = <
        item
          Width = 100
        end
        item
          Width = 50
        end
        item
          Width = 50
        end
        item
          Width = 100
        end
        item
          Width = 100
        end
        item
          Width = 100
        end
        item
          Width = 50
        end>
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 169
      Height = 24
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
    end
    object cbOther: TCheckBox
      Left = 9
      Top = 0
      Width = 144
      Height = 22
      TabStop = False
      Caption = #1044#1088#1091#1075#1086#1081' '#1074#1072#1088#1080#1072#1085#1090
      TabOrder = 2
      OnMouseDown = cbOtherMouseDown
      OnMouseUp = cbOtherMouseUp
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*|*|All|*.*'
    InitialDir = '..'
    Left = 8
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    Filter = '*|*|All|*.*'
    InitialDir = '..'
    Left = 40
    Top = 16
  end
  object OpenDialog2: TOpenDialog
    Left = 72
    Top = 65224
  end
  object odPrg: TOpenDialog
    FileName = 'kap_h.exe'
    Filter = '*.exe|*.exe|All|*.*'
    InitialDir = '.'
    Left = 72
    Top = 16
  end
  object OpenDialog3: TOpenDialog
    Left = 104
    Top = 65224
  end
  object odOuf: TOpenDialog
    Filter = '*.a|*.a|All|*.*'
    InitialDir = '..'
    Left = 104
    Top = 16
  end
end
