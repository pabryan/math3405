︠c8265abf-dc16-434a-9d56-48240b5d6e67s︠
# Euclid Axiom 1
p1 = (0, 0)
p2 = (1, 1)

P1 = point(p1, size=50)
P2 = point(p2, size=50)
L = line([p1, p2], linestyle="dashed")

p = plot(P1 + P2 + L)
p.show(axes=False)
p.save("img/euclid1.png", axes=False)

︡00c07b35-ccb6-4628-ba42-15c84a1df19b︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_cd15Q6.svg","show":true,"text":null,"uuid":"6de81d59-a69c-4074-a1d4-f24ba1e9214c"},"once":false}︡{"done":true}︡
︠76761b7c-49f4-4f88-b94b-9c2197ed1cf8︠
# Euclid 2
p1 = (0, 0)
p2 = (1, 1)
p3 = (2, 2)

L = line([p1, p2])
Lext = line([p2, p3], linestyle="dashed")

p = plot(L + Lext)
p.show(axes=False)
p.save("img/euclid2.png", axes=False)
︡0b3b9435-17b7-45b3-bd09-e4789b5fa2da︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_aOgjdP.svg","show":true,"text":null,"uuid":"b0a3132e-4e0f-4a30-a7e0-ca9fbd0b7933"},"once":false}︡{"done":true}︡
︠a799fb45-7074-4a8a-a97e-0a675fb1bd64︠
# Euclide 3
p1 = (0, 0)
r1 = 1

P1 = point(p1, size=50)
C1 = circle(p1, r1)

p = plot(P1 + C1)
p.show(axes=False)
p.save("img/euclid3.png", axes=False)
︡9798d17c-573d-47bf-a3c6-de3808070f2f︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_4G9gl9.svg","show":true,"text":null,"uuid":"ecc983de-0cd6-4c6e-bfdd-b72528ebe9de"},"once":false}︡{"done":true}︡
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
p.show(axes=False)
p.save("img/euclid4.png", axes=False)
︡4d9da48d-a9a7-4b72-a600-96bb8c83f337︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_zAPPd2.svg","show":true,"text":null,"uuid":"e3e001f5-e055-4010-bfcb-a3da11f8c17e"},"once":false}︡{"done":true}︡
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









