unit ATxColorCodes;

interface

type
  TColorCode = record sName, sVal: string; end;
const
  cColorCodes: array[0..146] of TColorCode = (
    (sName: 'AliceBlue'; sVal: '#F0F8FF'),
    (sName: 'AntiqueWhite'; sVal: '#FAEBD7'),
    (sName: 'Aqua'; sVal: '#00FFFF'),
    (sName: 'Aquamarine'; sVal: '#7FFFD4'),
    (sName: 'Azure'; sVal: '#F0FFFF'),
    (sName: 'Beige'; sVal: '#F5F5DC'),
    (sName: 'Bisque'; sVal: '#FFE4C4'),
    (sName: 'Black'; sVal: '#000000'),
    (sName: 'BlanchedAlmond'; sVal: '#FFEBCD'),
    (sName: 'Blue'; sVal: '#0000FF'),
    (sName: 'BlueViolet'; sVal: '#8A2BE2'),
    (sName: 'Brown'; sVal: '#A52A2A'),
    (sName: 'BurlyWood'; sVal: '#DEB887'),
    (sName: 'CadetBlue'; sVal: '#5F9EA0'),
    (sName: 'Chartreuse'; sVal: '#7FFF00'),
    (sName: 'Chocolate'; sVal: '#D2691E'),
    (sName: 'Coral'; sVal: '#FF7F50'),
    (sName: 'CornflowerBlue'; sVal: '#6495ED'),
    (sName: 'Cornsilk'; sVal: '#FFF8DC'),
    (sName: 'Crimson'; sVal: '#DC143C'),
    (sName: 'Cyan'; sVal: '#00FFFF'),
    (sName: 'DarkBlue'; sVal: '#00008B'),
    (sName: 'DarkCyan'; sVal: '#008B8B'),
    (sName: 'DarkGoldenRod'; sVal: '#B8860B'),
    (sName: 'DarkGray'; sVal: '#A9A9A9'),
    (sName: 'DarkGrey'; sVal: '#A9A9A9'),
    (sName: 'DarkGreen'; sVal: '#006400'),
    (sName: 'DarkKhaki'; sVal: '#BDB76B'),
    (sName: 'DarkMagenta'; sVal: '#8B008B'),
    (sName: 'DarkOliveGreen'; sVal: '#556B2F'),
    (sName: 'Darkorange'; sVal: '#FF8C00'),
    (sName: 'DarkOrchid'; sVal: '#9932CC'),
    (sName: 'DarkRed'; sVal: '#8B0000'),
    (sName: 'DarkSalmon'; sVal: '#E9967A'),
    (sName: 'DarkSeaGreen'; sVal: '#8FBC8F'),
    (sName: 'DarkSlateBlue'; sVal: '#483D8B'),
    (sName: 'DarkSlateGray'; sVal: '#2F4F4F'),
    (sName: 'DarkSlateGrey'; sVal: '#2F4F4F'),
    (sName: 'DarkTurquoise'; sVal: '#00CED1'),
    (sName: 'DarkViolet'; sVal: '#9400D3'),
    (sName: 'DeepPink'; sVal: '#FF1493'),
    (sName: 'DeepSkyBlue'; sVal: '#00BFFF'),
    (sName: 'DimGray'; sVal: '#696969'),
    (sName: 'DimGrey'; sVal: '#696969'),
    (sName: 'DodgerBlue'; sVal: '#1E90FF'),
    (sName: 'FireBrick'; sVal: '#B22222'),
    (sName: 'FloralWhite'; sVal: '#FFFAF0'),
    (sName: 'ForestGreen'; sVal: '#228B22'),
    (sName: 'Fuchsia'; sVal: '#FF00FF'),
    (sName: 'Gainsboro'; sVal: '#DCDCDC'),
    (sName: 'GhostWhite'; sVal: '#F8F8FF'),
    (sName: 'Gold'; sVal: '#FFD700'),
    (sName: 'GoldenRod'; sVal: '#DAA520'),
    (sName: 'Gray'; sVal: '#808080'),
    (sName: 'Grey'; sVal: '#808080'),
    (sName: 'Green'; sVal: '#008000'),
    (sName: 'GreenYellow'; sVal: '#ADFF2F'),
    (sName: 'HoneyDew'; sVal: '#F0FFF0'),
    (sName: 'HotPink'; sVal: '#FF69B4'),
    (sName: 'IndianRed'; sVal: '	#CD5C5C'),
    (sName: 'Indigo'; sVal: '	#4B0082'),
    (sName: 'Ivory'; sVal: '#FFFFF0'),
    (sName: 'Khaki'; sVal: '#F0E68C'),
    (sName: 'Lavender'; sVal: '#E6E6FA'),
    (sName: 'LavenderBlush'; sVal: '#FFF0F5'),
    (sName: 'LawnGreen'; sVal: '#7CFC00'),
    (sName: 'LemonChiffon'; sVal: '#FFFACD'),
    (sName: 'LightBlue'; sVal: '#ADD8E6'),
    (sName: 'LightCoral'; sVal: '#F08080'),
    (sName: 'LightCyan'; sVal: '#E0FFFF'),
    (sName: 'LightGoldenRodYellow'; sVal: '#FAFAD2'),
    (sName: 'LightGray'; sVal: '#D3D3D3'),
    (sName: 'LightGrey'; sVal: '#D3D3D3'),
    (sName: 'LightGreen'; sVal: '#90EE90'),
    (sName: 'LightPink'; sVal: '#FFB6C1'),
    (sName: 'LightSalmon'; sVal: '#FFA07A'),
    (sName: 'LightSeaGreen'; sVal: '#20B2AA'),
    (sName: 'LightSkyBlue'; sVal: '#87CEFA'),
    (sName: 'LightSlateGray'; sVal: '#778899'),
    (sName: 'LightSlateGrey'; sVal: '#778899'),
    (sName: 'LightSteelBlue'; sVal: '#B0C4DE'),
    (sName: 'LightYellow'; sVal: '#FFFFE0'),
    (sName: 'Lime'; sVal: '#00FF00'),
    (sName: 'LimeGreen'; sVal: '#32CD32'),
    (sName: 'Linen'; sVal: '#FAF0E6'),
    (sName: 'Magenta'; sVal: '#FF00FF'),
    (sName: 'Maroon'; sVal: '#800000'),
    (sName: 'MediumAquaMarine'; sVal: '#66CDAA'),
    (sName: 'MediumBlue'; sVal: '#0000CD'),
    (sName: 'MediumOrchid'; sVal: '#BA55D3'),
    (sName: 'MediumPurple'; sVal: '#9370D8'),
    (sName: 'MediumSeaGreen'; sVal: '#3CB371'),
    (sName: 'MediumSlateBlue'; sVal: '#7B68EE'),
    (sName: 'MediumSpringGreen'; sVal: '#00FA9A'),
    (sName: 'MediumTurquoise'; sVal: '#48D1CC'),
    (sName: 'MediumVioletRed'; sVal: '#C71585'),
    (sName: 'MidnightBlue'; sVal: '#191970'),
    (sName: 'MintCream'; sVal: '#F5FFFA'),
    (sName: 'MistyRose'; sVal: '#FFE4E1'),
    (sName: 'Moccasin'; sVal: '#FFE4B5'),
    (sName: 'NavajoWhite'; sVal: '#FFDEAD'),
    (sName: 'Navy'; sVal: '#000080'),
    (sName: 'OldLace'; sVal: '#FDF5E6'),
    (sName: 'Olive'; sVal: '#808000'),
    (sName: 'OliveDrab'; sVal: '#6B8E23'),
    (sName: 'Orange'; sVal: '#FFA500'),
    (sName: 'OrangeRed'; sVal: '#FF4500'),
    (sName: 'Orchid'; sVal: '#DA70D6'),
    (sName: 'PaleGoldenRod'; sVal: '#EEE8AA'),
    (sName: 'PaleGreen'; sVal: '#98FB98'),
    (sName: 'PaleTurquoise'; sVal: '#AFEEEE'),
    (sName: 'PaleVioletRed'; sVal: '#D87093'),
    (sName: 'PapayaWhip'; sVal: '#FFEFD5'),
    (sName: 'PeachPuff'; sVal: '#FFDAB9'),
    (sName: 'Peru'; sVal: '#CD853F'),
    (sName: 'Pink'; sVal: '#FFC0CB'),
    (sName: 'Plum'; sVal: '#DDA0DD'),
    (sName: 'PowderBlue'; sVal: '#B0E0E6'),
    (sName: 'Purple'; sVal: '#800080'),
    (sName: 'Red'; sVal: '#FF0000'),
    (sName: 'RosyBrown'; sVal: '#BC8F8F'),
    (sName: 'RoyalBlue'; sVal: '#4169E1'),
    (sName: 'SaddleBrown'; sVal: '#8B4513'),
    (sName: 'Salmon'; sVal: '#FA8072'),
    (sName: 'SandyBrown'; sVal: '#F4A460'),
    (sName: 'SeaGreen'; sVal: '#2E8B57'),
    (sName: 'SeaShell'; sVal: '#FFF5EE'),
    (sName: 'Sienna'; sVal: '#A0522D'),
    (sName: 'Silver'; sVal: '#C0C0C0'),
    (sName: 'SkyBlue'; sVal: '#87CEEB'),
    (sName: 'SlateBlue'; sVal: '#6A5ACD'),
    (sName: 'SlateGray'; sVal: '#708090'),
    (sName: 'SlateGrey'; sVal: '#708090'),
    (sName: 'Snow'; sVal: '#FFFAFA'),
    (sName: 'SpringGreen'; sVal: '#00FF7F'),
    (sName: 'SteelBlue'; sVal: '#4682B4'),
    (sName: 'Tan'; sVal: '#D2B48C'),
    (sName: 'Teal'; sVal: '#008080'),
    (sName: 'Thistle'; sVal: '#D8BFD8'),
    (sName: 'Tomato'; sVal: '#FF6347'),
    (sName: 'Turquoise'; sVal: '#40E0D0'),
    (sName: 'Violet'; sVal: '#EE82EE'),
    (sName: 'Wheat'; sVal: '#F5DEB3'),
    (sName: 'White'; sVal: '#FFFFFF'),
    (sName: 'WhiteSmoke'; sVal: '#F5F5F5'),
    (sName: 'Yellow'; sVal: '#FFFF00'),
    (sName: 'YellowGreen'; sVal: '#9ACD32')
    );

function SGetColorNameValue(const s: string): string;

implementation

uses
  SysUtils;

function SGetColorNameValue(const s: string): string;
var
  i: Integer;
begin
  Result:= '';
  for i:= Low(cColorCodes) to High(cColorCodes) do
    with cColorCodes[i] do
      if UpperCase(sName) = UpperCase(s) then
      begin
        Result:= sVal;
        Break;
      end;
end;


end.
