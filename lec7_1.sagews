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

P.show(axes=False)
P.save("img/plane_curvature.png", axes=False)
︡ba482ba7-1551-4098-9104-ba104fa51347︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/103/tmp_NcvGE2.svg","show":true,"text":null,"uuid":"86265af5-a203-4541-9832-e04437d23d4d"},"once":false}︡{"done":true}︡
︠910c7f85-1180-4687-816c-308a58d14e0b︠
# Regular Surface
u, v, z = var('u,v,z')

umin = -1
umax = 1
vmin = -1
vmax = 1

num_points=100

S = plot3d(u^2-v^2, (u,umin,umax), (v,vmin,vmax), plot_points=num_points, frame=False, aspect_ratio=(2, 2, 1), color='lightgray')

r = 5/12

umin = -2/3
umax = 1/3
vmin = -1
vmax = 0
zmin=-1
zmax=1

uX = umin + (umax-umin)/3
vX = vmin + (vmax-vmin)/2

Xregion = lambda u,v,z: r^2 - (u-uX)^2 - (v-vX)^2
Yregion = lambda u,v,z: r^2 - (u-uY)^2 - (v-vY)^2
Zregion = lambda u,v,z: min(Xregion(u,v,z), Yregion(u,v,z))

uY = umax - (umax-umin)/3
vY = -1/2

f = lambda u,v, z: u^2 - v^2 - z

X = implicit_plot3d(f, (u,umin,umax), (v,vmin,vmax), (z,zmin,zmax), region = Xregion, frame=False, aspect_ratio=(2, 2, 1), color='blue', plot_points=2*num_points)
Y = implicit_plot3d(f, (u,umin,umax), (v,vmin,vmax), (z,zmin,zmax), region = Yregion, frame=False, aspect_ratio=(2, 2, 1), color='blue', plot_points=2*num_points)
Z = implicit_plot3d(f, (u,umin,umax), (v,vmin,vmax), (z,zmin,zmax), region = Zregion, frame=False, aspect_ratio=(2, 2, 1), color='darkblue', plot_points=2*num_points)


P = S + X + Y + Z

#P.show()
P.save('img/regular_surface.png')

︡3e02d50d-0b7d-4fe6-8660-652c1218df91︡{"done":true}︡
︠e142692e-88f6-4172-894f-c52426b43909s︠
# Change of Parameters
u,v = var('u,v')

U1 = circle((-1/2,-1/2), 1/4, color="blue") + text(r"$U_{\alpha}$", ((-1/2, -1/2)), color="blue")
U2 = circle((1/2,-1/2), 1/4, color="red") + text(r"$U_{\beta}$", ((1/2, -1/2)), color="red")

U12 = region_plot(lambda u,v : min((1/4)^2 - (u+1/2)^2 - (v+1/2)^2, (1/4)^2 - (u+1/7)^2 - (v+1/2)^2) >= 0, (u,-1, 1), (v,-1, 1), plot_points=500, incol='gray')
U21 = region_plot(lambda u,v : min((1/4)^2 - (u-1/2)^2 - (v+1/2)^2, (1/4)^2 - (u-1/7)^2 - (v+1/2)^2) >= 0, (u,-1, 1), (v,-1, 1), plot_points=500, incol='gray')

S = ellipse((0,1/2), 1, 1/3, color="black") + text("S", (-1/2, 1/2), color="black")

V1 = circle((-1/7,1/2), 1/5, color="blue") + text(r"$V_{\alpha}$", ((-1/7, 1/2)), color="blue")
V2 = circle((1/7,1/2), 1/5, color="red") + text(r"$V_{\beta}$", ((1/7, 1/2)), color="red")

V12 = region_plot(lambda u,v : min((1/5)^2 - (u+1/7)^2 - (v-1/2)^2, (1/5)^2 - (u-1/7)^2 - (v-1/2)^2) >= 0, (u,-1, 1), (v,-1, 1), plot_points=500, incol='gray')

epsilon = 1/8
A1 = arrow((-1/4-epsilon,-epsilon), (-1/4+epsilon,epsilon), color="blue") + text(r"$\varphi_{\alpha}$", (-1/2, 0), color="blue")
A2 = arrow((1/4+epsilon,-epsilon), (1/4-epsilon,epsilon), color="red") + text(r"$\varphi_{\beta}$", (1/2, 0), color="red")

A = arrow((-epsilon, -1/2), (epsilon, -1/2), color="black") + text(r"$\tau_{\alpha\beta} = \varphi_{\beta}^{-1} \circ \varphi_{\alpha}$", (0, -1/2 - 2*epsilon), color="black")

P = S + U1 + U2 + U12 + U21 + V1 + V2 + V12 + A1 + A2 + A

P.show(axes=False)
P.save('img/change_of_param.png', axes=False)

︡9589e916-a32f-4b56-8bcf-4db425db69cb︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/119/tmp_Yo8Hnb.svg","show":true,"text":null,"uuid":"5c2c7941-aae8-40eb-b739-75a12d0ddd50"},"once":false}︡{"done":true}︡
︠99825023-d998-4bb8-91b4-df73db61b010s︠
# Tangent Plane
u, v, z, t = var('u,v,z,t')

umin = -1
umax = 1
vmin = -1
vmax = 1

num_points=40

f(u, v) = 2 - u^2-v^2
fu = f.diff(u)
fv = f.diff(v)
Tu = vector([1, 0, fu])
Tv = vector([0, 1, fv])

S = plot3d(f, (u,umin,umax), (v,vmin,vmax), plot_points=num_points, frame=False, aspect_ratio=(2, 2, 1), color='blue')

u0 = 1/2
v0 = 1/5
f0 = f(u=u0, v=v0)
p0 = vector([u0, v0, f0])

Tu0 = Tu(u=u0, v=v0)
Tv0 = Tv(u=u0, v=v0)

Lu0 = parametric_plot3d(p0 + t * Tu0, (t, -1,1), color="gray")
Lv0 = parametric_plot3d(p0 + t * Tv0, (t, -1,1), color="gray")

T0 = parametric_plot3d(p0 + u * Tu0 + v * Tv0, (u, -1,1), (v, -1, 1), color="lightgray", opacity=0.7)

P = S + Lu0 + Lv0 + T0

P.show()
P.save('img/tangent_plane.png')
︡5250f1df-4658-4d93-86e5-f4c6e2b7b28c︡{"file":{"filename":"23eccab4-59b6-4e23-a903-9dadb4219a49.sage3d","uuid":"23eccab4-59b6-4e23-a903-9dadb4219a49"}}︡{"done":true}︡









