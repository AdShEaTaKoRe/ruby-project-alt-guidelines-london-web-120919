class Colors

    def self.primary(str)
        return Paint[str, "#f06543"]
    end

    def self.secondary(str)
        return Paint[str, "#f09d51"]
    end

    def self.light(str)
        return Paint[str, "#e8e9eb"]
    end

    def self.dark(str)
        return Paint[str, "#727d82"]
    end
end