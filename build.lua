#!/usr/bin/env texlua

-- Build script for "chessboard" bundle

-- Identify the bundle and module
packageversion= "2.0"
packagedate   = "2024-11-07"

module   = "chessboard"
ctanpkg  = "chessboard"

local luatexstatus = status.list()
local ismiktex = string.match (luatexstatus.banner,"MiKTeX")

local ok, mydata = pcall(require, "ulrikefischerdata.lua")
if not ok then
  mydata= {email="XXX",github="XXX",name="XXX"}
end

print(mydata.email)

uploadconfig = {
  pkg     = ctanpkg,
  version = "v"..packageversion.." "..packagedate,
  author  = mydata.name,
  license = "lppl1.3c",
  summary = "chessboard – Print chess boards",
  ctanPath = "/macros/latex/contrib/chessboard",
  repository = mydata.github .. "chessboard",
  bugtracker = mydata.github .. "chessboard/issues",
  support    = mydata.github .. "chessboard/issues",
  uploader = mydata.name,
  email    = mydata.email,
  update   = true ,
  topic=    {"games"},
  note     = [[Uploaded automatically by l3build... description is unchanged despite the missing linebreaks, authors are unchanged]],
  description=[[This package offers commands to print chessboards.
                It can print partial boards, hide pieces and fields, color the boards
                and put various marks on the board. It has a lot of options to place
                pieces on the board. Using exotic pieces (e.g., for fairy chess) is possible.
                The documentation includes an example of an animated chessboard,
                for those whose PDF viewer can display animations.
              ]],
  announcement_file="ctan.ann"
}

docfiledir="./doc"
docfiles = {"UF-chessboard-documentation.sty","file.fen","brett.jpg",
            "chessboard-skakps.pdf","chessboard-skakps.tex",            
            }
typesetdemofiles ={"chessboard_and_beamer.tex"}

textfiles= {"doc/ctanreadme.md"}
ctanreadme= "ctanreadme.md"

typesetexe = "pdflatex"
packtdszip   = false
installfiles = {
                "chessboard.sty", "chessboard-keys-main.sty",
                "chessboard-keys-pgf.sty","chessboard-pgf.sty"
               }

sourcefiles  = {
                "*.dtx","*.ins"
               }

typesetfiles = {"chessboard.tex"}

typesetruns = 2

checkruns = 3
checkengines = {"luatex","pdftex","xetex"}

tagfiles = {"*.dtx",
            "doc/chessboard.tex",
            "doc/ctanreadme.md",
            "README.md"}

function update_tag (file,content,tagname,tagdate)
 tagdate = string.gsub (packagedate,"-", "/")
 if string.match (file, "%.dtx$" ) then
  content = string.gsub (content,
                         "\\ProvidesFile{(.-)}%[%d%d%d%d%/%d%d%/%d%d version v%d%.%d",
                         "\\ProvidesFile{%1}[" .. tagdate.." version v"..packageversion)
  content = string.gsub (content,
                         "\\ProvidesPackage{(.-)}%[%d%d%d%d%/%d%d%/%d%d version v%d%.%d",
                         "\\ProvidesPackage{%1}[" .. tagdate.." version v"..packageversion)
  return content
  elseif string.match (file, "^README.md$") then
   content = string.gsub (content,
                         "Version: %d%.%d+",
                         "Version: " .. packageversion )
   content = string.gsub (content,
                         "version%-%d%.%d+",
                         "version-" .. packageversion )
   content = string.gsub (content,
                         "for %d%.%d+",
                         "for " .. packageversion )
   content = string.gsub (content,
                         "%d%d%d%d%-%d%d%-%d%d",
                         packagedate )
   local imgpackagedate = string.gsub (packagedate,"%-","--")
   content = string.gsub (content,
                         "%d%d%d%d%-%-%d%d%-%-%d%d",
                         imgpackagedate)
   return content
  elseif string.match (file, "%.md$") then
   content = string.gsub (content,
                         "Packageversion: %d%.%d+",
                         "Packageversion: " .. packageversion )
   content = string.gsub (content,
                         "Packagedate: %d%d%d%d%-%d%d%-%d%d",
                         "Packagedate: " .. packagedate )
   return content
 elseif string.match (file, "%.tex$" ) then
   content = string.gsub (content,
                         "UFcurrentversion{%d%.%d+}",
                         "UFcurrentversion{" .. packageversion .."}" )
   content = string.gsub (content,
                         "UFcurrentversiondate{%d%d%d%d-%d%d-%d%d}",
                         "UFcurrentversiondate{" .. packagedate .."}" )
   return content
 end
 return content
 end
