{ lib, config, ... }:
with lib;
let
  cfg = config.hp.utils.colors;
in
{
  # https://sunpma.com/other/rgb/
  options.hp.utils.colors = {
    rgb = {
      # 标准色 RGB值
      ## 灰色 (gray)
      gainsboro = mkOption {
        type = types.str;
        readOnly = true;
        default = "DCDCDC";
      };
      lightgray = mkOption {
        type = types.str;
        readOnly = true;
        default = "D3D3D3";
      };
      silver = mkOption {
        type = types.str;
        readOnly = true;
        default = "C0C0C0";
      };
      darkgray = mkOption {
        type = types.str;
        readOnly = true;
        default = "A9A9A9";
      };
      gray = mkOption {
        type = types.str;
        readOnly = true;
        default = "808080";
      };
      dimgray = mkOption {
        type = types.str;
        readOnly = true;
        default = "696969";
      };
      lightslategray = mkOption {
        type = types.str;
        readOnly = true;
        default = "778899";
      };
      slategray = mkOption {
        type = types.str;
        readOnly = true;
        default = "708090";
      };
      darkslategray = mkOption {
        type = types.str;
        readOnly = true;
        default = "2F4F4F";
      };
      black = mkOption {
        type = types.str;
        readOnly = true;
        default = "000000";
      };
      ## 红色 (red)
      indianred = mkOption {
        type = types.str;
        readOnly = true;
        default = "CD5C5C";
      };
      lightcoral = mkOption {
        type = types.str;
        readOnly = true;
        default = "F08080";
      };
      salmon = mkOption {
        type = types.str;
        readOnly = true;
        default = "FA8072";
      };
      darksalmon = mkOption {
        type = types.str;
        readOnly = true;
        default = "E9967A";
      };
      lightsalmon = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFA07A";
      };
      crimson = mkOption {
        type = types.str;
        readOnly = true;
        default = "DC143C";
      };
      red = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF0000";
      };
      firebrick = mkOption {
        type = types.str;
        readOnly = true;
        default = "B22222";
      };
      darkred = mkOption {
        type = types.str;
        readOnly = true;
        default = "8B0000";
      };
      ## 橘色 (orange)
      coral = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF7F50";
      };
      tomato = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF6347";
      };
      orangered = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF4500";
      };
      darkorange = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF8C00";
      };
      orange = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFA500";
      };
      ## 棕色 (brown)
      cornsilk = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFF8DC";
      };
      blanchedalmond = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFEBCD";
      };
      bisque = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFE4C4";
      };
      navajowhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFDEAD";
      };
      wheat = mkOption {
        type = types.str;
        readOnly = true;
        default = "F5DEB3";
      };
      burlywood = mkOption {
        type = types.str;
        readOnly = true;
        default = "DEB887";
      };
      tan = mkOption {
        type = types.str;
        readOnly = true;
        default = "D2B48C";
      };
      rosybrown = mkOption {
        type = types.str;
        readOnly = true;
        default = "BC8F8F";
      };
      sandybrown = mkOption {
        type = types.str;
        readOnly = true;
        default = "F4A460";
      };
      goldenrod = mkOption {
        type = types.str;
        readOnly = true;
        default = "DAA520";
      };
      darkgoldenrod = mkOption {
        type = types.str;
        readOnly = true;
        default = "B8860B";
      };
      peru = mkOption {
        type = types.str;
        readOnly = true;
        default = "CD853F";
      };
      chocolate = mkOption {
        type = types.str;
        readOnly = true;
        default = "D2691E";
      };
      saddlebrown = mkOption {
        type = types.str;
        readOnly = true;
        default = "8B4513";
      };
      sienna = mkOption {
        type = types.str;
        readOnly = true;
        default = "A0522D";
      };
      brown = mkOption {
        type = types.str;
        readOnly = true;
        default = "A52A2A";
      };
      maroon = mkOption {
        type = types.str;
        readOnly = true;
        default = "800000";
      };
      ## 蓝色 (blue)
      aqua = mkOption {
        type = types.str;
        readOnly = true;
        default = "00FFFF";
      };
      cyan = mkOption {
        type = types.str;
        readOnly = true;
        default = "00FFFF";
      };
      lightcyan = mkOption {
        type = types.str;
        readOnly = true;
        default = "E0FFFF";
      };
      paleturquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "AFEEEE";
      };
      aquamarine = mkOption {
        type = types.str;
        readOnly = true;
        default = "7FFFD4";
      };
      turquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "40E0D0";
      };
      mediumturquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "48D1CC";
      };
      darkturquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "00CED1";
      };
      cadetblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "5F9EA0";
      };
      steelblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "4682B4";
      };
      lightsteelblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "B0C4DE";
      };
      powderblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "B0E0E6";
      };
      lightblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "ADD8E6";
      };
      skyblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "87CEEB";
      };
      lightskyblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "87CEFA";
      };
      deepskyblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "00BFFF";
      };
      dodgerblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "1E90FF";
      };
      cornflowerblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "6495ED";
      };
      mediumslateblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "7B68EE";
      };
      royalblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "4169E1";
      };
      blue = mkOption {
        type = types.str;
        readOnly = true;
        default = "0000FF";
      };
      mediumblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "0000CD";
      };
      darkblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "00008B";
      };
      navy = mkOption {
        type = types.str;
        readOnly = true;
        default = "000080";
      };
      midnightblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "191970";
      };
      ## 绿色 (green)
      greenyellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "ADFF2F";
      };
      chartreuse = mkOption {
        type = types.str;
        readOnly = true;
        default = "7FFF00";
      };
      lawngreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "7CFC00";
      };
      lime = mkOption {
        type = types.str;
        readOnly = true;
        default = "00FF00";
      };
      limegreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "32CD32";
      };
      palegreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "98FB98";
      };
      lightgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "90EE90";
      };
      mediumspringgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "00FA9A";
      };
      springgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "00FF7F";
      };
      mediumseagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "3CB371";
      };
      seagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "2E8B57";
      };
      forestgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "228B22";
      };
      green = mkOption {
        type = types.str;
        readOnly = true;
        default = "008000";
      };
      darkgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "006400";
      };
      yellowgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "9ACD32";
      };
      olivedrab = mkOption {
        type = types.str;
        readOnly = true;
        default = "6B8E23";
      };
      olive = mkOption {
        type = types.str;
        readOnly = true;
        default = "808000";
      };
      darkolivegreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "556B2F";
      };
      mediumaquamarine = mkOption {
        type = types.str;
        readOnly = true;
        default = "66CDAA";
      };
      darkseagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "8FBC8B";
      };
      lightseagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "20B2AA";
      };
      darkcyan = mkOption {
        type = types.str;
        readOnly = true;
        default = "008B8B";
      };
      teal = mkOption {
        type = types.str;
        readOnly = true;
        default = "008080";
      };
      ## 粉色 (pink)
      pink = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFC0CB";
      };
      lightpink = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFB6C1";
      };
      hotpink = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF69B4";
      };
      deeppink = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF1493";
      };
      mediumvioletred = mkOption {
        type = types.str;
        readOnly = true;
        default = "C71585";
      };
      palevioletred = mkOption {
        type = types.str;
        readOnly = true;
        default = "DB7093";
      };
      ## 紫色 (purple)
      lavender = mkOption {
        type = types.str;
        readOnly = true;
        default = "E6E6FA";
      };
      thistle = mkOption {
        type = types.str;
        readOnly = true;
        default = "D8BFD8";
      };
      plum = mkOption {
        type = types.str;
        readOnly = true;
        default = "DDA0DD";
      };
      violet = mkOption {
        type = types.str;
        readOnly = true;
        default = "EE82EE";
      };
      orchid = mkOption {
        type = types.str;
        readOnly = true;
        default = "DA70D6";
      };
      fuchsia = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF00FF";
      };
      magenta = mkOption {
        type = types.str;
        readOnly = true;
        default = "FF00FF";
      };
      mediumorchid = mkOption {
        type = types.str;
        readOnly = true;
        default = "BA55D3";
      };
      mediumpurple = mkOption {
        type = types.str;
        readOnly = true;
        default = "9370DB";
      };
      rebeccapurple = mkOption {
        type = types.str;
        readOnly = true;
        default = "663399";
      };
      blueviolet = mkOption {
        type = types.str;
        readOnly = true;
        default = "8A2BE2";
      };
      darkviolet = mkOption {
        type = types.str;
        readOnly = true;
        default = "9400D3";
      };
      darkorchid = mkOption {
        type = types.str;
        readOnly = true;
        default = "9932CC";
      };
      darkmagenta = mkOption {
        type = types.str;
        readOnly = true;
        default = "8B008B";
      };
      purple = mkOption {
        type = types.str;
        readOnly = true;
        default = "800080";
      };
      indigo = mkOption {
        type = types.str;
        readOnly = true;
        default = "4B0082";
      };
      slateblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "6A5ACD";
      };
      darkslateblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "483D8B";
      };
      ## 白色 (white)
      white = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFFFFF";
      };
      snow = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFFAFA";
      };
      honeydew = mkOption {
        type = types.str;
        readOnly = true;
        default = "F0FFF0";
      };
      mintcream = mkOption {
        type = types.str;
        readOnly = true;
        default = "F5FFFA";
      };
      azure = mkOption {
        type = types.str;
        readOnly = true;
        default = "F0FFFF";
      };
      aliceblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "F0F8FF";
      };
      ghostwhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "F8F8FF";
      };
      whitesmoke = mkOption {
        type = types.str;
        readOnly = true;
        default = "F5F5F5";
      };
      seashell = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFF5EE";
      };
      beige = mkOption {
        type = types.str;
        readOnly = true;
        default = "F5F5DC";
      };
      oldlace = mkOption {
        type = types.str;
        readOnly = true;
        default = "FDF5E6";
      };
      floralwhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFFAF0";
      };
      ivory = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFFFF0";
      };
      antiquewhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "FAEBD7";
      };
      linen = mkOption {
        type = types.str;
        readOnly = true;
        default = "FAF0E6";
      };
      lavenderblush = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFF0F5";
      };
      mistyrose = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFE4E1";
      };
      ## 黄色 (yellow)
      gold = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFD700";
      };
      yellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFFF00";
      };
      lightyellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFFFE0";
      };
      lemonchiffon = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFFACD";
      };
      lightgoldenrodyellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "FAFAD2";
      };
      papayawhip = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFEFD5";
      };
      moccasin = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFE4B5";
      };
      peachpuff = mkOption {
        type = types.str;
        readOnly = true;
        default = "FFDAB9";
      };
      palegoldenrod = mkOption {
        type = types.str;
        readOnly = true;
        default = "EEE8AA";
      };
      khaki = mkOption {
        type = types.str;
        readOnly = true;
        default = "F0E68C";
      };
      darkkhaki = mkOption {
        type = types.str;
        readOnly = true;
        default = "BDB76B";
      };

      ## Catppuccin Macchiato Color
      CM_base = mkOption {
        type = types.str;
        readOnly = true;
        default = "24273A";
      };
      CM_mantle = mkOption {
        type = types.str;
        readOnly = true;
        default = "1E2030";
      };
      CM_crust = mkOption {
        type = types.str;
        readOnly = true;
        default = "181926";
      };
      CM_text = mkOption {
        type = types.str;
        readOnly = true;
        default = "CAD3F5";
      };
      CM_subtext0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "A5ADCB";
      };
      CM_subtext1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "B8C0E0";
      };
      CM_surface0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "363A4F";
      };
      CM_surface1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "494D64";
      };
      CM_surface2 = mkOption {
        type = types.str;
        readOnly = true;
        default = "5B6078";
      };
      CM_overlay0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "6E738D";
      };
      CM_overlay1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "8087A2";
      };
      CM_overlay2 = mkOption {
        type = types.str;
        readOnly = true;
        default = "939AB7";
      };
      CM_blue = mkOption {
        type = types.str;
        readOnly = true;
        default = "8AADF4";
      };
      CM_lavender = mkOption {
        type = types.str;
        readOnly = true;
        default = "B7BDF8";
      };
      CM_sapphire = mkOption {
        type = types.str;
        readOnly = true;
        default = "7DC4E4";
      };
      CM_sky = mkOption {
        type = types.str;
        readOnly = true;
        default = "91D7E3";
      };
      CM_teal = mkOption {
        type = types.str;
        readOnly = true;
        default = "8BD5CA";
      };
      CM_green = mkOption {
        type = types.str;
        readOnly = true;
        default = "A6DA95";
      };
      CM_yellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "EED49F";
      };
      CM_peach = mkOption {
        type = types.str;
        readOnly = true;
        default = "F5A97F";
      };
      CM_maroon = mkOption {
        type = types.str;
        readOnly = true;
        default = "EE99A0";
      };
      CM_red = mkOption {
        type = types.str;
        readOnly = true;
        default = "ED8796";
      };
      CM_mauve = mkOption {
        type = types.str;
        readOnly = true;
        default = "C6A0F6";
      };
      CM_pink = mkOption {
        type = types.str;
        readOnly = true;
        default = "F5BDE6";
      };
      CM_flamingo = mkOption {
        type = types.str;
        readOnly = true;
        default = "F0C6C6";
      };
      CM_rosewater = mkOption {
        type = types.str;
        readOnly = true;
        default = "F4DBD6";
      };

    };

    hex = {
      # 标准色 HEX值
      ## 灰色 (gray)
      gainsboro = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.gainsboro}";
      };
      lightgray = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightgray}";
      };
      silver = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.silver}";
      };
      darkgray = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkgray}";
      };
      gray = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.gray}";
      };
      dimgray = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.dimgray}";
      };
      lightslategray = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightslategray}";
      };
      slategray = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.slategray}";
      };
      darkslategray = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkslategray}";
      };
      black = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.black}";
      };
      ## 红色 (red)
      indianred = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.indianred}";
      };
      lightcoral = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightcoral}";
      };
      salmon = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.salmon}";
      };
      darksalmon = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darksalmon}";
      };
      lightsalmon = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightsalmon}";
      };
      crimson = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.crimson}";
      };
      red = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.red}";
      };
      firebrick = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.firebrick}";
      };
      darkred = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkred}";
      };
      ## 橘色 (orange)
      coral = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.coral}";
      };
      tomato = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.tomato}";
      };
      orangered = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.orangered}";
      };
      darkorange = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkorange}";
      };
      orange = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.orange}";
      };
      ## 棕色 (brown)
      cornsilk = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.cornsilk}";
      };
      blanchedalmond = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.blanchedalmond}";
      };
      bisque = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.bisque}";
      };
      navajowhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.navajowhite}";
      };
      wheat = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.wheat}";
      };
      burlywood = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.burlywood}";
      };
      tan = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.tan}";
      };
      rosybrown = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.rosybrown}";
      };
      sandybrown = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.sandybrown}";
      };
      goldenrod = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.goldenrod}";
      };
      darkgoldenrod = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkgoldenrod}";
      };
      peru = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.peru}";
      };
      chocolate = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.chocolate}";
      };
      saddlebrown = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.saddlebrown}";
      };
      sienna = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.sienna}";
      };
      brown = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.brown}";
      };
      maroon = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.maroon}";
      };
      ## 蓝色 (blue)
      aqua = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.aqua}";
      };
      cyan = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.cyan}";
      };
      lightcyan = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightcyan}";
      };
      paleturquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.paleturquoise}";
      };
      aquamarine = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.aquamarine}";
      };
      turquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.turquoise}";
      };
      mediumturquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumturquoise}";
      };
      darkturquoise = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkturquoise}";
      };
      cadetblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.cadetblue}";
      };
      steelblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.steelblue}";
      };
      lightsteelblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightsteelblue}";
      };
      powderblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.powderblue}";
      };
      lightblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightblue}";
      };
      skyblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.skyblue}";
      };
      lightskyblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightskyblue}";
      };
      deepskyblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.deepskyblue}";
      };
      dodgerblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.dodgerblue}";
      };
      cornflowerblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.cornflowerblue}";
      };
      mediumslateblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumslateblue}";
      };
      royalblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.royalblue}";
      };
      blue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.blue}";
      };
      mediumblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumblue}";
      };
      darkblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkblue}";
      };
      navy = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.navy}";
      };
      midnightblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.midnightblue}";
      };
      ## 绿色 (green)
      greenyellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.greenyellow}";
      };
      chartreuse = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.chartreuse}";
      };
      lawngreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lawngreen}";
      };
      lime = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lime}";
      };
      limegreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.limegreen}";
      };
      palegreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.palegreen}";
      };
      lightgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightgreen}";
      };
      mediumspringgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumspringgreen}";
      };
      springgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.springgreen}";
      };
      mediumseagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumseagreen}";
      };
      seagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.seagreen}";
      };
      forestgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.forestgreen}";
      };
      green = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.green}";
      };
      darkgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkgreen}";
      };
      yellowgreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.yellowgreen}";
      };
      olivedrab = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.olivedrab}";
      };
      olive = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.olive}";
      };
      darkolivegreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkolivegreen}";
      };
      mediumaquamarine = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumaquamarine}";
      };
      darkseagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkseagreen}";
      };
      lightseagreen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightseagreen}";
      };
      darkcyan = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkcyan}";
      };
      teal = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.teal}";
      };
      ## 粉色 (pink)
      pink = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.pink}";
      };
      lightpink = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightpink}";
      };
      hotpink = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.hotpink}";
      };
      deeppink = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.deeppink}";
      };
      mediumvioletred = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumvioletred}";
      };
      palevioletred = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.palevioletred}";
      };
      ## 紫色 (purple)
      lavender = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lavender}";
      };
      thistle = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.thistle}";
      };
      plum = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.plum}";
      };
      violet = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.violet}";
      };
      orchid = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.orchid}";
      };
      fuchsia = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.fuchsia}";
      };
      magenta = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.magenta}";
      };
      mediumorchid = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumorchid}";
      };
      mediumpurple = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mediumpurple}";
      };
      rebeccapurple = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.rebeccapurple}";
      };
      blueviolet = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.blueviolet}";
      };
      darkviolet = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkviolet}";
      };
      darkorchid = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkorchid}";
      };
      darkmagenta = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkmagenta}";
      };
      purple = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.purple}";
      };
      indigo = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.indigo}";
      };
      slateblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.slateblue}";
      };
      darkslateblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkslateblue}";
      };
      ## 白色 (white)
      white = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.white}";
      };
      snow = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.snow}";
      };
      honeydew = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.honeydew}";
      };
      mintcream = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mintcream}";
      };
      azure = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.azure}";
      };
      aliceblue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.aliceblue}";
      };
      ghostwhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.ghostwhite}";
      };
      whitesmoke = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.whitesmoke}";
      };
      seashell = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.seashell}";
      };
      beige = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.beige}";
      };
      oldlace = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.oldlace}";
      };
      floralwhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.floralwhite}";
      };
      ivory = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.ivory}";
      };
      antiquewhite = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.antiquewhite}";
      };
      linen = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.linen}";
      };
      lavenderblush = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lavenderblush}";
      };
      mistyrose = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.mistyrose}";
      };
      ## 黄色 (yellow)
      gold = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.gold}";
      };
      yellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.yellow}";
      };
      lightyellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightyellow}";
      };
      lemonchiffon = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lemonchiffon}";
      };
      lightgoldenrodyellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.lightgoldenrodyellow}";
      };
      papayawhip = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.papayawhip}";
      };
      moccasin = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.moccasin}";
      };
      peachpuff = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.peachpuff}";
      };
      palegoldenrod = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.palegoldenrod}";
      };
      khaki = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.khaki}";
      };
      darkkhaki = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.darkkhaki}";
      };

      ## Catppuccin Macchiato Color
      CM_base = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_base}";
      };
      CM_mantle = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_mantle}";
      };
      CM_crust = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_crust}";
      };
      CM_text = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_text}";
      };
      CM_subtext0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_subtext0}";
      };
      CM_subtext1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_subtext1}";
      };
      CM_surface0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_surface0}";
      };
      CM_surface1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_surface1}";
      };
      CM_surface2 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_surface2}";
      };
      CM_overlay0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_overlay0}";
      };
      CM_overlay1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_overlay1}";
      };
      CM_overlay2 = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_overlay2}";
      };
      CM_blue = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_blue}";
      };
      CM_lavender = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_lavender}";
      };
      CM_sapphire = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_sapphire}";
      };
      CM_sky = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_sky}";
      };
      CM_teal = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_teal}";
      };
      CM_green = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_green}";
      };
      CM_yellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_yellow}";
      };
      CM_peach = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_peach}";
      };
      CM_maroon = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_maroon}";
      };
      CM_red = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_red}";
      };
      CM_mauve = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_mauve}";
      };
      CM_pink = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_pink}";
      };
      CM_flamingo = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_flamingo}";
      };
      CM_rosewater = mkOption {
        type = types.str;
        readOnly = true;
        default = "#${cfg.rgb.CM_rosewater}";
      };

    };

