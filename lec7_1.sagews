︠68a73697-b1fe-4b8c-a6a1-73817acc2ae4s︠
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
︡72e486c3-6be5-4681-829a-03eef5fcbc0f︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/3761/tmp_nlNrWi.svg","show":true,"text":null,"uuid":"b629004e-8c0b-4861-b99f-6742be781a25"},"once":false}︡{"done":true}︡
︠cc5378be-0bf4-44a5-b02a-2a6a9ecc09c9s︠
# Frenet Frame Picture
%var u
%var a, b

gamma = vector([sin(a * u), cos( a* u), b * u])
gammap = gamma.diff(u)
gammapp = gammap.diff(u)

#v = gammap.norm()
#%var t
#assume(t>0)
#s = integrate(v, (u, 0, t))
#s = s.subs(t==u)

v = sqrt(a^2 + b^2)
s = v * u

sigma = gamma.subs({a:1, b:1/10})
sigmap = gammap.subs({a:1, b:1/10})
sigmapp = gammapp.subs({a:1, b:1/10})
w = v.subs({a:1, b:1/10})

T = (1/w) * sigmap
N = (1/sigmapp.norm()) * sigmapp
Btemp = N.cross_product(T)
B = Btemp/Btemp.norm()

curve = parametric_plot3d(sigma, (u, 0, 15), thickness=5, color='green', frame=False)

u0 = 6.5
P = gamma.subs({a:1, b:1/10}) (u=u0)

Tplot = arrow(P, P + T(u=u0), color="black")
Nplot = arrow(P, P + N(u=u0), color="black")
Bplot = arrow(P, P + B(u=u0), color="black")

P = curve + Tplot + Nplot + Bplot
P.show()
P.save("img/frenet_serret.png")
︡0bf51244-9513-4f88-847c-acba753b17de︡{"file":{"filename":"5d64a38b-71b9-4005-aa00-26202576f175.sage3d","uuid":"5d64a38b-71b9-4005-aa00-26202576f175"}}︡{"done":true}︡
︠28921584-7f38-4e16-91ac-4f9156f358b8︠









