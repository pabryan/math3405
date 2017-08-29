︠df190b74-2cda-4391-bac3-285106650140s︠
# Regular Curve Picture

# Parameter space
a = 1
b = 2

textoffset = 0.3

p = line([(a-1, 0), (b+1, 0)])
p += line([(a, 0), (b, 0)], color='green', thickness=3)

p += text("(", (a, 0))
p += text(")", (b, 0))

p += text("a", (a, -textoffset), fontsize=15)
p += text("b", (b, -textoffset), fontsize=15)

# Mapping Arrow
lshift = b + 1 + textoffset
rshift = b + 2 + textoffset
midshift  = lshift + (rshift-lshift)/2
upshift = 1/2

m = text(r"$\gamma$", (midshift, upshift + textoffset), color="black", fontsize=15)
m += arrow((lshift, upshift), (rshift, upshift), color="black")

# First frame
#f1 = p + m
#f1.axes(False)


# Image
lshift = b + 5
upshift = 1
i = parametric_plot([cos(x) + 2*cos(x/4) + lshift, sin(x) - 2*sin(x/4) + upshift], (x,0,4*pi), color='green', thickness=3)
#f2.axes(False)

# Build the plot
#g = graphics_array([f1, f2])
#g.show(aspect_ratio=1, axes_pad=0.1)
plot = p + m + i
plot.axes(False)
plot.show()

plot.save("img/regular_curve.png")
︡5004958a-ef73-4af2-9d2c-cea386bd1c75︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/778/tmp_gYAdsd.svg","show":true,"text":null,"uuid":"b6d7eb41-0471-4ecc-b740-63f5617e189d"},"once":false}︡{"done":true}︡