argb = {

      ## Catppuccin Macchiato Color
      CM_base = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_base}";
      };
      CM_mantle = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_mantle}";
      };
      CM_crust = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_crust}";
      };
      CM_text = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_text}";
      };
      CM_subtext0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_subtext0}";
      };
      CM_subtext1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_subtext1}";
      };
      CM_surface0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_surface0}";
      };
      CM_surface1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_surface1}";
      };
      CM_surface2 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_surface2}";
      };
      CM_overlay0 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_overlay0}";
      };
      CM_overlay1 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_overlay1}";
      };
      CM_overlay2 = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_overlay2}";
      };
      CM_blue = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_blue}";
      };
      CM_lavender = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_lavender}";
      };
      CM_sapphire = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_sapphire}";
      };
      CM_sky = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_sky}";
      };
      CM_teal = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_teal}";
      };
      CM_green = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_green}";
      };
      CM_yellow = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_yellow}";
      };
      CM_peach = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_peach}";
      };
      CM_maroon = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_maroon}";
      };
      CM_red = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_red}";
      };
      CM_mauve = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_mauve}";
      };
      CM_pink = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_pink}";
      };
      CM_flamingo = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_flamingo}";
      };
      CM_rosewater = mkOption {
        type = types.str;
        readOnly = true;
        default = "0xFF${cfg.rgb.CM_rosewater}";
      };

};

  };

}