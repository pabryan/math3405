︠c8265abf-dc16-434a-9d56-48240b5d6e67︠
# Euclid Axiom 1
p1 = (0, 0)
p2 = (1, 1)

P1 = point(p1, size=50)
P2 = point(p2, size=50)
L = line([p1, p2], linestyle="dashed")

p = plot(P1 + P2 + L)
p.show(axes=False, aspect_ratio=1)
p.save("img/euclid1.png", axes=False, aspect_ratio=1)

︡3be1d213-85fd-46a7-9308-235826382fbe︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_M986oU.svg","show":true,"text":null,"uuid":"3289cafb-c168-492f-8ff6-96031d5a4b85"},"once":false}︡{"done":true}︡
︠76761b7c-49f4-4f88-b94b-9c2197ed1cf8︠
# Euclid 2
p1 = (0, 0)
p2 = (1, 1)
p3 = (2, 2)

L = line([p1, p2])
Lext = line([p2, p3], linestyle="dashed")

p = plot(L + Lext)
p.show(axes=False, aspect_ratio=1)
p.save("img/euclid2.png", axes=False, aspect_ratio=1)
︡4605b852-decc-42c9-ad9d-d0055f9cbd28︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_tw7pcX.svg","show":true,"text":null,"uuid":"9f012f1a-f87c-4343-9703-773861c28bc2"},"once":false}︡{"done":true}︡
︠a799fb45-7074-4a8a-a97e-0a675fb1bd64︠
# Euclide 3
p1 = (0, 0)
r1 = 1

P1 = point(p1, size=50)
C1 = circle(p1, r1)

p = plot(P1 + C1)
p.show(axes=False, aspect_ratio=1)
p.save("img/euclid3.png", axes=False, aspect_ratio=1)
︡2b3eeb16-6bd6-44b4-ad79-cffdca2ba73b︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_oPS4Xg.svg","show":true,"text":null,"uuid":"6f5c233b-80fc-4875-ad47-210075fc0b3a"},"once":false}︡{"done":true}︡
︠af54e6fb-7bb5-42be-af34-ff4744c0962a︠
# Euclid 4

p0 = (0, 0)
p1 = (-1, 0)
p2 = (1, 0)
p3 = (0, 1)

P0 = point(p0, size=50)
L0 = line([p1, p2])
L1 = line([p0, p3], linestyle="dashed")

p = plot(P0 + L0 + L1)
p.show(axes=False, aspect_ratio=1)
p.save("img/euclid4.png", axes=False, aspect_ratio=1)
︡eb8ac805-6575-4bb1-b909-38d354452443︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_1Ig4yN.svg","show":true,"text":null,"uuid":"7f88130f-d407-45e1-a2cc-f1e2e8265074"},"once":false}︡{"done":true}︡
︠069f259d-8900-4073-9a93-db323fa9e345︠
# Euclid 5
p1 = (0, 0)
p2 = (1, 1)

p3 = (0, 1)
p4 = (1, 2)
p5 = (1/2, 3/2)

L1 = line([p1, p2])
L2 = line([p3, p4], linestyle="dashed")
P5 = point(p5, size=50)

p = plot(L1 + L2 + P5)
p.show(axes=False)
p.save("img/euclid5.png", axes=False)
︡43fe9902-1a9a-472a-a946-0dd003aef16d︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_Pk3_Gd.svg","show":true,"text":null,"uuid":"3727f832-8fa1-43e3-9605-8e0757285207"},"once":false}︡{"done":true}︡
︠eb2def55-d0e9-4e62-bb76-faeb4147b306︠
p1 = (0, 0)
p2 = (1/2, 1)
p3 = (-1, 1/2)

L1 = line([p1, p2])
L2 = line([p2, p3])
L3 = line([p3, p1])

r0 = 0.2

def angle_arc(p, q1, q2, r0, label=r"$\theta$"):
    thetamax = arctan2((q2[1]-p[1]), (q2[0]-p[0]))
    thetamin = arctan2((q1[1]-p[1]), (q1[0]-p[0]))
    thearc = arc(p, r0, sector=(thetamin, thetamax), color="black")
    thetalabel = text(label, vector(p) + (r0/2) *(vector(q2) - vector(p) + vector(q1) - vector(p)).normalized(), color="black")

    return thearc + thetalabel

