Config {
       font = "xft:Zekton:size=13:bold:antialias=true"
       , additionalFonts = [ "xft:FontAwesome:size=12" ]
       , allDesktops = False
       , bgColor = "#282c34"
       , fgColor = "#bbc2cf"
       , position = TopW L 90
       -- icons: https://fontawesome.com/v4.7.0/cheatsheet/
       -- todo: use fontawesome v5
       , commands = [ Run Kbd [("us", "US"), ("el", "GR")]
                    , Run Cpu [ "-t", "<fc=#a9a1e1><fn=1>\xf21e</fn></fc> <total>%"
                              , "--Low","3"
                              , "--High","50"
                              , "--low","#bbc2cf"
                              , "--normal","#bbc2cf"
                              , "--high","#fb4934"] 50

                    , Run Memory ["-t","<fc=#51afef><fn=1>\xf2db</fn> </fc> <usedratio>%"
                                 ,"-H","80"
                                 ,"-L","10"
                                 ,"-l","#bbc2cf"
                                 ,"-n","#bbc2cf"
                                 ,"-h","#fb4934"] 50

                    , Run Date "<fn=1>\xf073</fn> %a %b %_d %H:%M" "date" 300
                    , Run DynNetwork ["-t","<fc=#4db5bd><fn=1>\xf063</fn></fc> <rx>, <fc=#c678dd><fn=1>\xf062</fn></fc> <tx>"
                                     ,"-H","200"
                                     ,"-L","10"
                                     ,"-h","#bbc2cf"
                                     ,"-l","#bbc2cf"
                                     ,"-n","#bbc2cf"] 50

                    , Run CoreTemp ["-t", "<fc=#CDB464><fn=1>\xf2c7</fn></fc> <core0>°"
                                   , "-L", "30"
                                   , "-H", "75"
                                   , "-l", "lightblue"
                                   , "-n", "#bbc2cf"
                                   , "-h", "#aa4450"] 50

                    -- battery monitor
                    , Run BatteryP       [ "ADP1", "BAT1" ]
                                         [ "--template" , "<fc=#B1DE76><fn=1>\xf240</fn></fc> <acstatus>"
                                         , "--Low"      , "10"        -- units: %
                                         , "--High"     , "80"        -- units: %
                                         , "--low"      , "#fb4934"   -- #ff5555
                                         , "--normal"   , "#bbc2cf"
                                         , "--high"     , "#98be65"

                                         , "--" -- battery specific options
                                                   -- discharging status
                                                   , "-o"   , "<left>%"
                                                   -- AC "on" status
                                                   , "-O"   , "<left>% (<fc=#98be65>Charging</fc>)" -- 50fa7b
                                                   -- charged status
--                                                   , "-i"   , "<fc=#98be65>Charged</fc>",
                                                    -- charged status
                                                    --"-i"	, "<fn=1>\xf240</fn>",
                                                    ,"--off-icon-pattern", "<fn=1>\xf240</fn>"
                                                    ,"--on-icon-pattern", "<fn=1>\xf0e7</fn>"
                                                    ,"--idle-icon-pattern", "<fn=1>\xf0e7</fn>"
                                         ] 50
                    , Run StdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% | %coretemp% | %memory% | %battery% | %date%  |"   -- #69DFFA
       }
