{smcl}
{* *! version 0.0.1  26OCT2015}{...}
{cmd:help brewterpolate}
{hline}

{title:Title}

{hi:brewterpolate {hline 2}} Stata program to interpolate an arbitrary number of 
colors between a starting and ending color.   

{title:Syntax}

{p 4 4 4}{cmd:brewterpolate} , {cmdab:sc:olor(}{it:string}{opt )} 
{cmdab:ec:olor(}{it:string}{opt )} {cmdab:c:olors(}{it:int}{opt )} 
[{cmdab:lum:inance(}{it:string}{opt )} {cmdab:ics:pace(}{it:string}{opt )} 
{cmdab:rcs:pace(}{it:string}{opt )} {cmdab:inv:erse}] {break}

{title:Description}
{p 4 4 4}{cmd:brewterpolate} is a program used to interpolate color values between 
the start and end colors for an arbitrary number of points.  The program can 
accept input in several formats and provides output in rgb, rgba, srgb, srgba, 
hsv, and hsva formats. {p_end}

{marker required}{title: Required Arguments}
{p 4 4 8}{cmdab:sc:olor} is a required argument that takes a value conforming to 
one of the formats listed in {help brewterpolate##icspace:Input Color Spaces}.{p_end}

{p 4 4 8}{cmdab:sc:olor} is a required argument that takes a value conforming to 
one of the formats listed in {help brewterpolate##icspace:Input Color Spaces}.{p_end}

{p 4 4 8}{cmd:colors} is a required argument that takes a value to define the 
number of points between the starting and ending colors to interpolate. {p_end}

{marker optional}{title: Optional Arguments}
{p 4 4 8}{cmdab:lum:inance} is an optional argument that can take one of the 
following values:  brighter, darker, or nothing.  A value of "brighter" will 
return colors that are arbitrarily brighter than the normal interpolated value 
when the return color space is RGB/RGBa or an arbitrarily more saturated color 
when the return color space is HSB/HSBa.  A value of "darker" will return colors 
that are arbitrarily darker than the normal interpolated colors when the return 
color space is RGB/RGBa or an arbitrarily less saturated color when the return 
color space is HSB/HSBa. {p_end}

{p 4 4 8}{cmdab:ics:pace} is an optional argument used to specify the input color 
space used for the starting and ending colors.  If no argument is passed, RGB is 
assumed. {p_end}

{p 4 4 8}{cmdab:rcs:pace} is an optional argument used to specify the return color 
space used for passing the interpolated colors back to Stata.  This can be any 
of the values listed in {help brewterpolate##icspace:Input Color Spaces} except 
for the web-based formats.  {p_end}

{p 4 4 8}{cmdab:inv:erse} is an optional argument used to return the inverse of 
the interpolated colors.  The method that controls this is implemented after the 
the luminance argument is processed.{p_end}

{marker icspace}
{col 10}{hline 80}
{col 10}{hi:Argument} {col 35}{hi: Input Colorspace}
{col 10}{hline 80}
{col 10}{hi:rgb}{col 35}{it:Red, Green, Blue (ex., 0 0 255).}
{col 10}{hi:rgba}{col 35}{it:Red, Green, Blue, Alpha (ex., 0 0 255 0.5)}
{col 10}{hi:srgb}{col 35}{it:RGB Decimal (ex., 0.0 0.0 1.0).}
{col 10}{hi:srgba}{col 35}{it:RGB Decimal (ex., 0.0 0.0 1.0 0.5).}
{col 10}{hi:hsb}{col 35}{it:Hue, Saturation, Brightness (ex., 270.0 1.0 1.0)}
{col 10}{hi:hsba}{col 35}{it:Hue, Saturation, Brightness (ex., 270.0 1.0 1.0 0.5)}
{col 10}{hi:web}{col 35}{it:Web formats (ex., hex, rgb, hsl)}
{col 10}{hi:hex}{col 35}{it:Hexadecimal (ex., 0x0000FF)}
{col 10}{hi:hexa}{col 35}{it:Hexadecimal w/Alpha (ex., 0x0000FF, 0.5)}
{col 10}{hi:hex web}{col 35}{it:Web Hexadecimal (ex., )}
{col 10}{hi:hexa web}{col 35}{it:Web Hexadecimal w/Alpha (ex., )}
{col 10}{hi:rgb web}{col 35}{it:Web RGB (ex., )}
{col 10}{hi:rgba web}{col 35}{it:Web RGB w/Alpha (ex., )}
{col 10}{hi:srgb}{col 35}{it:Web sRGB (ex., )}
{col 10}{hi:srgba}{col 35}{it:Web sRGB w/Alpha (ex., )}
{col 10}{hi:hsl}{col 35}{it:Hue, Saturation, Lightness (ex., hex, rgb, hsl)}
{col 10}{hi:hsla}{col 35}{it:Hue, Saturation, Lightness w/Alpha (ex., hex, rgb, hsl)}
{col 10}{hline 80}{break}
 
{marker examples}{title:Examples}{break}

{p 4 4 8}{stata brewterpolate, sc("197 115 47") ec("5, 37, 249") c(4)}{p_end}
{p 4 4 8}{stata brewterpolate, sc("197 115 47") ec("5, 37, 249") c(9) inv}{p_end}
{p 4 4 8}{stata brewterpolate, sc("197 115 47") ec("5, 37, 249") c(18) rcs("hsb")}{p_end}
{p 4 4 8}{stata brewterpolate, sc("197 115 47") ec("5, 37, 249") c(37) inv lum("brighter") rcs("hsb")}{p_end}
 
{marker references}{title:References}{break}
{p 4 4 4}{browse "http://docs.oracle.com/javafx/2/api/javafx/scene/paint/Color.html":Java Color Documentation}{p_end}
 
{title: Author}{break}
{p 1 1 1} William R. Buchanan, Ph.D. {break}
Data Scientist {break}
{browse "http://mpls.k12.mn.us":Minneapolis Public Schools} {break}
William.Buchanan at mpls [dot] k12 [dot] mn [dot] us
