object Form1: TForm1
  Left = 236
  Top = 112
  Caption = 'DayNight Simulator'
  ClientHeight = 545
  ClientWidth = 863
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormShow
  OnShow = FormShow
  TextHeight = 13
  object Paintbox1: TPaintBox
    Left = 0
    Top = 0
    Width = 863
    Height = 440
    Align = alClient
    OnPaint = BDarstellungClick
    ExplicitTop = -6
  end
  object Panel1: TPanel
    Left = 0
    Top = 440
    Width = 863
    Height = 86
    Align = alBottom
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    ExplicitTop = 439
    ExplicitWidth = 859
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 25
      Height = 13
      Caption = 'Day :'
    end
    object Label2: TLabel
      Left = 114
      Top = 20
      Width = 41
      Height = 13
      Caption = 'Month :'
    end
    object Label3: TLabel
      Left = 223
      Top = 20
      Width = 37
      Height = 13
      Caption = 'Hours :'
    end
    object Label4: TLabel
      Left = 328
      Top = 20
      Width = 48
      Height = 13
      Caption = 'Minutes :'
    end
    object BDarstellung: TButton
      Left = 616
      Top = 14
      Width = 100
      Height = 25
      Caption = 'Represent'
      TabOrder = 10
      TabStop = False
      OnClick = BDarstellungClick
    end
    object BSimulation: TButton
      Left = 504
      Top = 14
      Width = 100
      Height = 25
      Caption = 'Simulation'
      TabOrder = 11
      TabStop = False
      OnClick = BSimulationClick
    end
    object BAktuell: TButton
      Left = 616
      Top = 48
      Width = 100
      Height = 25
      Caption = 'Current time :'
      TabOrder = 12
      TabStop = False
      OnClick = BAktuellClick
    end
    object ETag: TEdit
      Left = 56
      Top = 16
      Width = 49
      Height = 21
      TabStop = False
      TabOrder = 0
    end
    object EMonat: TEdit
      Left = 162
      Top = 16
      Width = 49
      Height = 21
      TabStop = False
      TabOrder = 1
    end
    object EStunden: TEdit
      Left = 266
      Top = 16
      Width = 49
      Height = 21
      TabStop = False
      TabOrder = 2
    end
    object EMinuten: TEdit
      Left = 382
      Top = 16
      Width = 49
      Height = 21
      TabStop = False
      TabOrder = 3
    end
    object RMinute: TRadioButton
      Left = 744
      Top = 16
      Width = 110
      Height = 17
      Caption = 'Change minutes'
      Checked = True
      TabOrder = 4
      TabStop = True
    end
    object RTag: TRadioButton
      Left = 744
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Change days'
      TabOrder = 5
    end
    object CSommerzeit: TCheckBox
      Left = 24
      Top = 52
      Width = 187
      Height = 17
      TabStop = False
      Caption = 'Take summer time into account'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = BDarstellungClick
    end
    object CSonnenOrt: TCheckBox
      Left = 240
      Top = 52
      Width = 75
      Height = 17
      TabStop = False
      Caption = 'Sun place'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = BDarstellungClick
    end
    object CAktuell: TCheckBox
      Left = 353
      Top = 52
      Width = 113
      Height = 17
      TabStop = False
      Caption = 'Update'
      TabOrder = 8
      OnClick = CAktuellClick
    end
    object CGradNetz: TCheckBox
      Left = 432
      Top = 52
      Width = 49
      Height = 17
      TabStop = False
      Caption = 'Grid'
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = CGradNetzClick
    end
    object Button1: TButton
      Left = 504
      Top = 48
      Width = 100
      Height = 25
      Caption = 'Bitmap'
      TabOrder = 13
      TabStop = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 437
      Top = 14
      Width = 45
      Height = 25
      Caption = 'Step'
      TabOrder = 14
      TabStop = False
      OnClick = Button2Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 526
    Width = 863
    Height = 19
    Panels = <
      item
        Text = 'Dimension :'
        Width = 70
      end
      item
        Width = 200
      end
      item
        Text = 'Bit :'
        Width = 30
      end
      item
        Text = '24'
        Width = 50
      end>
    ExplicitTop = 525
    ExplicitWidth = 859
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer2Timer
    Left = 88
    Top = 34
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 152
    Top = 34
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmap (*.bmp)|*.bmp'
    Left = 216
    Top = 32
  end
end