arc1 = angle_arc(p1, p2, p3, r0, label=r"$\theta_1$")
arc2 = angle_arc(p2, p3, p1, r0, label=r"$\theta_2$")
arc3 = angle_arc(p3, p1, p2, r0, label=r"$\theta_3$")

p = plot(L1+L2+L3)
p += plot(arc1 + arc2 + arc3)
p.show(axes=False)
p.save("img/euclidean_triangle.png", axes=False)
︡8ddc9e82-dfb7-425c-ba50-8d21b1f7646a︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/11205/tmp_2H27QS.svg","show":true,"text":null,"uuid":"29ea3735-501a-4c11-9c88-dca6034bd2dc"},"once":false}︡{"done":true}︡
︠8763f44c-e075-4d2b-81f0-d72d63b0bfec︠
%var t

S2 = Manifold(2, 'S^2')
U = S2.open_subset('U')
XS.<th,ph> = U.chart(r'th:(0,2*pi):\theta ph:(0,pi):\phi')
R3 = Manifold(3, 'R^3')
X3.<x,y,z> = R3.chart()
F = S2.diff_map(R3, {(XS, X3): [sin(ph)*cos(th), sin(ph)*sin(th), cos(ph)]}, name='F')

p1 = (28*pi/16, pi/2)
p2 = (25*pi/16, pi/4)
p3 = (31*pi/16, pi/4)

p1 = (18*pi/11, 0.01)
p2 = (18*pi/11, 5*pi/11)
p3 = (21.9*pi/11, 0.01)
p4 = (21.9*pi/11, 5*pi/11)


def sphere_arc(p, q):
    P = S2.point(p, name="P")
    T = P.plot(X3, mapping=F, size=20, color="red")
    L = t*vector(p) + (1-t)*vector(q)
    c = S2.curve([L[0], L[1]], (t, 0, 1), name='c')
    graph = c.plot(mapping=F, max_range=40, plot_points=200, thickness=2, label_axes=False)

    return graph

T1 = sphere_arc(p1, p2)
T2 = sphere_arc(p3, p4)
T3 = sphere_arc(p2, p4)

graph_S2 = XS.plot(X3, mapping=F, number_values=11, color='gray')

p = graph_S2 + T1 + T2 + T3
p.show(frame=False)
p.save("img/sphere_triangle.png", frame=False, aspect_ratio=1)

︡7f665fe6-025b-43ce-97c5-1a0a9616863e︡{"file":{"filename":"a6ea0834-50eb-470e-9fbf-a860a25b90d5.sage3d","uuid":"a6ea0834-50eb-470e-9fbf-a860a25b90d5"}}︡{"done":true}︡
︠a6bf2004-8ac8-46a5-b919-2899a6ab12bbr︠
%var t

PS2 = Manifold(2, 'PS^2')
U = PS2.open_subset('U')
XS.<th,r> = U.chart(r'th:(0,2*pi):\theta r:(0,4):r')
R3 = Manifold(3, 'R^3')
X3.<x,y,z> = R3.chart()
F = PS2.diff_map(R3, {(XS, X3): [sech(r)*cos(th), sech(r)*sin(th), r - tanh(r)]}, name='F')

p1 = (20*pi/11, 3)
p2 = (18*pi/11, 1)
p3 = (21.9*pi/11, 1)

def pseudosphere_arc(p, q):
    P = PS2.point(p, name="P")
    T = P.plot(X3, mapping=F, size=20, color="red")
    L = t*vector(p) + (1-t)*vector(q)
    c = PS2.curve([L[0], L[1]], (t, 0, 1), name='c')
    graph = c.plot(mapping=F, max_range=40, plot_points=200, thickness=2, label_axes=False)

    return graph

T1 = pseudosphere_arc(p1, p2)
T2 = pseudosphere_arc(p2, p3)
T3 = pseudosphere_arc(p3, p1)

graph_PS2 = XS.plot(X3, mapping=F, number_values=11, color='gray')

p = graph_PS2 + T1 + T2 + T3
p.show(frame=False)
p.save("img/pseudosphere_triangle.png", frame=False, aspect_ratio=1)
︡7900cb6e-0738-4642-96fa-f16090e93703︡










