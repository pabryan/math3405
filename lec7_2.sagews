︠1ce82a7a-f77a-4532-96cc-097bb9a83c91︠
u,v,t = var('u,v, t')

umin = 0
umax = 2*pi

vmin = -1
vmax = 1

u0 = pi
v0 = 0

M = vector([(1 + (v/2) * cos(u/2))*cos(u), (1 + (v/2) * sin(u/2))*sin(u), (v/2) * sin(u/2)])
Tu = M.diff(u)
Tv = M.diff(v)
N = Tu.cross_product(Tv)

from numpy import linspace
n = 15
uvals = [(2*pi*i)/n for i in range(n)]

nu = 15
nv = 5
band = parametric_plot3d(M, (u, umin, umax), (v, vmin,vmax), color='orange', opacity=0.5)
ugrid = [parametric_plot3d(M.subs({v:vmin+(i/nv)*(vmax-vmin)}), (u, umin, umax), color='black') for i in range(nv)]
vgrid = [parametric_plot3d(M.subs({u:umin+(i/nu)*(umax-umin)}), (v, vmin, vmax), color='black') for i in range(nu)]
mobius = band + sum(ugrid) + sum(vgrid)

gammau = parametric_plot3d(M.subs({v:v0}), (u, umin, umax), color='red')

def arrows(t):
    gu = M.subs({v:v0})
    tang = arrow3d(gu(u=t), gu(u=t) + (Tu.subs({v:v0}))(u=t), color="red")
    nor = arrow3d(gu(u=t), gu(u=t) + (Tv.subs({v:v0}))(u=t), color="blue")
    surfacenor = arrow3d(gu(u=t), gu(u=t) + (N.subs({v:v0}))(u=t), color="green")

    return tang + nor + surfacenor

︡800c4bd1-c81a-4cdc-b874-f2515e25cc8e︡{"done":true}︡
︠c014dfbd-d50f-49a5-b99e-738442a3f892︠

P = mobius + gammau #+ sum([arrows(t) for t in uvals])
P.show(frame=False)
P.save("img/mobius.png")


︡a9f6aaba-770c-401c-995d-10a6bc0240c4︡{"file":{"filename":"d73b342d-65eb-48ce-878f-a25f9f05bdad.sage3d","uuid":"d73b342d-65eb-48ce-878f-a25f9f05bdad"}}︡{"done":true}︡
︠5794c809-e905-4271-9e54-76c5a580afd5︠
from numpy import linspace, concatenate
n = 200

l = linspace(0, numerical_approx(4*pi), n)

# Hack to keep plot centered
S = sphere(size=2, opacity=0.0)

A = animate([mobius + gammau + arrows(0) + arrows(i) + S for i in l], frame=False, aspect_ratio=(1,1,1))
A.show(delay=20, iterations=5)
︡c83ad894-fc88-4241-bf55-e3fd61507b8e︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/481/tmp_LmyeOu.webm","show":true,"text":null,"url":"/746c2d02-fba9-41f7-86c8-dbce79185bad/raw/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/481/tmp_LmyeOu.webm"},"once":false}︡{"done":true}︡
︠e276323f-1a2f-45c2-9d50-90a9cc5c6829︠

A.save('img/mobius.avi', delay=20, iterations=5)
A.save('img/mobius.gif', delay=20, iterations=5)
︡8b7d0f23-5788-4ef3-bd65-42165f2305ae︡{"done":true}︡
︠82b2ddf6-ea3d-4db1-a5b8-1796cac20f86s︠
# Oriented Tangent Plane
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

Lu0 = parametric_plot3d(p0 + t * Tu0, (t, -1,1), color="black")
Lv0 = parametric_plot3d(p0 + t * Tv0, (t, -1,1), color="black")

T0 = parametric_plot3d(p0 + u * Tu0 + v * Tv0, (u, -1,1), (v, -1, 1), color="lightgray", opacity=0.7)

tmin = (0.1)*(pi/2)
tmax = (0.9)*(pi/2)
gamma = p0 + (1/2)* cos(t) * Tu0 + (1/2) * sin(t) * Tv0
gammap = gamma.diff(t)
arc = parametric_plot3d(gamma, (t, tmin, tmax), color="red", thickness=2) + arrow3d(gamma(t=tmax), gamma(t=tmax) + (0.2)*gammap(t=tmax), color="red", width=5, arrow_radius=50)

P = S + Lu0 + Lv0 + T0 + arc

P.show()
P.save('img/oriented_tangent_plane.png', dpi=500)
︡65bfe954-174c-47a6-a4dd-bafd64895b46︡{"file":{"filename":"8aef8964-0154-441d-b170-85e50e2d6ffe.sage3d","uuid":"8aef8964-0154-441d-b170-85e50e2d6ffe"}}︡{"done":true}︡
︠083a16d7-c20c-4cc2-aa74-3f20baaa834c︠









