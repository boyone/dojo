def wrap_with_size(filename, line_size):
    line = open(filename, "r").readline()
    line_size = int(line_size)
    lines = new_line(line, line_size)
    return lines

def new_line_size(line, line_size):
    size = len(line)/line_size
    if (len(line) % line_size) > 0:
        size += 1
    return size

def new_line(line, line_size):
    size = new_line_size(line, line_size)

    lines = []
    for i in range(size):
        start = i*line_size
        end = (i + 1) * line_size
        lines.append(line[start:end])

    return lines