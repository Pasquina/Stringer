object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 149
  ClientWidth = 452
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
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Reverse (BPL)'
    TabOrder = 0
    OnClick = Button1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 24
    Top = 24
    Width = 400
    Height = 21
    EditLabel.Width = 57
    EditLabel.Height = 13
    EditLabel.Caption = 'Input String'
    TabOrder = 1
  end
  object LabeledEdit2: TLabeledEdit
    Left = 24
    Top = 69
    Width = 400
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Output String'
    ReadOnly = True
    TabOrder = 2
  end
  object Button2: TButton
    Left = 128
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Reverse (dll)'
    TabOrder = 3
    OnClick = Button2Click
  end
end
