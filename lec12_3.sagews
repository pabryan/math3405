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
p1 = (0, 0)
p2 = (1, 1)
p3 = (2, 2)

L = line([p1, p2])
Lext = line([p2, p3], linestyle="dashed")

p = plot(L + Lext)
p.show(axes=False)
p.save("img/euclid2.png", axes=False)
︡0b3b9435-17b7-45b3-bd09-e4789b5fa2da︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/203/tmp_aOgjdP.svg","show":true,"text":null,"uuid":"b0a3132e-4e0f-4a30-a7e0-ca9fbd0b7933"},"once":false}︡{"done":true}︡









