︠2af3dd54-043c-40fb-ba05-33191c94b8a2︠
%var u,v
︡92208075-48ec-4e52-8766-224db1dd658d︡
︠c2e73c52-f143-471a-9407-1041d826fc98s︠
# 

phi = vector([u * cos(v), u * sin (v), cosh (u)])

umin = 0
umax = 1

vmin = 0
vmax = 2*pi

phiu = phi.diff(u)
phiv = phi.diff(v)

cross = phiu.cross_product(phiv)
cross_magnitude = simplify(cross.norm())
cross_magnitude = u * cosh(u)
N = (1/cross_magnitude) * cross

show(phi)
show(phiu)
show(phiv)
show(cross)
show(N)


parametric_plot3d(phi, (u, umin, umax), (v, umin, umax), frame=False)
︡f1ce5d98-6d96-4796-82d1-311152ed80fa︡{"html":"<div align='center'>$\\displaystyle \\left(u \\cos\\left(v\\right),\\,u \\sin\\left(v\\right),\\,\\cosh\\left(u\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\cos\\left(v\\right),\\,\\sin\\left(v\\right),\\,\\sinh\\left(u\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-u \\sin\\left(v\\right),\\,u \\cos\\left(v\\right),\\,0\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-u \\cos\\left(v\\right) \\sinh\\left(u\\right),\\,-u \\sin\\left(v\\right) \\sinh\\left(u\\right),\\,u \\cos\\left(v\\right)^{2} + u \\sin\\left(v\\right)^{2}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\frac{\\cos\\left(v\\right) \\sinh\\left(u\\right)}{\\cosh\\left(u\\right)},\\,-\\frac{\\sin\\left(v\\right) \\sinh\\left(u\\right)}{\\cosh\\left(u\\right)},\\,\\frac{u \\cos\\left(v\\right)^{2} + u \\sin\\left(v\\right)^{2}}{u \\cosh\\left(u\\right)}\\right)$</div>"}︡{"file":{"filename":"d88b7e61-0d80-4e6c-885b-02e4a6ee69a6.sage3d","uuid":"d88b7e61-0d80-4e6c-885b-02e4a6ee69a6"}}︡{"done":true}︡
︠bcfb4a6d-1d03-462a-8a13-0f0b70d16c8ds︠
#Torus
a = 1/2
b = 1

umin = 0
umax = 2*pi

vmin = 0
vmax = 2*pi

phi = vector([(a *cos(u) + b) * cos (v), (a* cos(u) + 1) * sin (v), a * sin(u)])

phiu = phi.diff(u)
phiv = phi.diff(v)

cross = phiu.cross_product(phiv)
cross = vector([cross[0], cross[1], -(1/4) * (cos(u) + 2) * sin(u)])
cross_magnitude = simplify(cross.norm())
cross_magnitude = (1/4) * (cos(u) + 2)
N = (1/cross_magnitude) * cross

show(phi)
show(phiu)
show(phiv)
show(cross)
show(cross_magnitude)
show(N)

show(N * phiu)
show(N * phiv)

parametric_plot3d(phi, (u, umin, umax), (v, umin, umax), frame=False)
︡4ce0e744-7b30-45e0-9280-3ce578c8e7d6︡{"html":"<div align='center'>$\\displaystyle \\left(\\frac{1}{2} \\, {\\left(\\cos\\left(u\\right) + 2\\right)} \\cos\\left(v\\right),\\,\\frac{1}{2} \\, {\\left(\\cos\\left(u\\right) + 2\\right)} \\sin\\left(v\\right),\\,\\frac{1}{2} \\, \\sin\\left(u\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\frac{1}{2} \\, \\cos\\left(v\\right) \\sin\\left(u\\right),\\,-\\frac{1}{2} \\, \\sin\\left(u\\right) \\sin\\left(v\\right),\\,\\frac{1}{2} \\, \\cos\\left(u\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\frac{1}{2} \\, {\\left(\\cos\\left(u\\right) + 2\\right)} \\sin\\left(v\\right),\\,\\frac{1}{2} \\, {\\left(\\cos\\left(u\\right) + 2\\right)} \\cos\\left(v\\right),\\,0\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\frac{1}{4} \\, {\\left(\\cos\\left(u\\right) + 2\\right)} \\cos\\left(u\\right) \\cos\\left(v\\right),\\,-\\frac{1}{4} \\, {\\left(\\cos\\left(u\\right) + 2\\right)} \\cos\\left(u\\right) \\sin\\left(v\\right),\\,-\\frac{1}{4} \\, {\\left(\\cos\\left(u\\right) + 2\\right)} \\sin\\left(u\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{4} \\, \\cos\\left(u\\right) + \\frac{1}{2}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\cos\\left(u\\right) \\cos\\left(v\\right),\\,-\\cos\\left(u\\right) \\sin\\left(v\\right),\\,-\\sin\\left(u\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, \\cos\\left(u\\right) \\cos\\left(v\\right)^{2} \\sin\\left(u\\right) + \\frac{1}{2} \\, \\cos\\left(u\\right) \\sin\\left(u\\right) \\sin\\left(v\\right)^{2} - \\frac{1}{2} \\, \\cos\\left(u\\right) \\sin\\left(u\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle 0$</div>"}︡{"file":{"filename":"4ad8fc93-00d1-428c-bd18-22eecc1c8680.sage3d","uuid":"4ad8fc93-00d1-428c-bd18-22eecc1c8680"}}︡{"done":true}︡



















