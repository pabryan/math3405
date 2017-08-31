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

Tplot = arrow(P, P P + T(u=u0), color="black")
Nplot = arrow(P, P + N(u=u0), color="black")
Bplot = arrow(P, P + B(u=u0), color="black")

P = curve + Tplot + Nplot + Bplot
P.show()
P.save("img/frenet_serret.png")
︡7df2007b-5785-4963-8015-9bd9e27246a8︡{"file":{"filename":"881d61d0-2fbe-4e1a-abd1-886d2fd91043.sage3d","uuid":"881d61d0-2fbe-4e1a-abd1-886d2fd91043"}}︡{"done":true}︡
︠28921584-7f38-4e16-91ac-4f9156f358b8s︠
# Curvature of a Plane Curve
%var t
gamma = vector([4*t, t + 3 * sin(t)])
gammap = gamma.diff(t)

v = gammap.norm()
T = (1/v) * gammap
R = matrix([[0, -1], [1, 0]])
N = R * T

K = (1/v) * T.diff(t)

tmin = 0
tmax = 5
n = 6

from numpy import linspace
tvals = linspace(tmin, tmax, n)

P = Graphics()

curve = parametric_plot(gamma, (t, 0, 5), thickness=2, color='green')
tangents = [arrow(gamma(t=i), gamma(t=i) + 2 * T(t=i), color="black") for i in tvals]
normals = [arrow(gamma(t=i), gamma(t=i) + 2 * N(t=i), color="black") for i in tvals]
curvatures = [arrow(gamma(t=i), gamma(t=i) + 20 * K(t=i), color="red") for i in tvals]

P += curve
for p in tangents: P += p
for p in normals: P += p
for p in curvatures: P += p

legend = Graphics()
legend += arrow((15, 6), (17,6), color="black")
legend += text("T", (16, 5.5), color="black")
legend += arrow((15, 6), (15,8), color="black")
legend += text("N", (14, 7), color="black")
legend += arrow((19,6), (19,8), color="red")
legend += text(r"$\kappa$N", (20, 7), color="red")

P += legend

P.show()
P.save("img/plane_curvature.png", axes=False)
︡be839ceb-260c-4671-b316-0d0bfdb2275b︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/533/tmp_LKubaw.svg","show":true,"uuid":"acaf1369-c255-4731-92b6-8a381c0c2cb3"},"once":false}︡{"done":true}︡{"stderr":"Error in lines 13-13\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 995, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: 'Graphics' object is not callable\n"}︡{"done":true}
︠910c7f85-1180-4687-816c-308a58d14e0b︠









