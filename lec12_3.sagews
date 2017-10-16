︠c8265abf-dc16-434a-9d56-48240b5d6e67s︠
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
︠76761b7c-49f4-4f88-b94b-9c2197ed1cf8s︠
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
︠a799fb45-7074-4a8a-a97e-0a675fb1bd64s︠
# Euclide 3
p1 = (0, 0)
r1 = 1

P1 = point(p1, size=50)
C1 = circle(p1, r1)

p = plot(P1 + C1)
p.show(axes=False, aspect_ratio=1)
p.save("img/euclid3.png", axes=False, aspect_ratio=1)
︡2b3eeb16-6bd6-44b4-ad79-cffdca2ba73b︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_oPS4Xg.svg","show":true,"text":null,"uuid":"6f5c233b-80fc-4875-ad47-210075fc0b3a"},"once":false}︡{"done":true}︡
︠af54e6fb-7bb5-42be-af34-ff4744c0962as︠
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
︠069f259d-8900-4073-9a93-db323fa9e345s︠
# Euclid 5
p1 = (0, 0)
p2 = (1, 1)

p3 = (1, 1)
p4 = (2, 2)
p5 = (3/2, 3/2)

L1 = line([p1, p2])
L2 = line([p3, p4], linestyle="dashed")
P5 = point(p5, size=50)

p = plot(L1 + L2 + P5)
p.show(axes=False)
p.save("img/euclid5.png", axes=False)
︡f31ede1e-3634-402e-9d4c-864350a66000︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_y8B_F6.svg","show":true,"uuid":"293ce0d7-cd06-48a2-945f-636656b0ac01"},"once":false}︡{"done":true}









