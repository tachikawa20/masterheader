require "io/console"

class Mhead
    def self.header(info, flag="noskip", fnum=nil)
        projectname = info[0]
        filename = info[1]
        author = info[2]
        license = info[3]
        date = info[4]
        additionalinfo = info[5]

        n = info.count - 5
    
        puts "PROGRAM HEADER"
        puts "    Project Name: #{projectname}"
        puts "       File Name: #{filename}"
        puts "          Author: #{author}"
        puts "         License: #{license}"
        puts "            Date: #{date}"
    
        if (additionalinfo == true) 
            puts ""

            c = 0
        
            (n - (n / 2)).times do
                c = c + 1
                res0 = info[((2 * c) - 1) + 5]
                resa = info[(2 * c) + 5]

                if res0 != nil
                    k = 16 - res0.size 
                
                    if (k >= 0)
                        spc = " " * k
                        puts "#{spc}#{res0}: #{resa}"
                    else
                        puts "    NULLRESERVED: #{resa}"
                    end
                end
            end
        end

        puts ""
        puts "END."

        if (flag.include? "onboot")
            puts ""
            puts "Loading program..."
        end
    
        if (flag.include? "noskip")
            sleep(3)
        end

        if (flag.include? "glance")
            if (fnum != nil && fnum.class = Fixnum)
                sleep(fnum)
            else
                sleep(30)
            end
        end

        if (flag.include? "requirekey")
            puts "< PRESS ANY KEY TO CONTINUE >"
            STDIN.getch()
            puts ""
        end

        if (flag.include? "verbose")
            puts ""
            puts ""
            puts "::VARCHECK::"
        end

        if    RUBY_PLATFORM =~ /win32/
            if (flag.include? "verbose")
                puts "!KERNEL DETECTED WIN32!"
                sleep(2)
            end
            system("cls")
        elsif RUBY_PLATFORM =~ /linux/
            if (flag.include? "verbose")
                puts "!KERNEL DETECTED LINUX!"
                sleep(2)
            end
            system("clear")
        elsif RUBY_PLATFORM =~ /darwin/
            if (flag.include? "verbose")
                puts "!KERNEL DETECTED DARWIN!"
                sleep(2)
            end
            system("clear")
        elsif RUBY_PLATFORM =~ /freebsd/
            if (flag.include? "verbose")
                puts "!KERNEL DETECTED FREEBSD!"
                sleep(2)
            end
            system("clear")
        else
            if (flag.include? "verbose")
                puts "!KERNEL NOT LISTED!"
                puts "?GUESSING UNIX?"
                sleep(2)
            end
            system("clear")
        end
    end
end
