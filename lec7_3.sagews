︠5287ef89-5127-4594-a738-9480429d470b︠
%var u, v, t

umin = 0
umax = 2*pi
vmin = -1
vmax = 1

x(u, v) = cos(u)
y(u, v) = sin(u)
z(u, v) = v

f = vector([x, y, z])
N = vector([x, y, 0])
Df = matrix([[x.diff(u), x.diff(v)], [y.diff(u), y.diff(v)], [z.diff(u), z.diff(v)]])

︡ef5490fb-4f11-4aca-8acc-7cf06664ddc0︡
︠adc8bc0d-ef82-437c-92fc-3b99cc23ff1as︠

show(f)
show(N)
show(Df)

S = parametric_plot3d((x, y, z), (u, umin, umax), (v, vmin, vmax), frame=False)
S.show(frame=False)
︡d8291be1-e97d-41b8-9161-8abf487f7695︡{"html":"<div align='center'>$\\displaystyle \\left( u, v \\right) \\ {\\mapsto} \\ \\left(\\cos\\left(u\\right),\\,\\sin\\left(u\\right),\\,v\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left( u, v \\right) \\ {\\mapsto} \\ \\left(\\cos\\left(u\\right),\\,\\sin\\left(u\\right),\\,0\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n\\left( u, v \\right) \\ {\\mapsto} \\ -\\sin\\left(u\\right) &amp; \\left( u, v \\right) \\ {\\mapsto} \\ 0 \\\\\n\\left( u, v \\right) \\ {\\mapsto} \\ \\cos\\left(u\\right) &amp; \\left( u, v \\right) \\ {\\mapsto} \\ 0 \\\\\n\\left( u, v \\right) \\ {\\mapsto} \\ 0 &amp; \\left( u, v \\right) \\ {\\mapsto} \\ 1\n\\end{array}\\right)$</div>"}︡{"file":{"filename":"8268bce0-4dec-40bb-9a70-d2900c98317c.sage3d","uuid":"8268bce0-4dec-40bb-9a70-d2900c98317c"}}︡{"done":true}︡
︠bd1fbe71-2138-4b5f-ad0d-dd70b576d425s︠
gamma = vector([cos(t), sin(t), 0])
gammap = gamma.diff(t)
gammapp = gammap.diff(t)

v = gammap.norm()
cross = gammap.cross_product(gammapp)

kR = (1/v^3) * cross.norm()
show(kR)

C = parametric_plot3d(gamma, (t, 0, 2*pi), color="red", thickness=5)

P = S + C
P.show(frame=False)
P.save("img/cylinderandcircle.png", frame=False)
︡5a01274a-eba0-4ddf-89fb-107951b882ff︡{"html":"<div align='center'>$\\displaystyle \\frac{\\sqrt{{\\left| \\cos\\left(t\\right)^{2} + \\sin\\left(t\\right)^{2} \\right|}^{2}}}{{\\left({\\left| \\cos\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right) \\right|}^{2}\\right)}^{\\frac{3}{2}}}$</div>"}︡{"file":{"filename":"88e5d1d7-170d-4dae-aef4-299e908a46f6.sage3d","uuid":"88e5d1d7-170d-4dae-aef4-299e908a46f6"}}︡{"done":true}︡
︠7dca3489-e59a-403b-83c4-0a239e533bdes︠
gamma = vector([1, 0, t])
gammap = gamma.diff(t)
gammapp = gammap.diff(t)

v = gammap.norm()
cross = gammap.cross_product(gammapp)

kR = (1/v^3) * cross.norm()
show(kR)

C = parametric_plot3d(gamma, (t, -1, 1), color="red", thickness=5)

P = S + C
P.show(frame=False)
P.save("img/cylinderandline.png", frame=False)
︡487b05af-29e8-4517-9fd5-b2596410451c︡{"html":"<div align='center'>$\\displaystyle 0$</div>"}︡{"file":{"filename":"6d8f1fb9-c647-44f9-b0c3-b9dcc73e8c4e.sage3d","uuid":"6d8f1fb9-c647-44f9-b0c3-b9dcc73e8c4e"}}︡{"done":true}︡
︠60a11cd9-8d59-4937-90d6-1f08ccd5d452s︠
gamma = vector([cos(t), sin(t), t/(2*pi)])
gammap = gamma.diff(t)
gammapp = gammap.diff(t)

v = gammap.norm()
cross = gammap.cross_product(gammapp)

kR = (1/v^3) * cross.norm()
show(kR)

C = parametric_plot3d(gamma, (t, 0, 2*pi), color="red", thickness=5)

P = S + C
P.show(frame=False)
P.save("img/cylinderandhelix.png", frame=False)

︡589b89e7-7ff9-40e9-b339-a895cd17ea0a︡{"html":"<div align='center'>$\\displaystyle \\frac{\\sqrt{{\\left| \\cos\\left(t\\right)^{2} + \\sin\\left(t\\right)^{2} \\right|}^{2} + \\frac{{\\left| \\cos\\left(t\\right) \\right|}^{2}}{4 \\, \\pi^{2}} + \\frac{{\\left| \\sin\\left(t\\right) \\right|}^{2}}{4 \\, \\pi^{2}}}}{{\\left({\\left| \\cos\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right) \\right|}^{2} + \\frac{1}{4 \\, \\pi^{2}}\\right)}^{\\frac{3}{2}}}$</div>"}︡{"file":{"filename":"fb14ba0f-065b-40f8-b086-3b2204ba78ad.sage3d","uuid":"fb14ba0f-065b-40f8-b086-3b2204ba78ad"}}︡{"done":true}︡
︠4a8e8ba1-7b9a-475f-925e-530d2eb3c0ces︠
g = vector([cos(t), sin(t)])
gp = g.diff(t)
gpp = gp.diff(t)

gamma = f(*g)
gammap = gamma.diff(t)
gammapp = gammap.diff(t)

v = gammap.norm()
cross = gammap.cross_product(gammapp)
Ng = N(*g)

kR = (1/v^3) * cross.norm()
kN = kR * (gammapp * Ng)

TS = Df(*g) * gp
NS = Df(*g) * gpp

kSvec = gammapp - (gammapp * Ng) * Ng
kS = kSvec * NS

C = parametric_plot3d(gamma, (t, 0, 2*pi), color="red", thickness=5)

P = S + C
P.show(frame=False)
P.save("img/cylinderandflatcircle.png", frame=False)
︡d28a8efb-7525-4f04-831d-9fb8cfec1201︡{"file":{"filename":"07319935-2e5e-4b85-9b59-2ba4b508dce5.sage3d","uuid":"07319935-2e5e-4b85-9b59-2ba4b508dce5"}}︡{"done":true}︡
︠3b3b60f6-8880-4727-87a8-8967bb81372es︠
show(r"$\gamma'$")
show(gammap)
︡29e5ae49-8645-4a4e-963a-edf7747dadc1︡{"html":"<div align='center'>$\\gamma'$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right),\\,-\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right),\\,\\cos\\left(t\\right)\\right)$</div>"}︡{"done":true}︡
︠d7e8078e-659b-41c4-83b5-518a352fa753s︠

show(r"$\gamma''$")
show(gammapp)
︡9a7e7df1-c0cc-4daf-9034-e18b8b658f57︡{"html":"<div align='center'>$\\gamma''$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} + \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right),\\,-\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) - \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right),\\,-\\sin\\left(t\\right)\\right)$</div>"}︡{"done":true}︡
︠0665ac1c-1ecc-4398-b62f-a6762ac3b798s︠
show(r"$\kappa_{\mathbb{R}^3}$")
latex(kR)
show(kR)
plot(kR, (t, 0, 2*pi))
︡e29b792f-ca5d-4897-8b19-0d1d99cfabbf︡{"html":"<div align='center'>$\\kappa_{\\mathbb{R}^3}$</div>"}︡{"stdout":"\\frac{\\sqrt{{\\left| -{\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right) - {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right) \\right|}^{2} + {\\left| \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} + {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) - {\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\right|}^{2}}}{{\\left({\\left| \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right) \\right|}^{2} + {\\left| \\cos\\left(t\\right) \\right|}^{2}\\right)}^{\\frac{3}{2}}}\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\sqrt{{\\left| -{\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right) - {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right) \\right|}^{2} + {\\left| \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} + {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) - {\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\right|}^{2}}}{{\\left({\\left| \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right) \\right|}^{2} + {\\left| \\cos\\left(t\\right) \\right|}^{2}\\right)}^{\\frac{3}{2}}}$</div>"}︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/289/tmp_mT83tc.svg","show":true,"text":null,"uuid":"c2007a90-cfb0-40f3-9584-114d12fc790b"},"once":false}︡{"done":true}︡
︠27b1848a-f213-4e60-a426-08ad11bb9821s︠
show(r"$\kappa_{N}$")
show(kN)
︡1d9ad952-4f99-405b-af07-54b2a1a42e91︡{"html":"<div align='center'>$\\kappa_{N}$</div>"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{\\sqrt{{\\left| -{\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right) - {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right) \\right|}^{2} + {\\left| \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} + {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) - {\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\right|}^{2}} {\\left({\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(\\cos\\left(t\\right)\\right) + {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\sin\\left(\\cos\\left(t\\right)\\right)\\right)}}{{\\left({\\left| \\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right) \\right|}^{2} + {\\left| \\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right) \\right|}^{2} + {\\left| \\cos\\left(t\\right) \\right|}^{2}\\right)}^{\\frac{3}{2}}}$</div>"}︡{"done":true}︡
︠09753b3d-313f-4691-9730-94fa949382e5s︠
show(r"$T_S$")
show(TS)

show(r"$N_S$")
show(NS)

︡449bfe2a-376b-42bc-a45f-486ccfa8b9c2︡{"html":"<div align='center'>$T_S$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\sin\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right),\\,-\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right),\\,\\cos\\left(t\\right)\\right)$</div>"}︡{"html":"<div align='center'>$N_S$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right),\\,-\\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right),\\,-\\sin\\left(t\\right)\\right)$</div>"}︡{"done":true}︡
︠6e92ec56-c344-4c0c-a978-2ab1d1739416s︠
#show(r"$\overrightarrow{\kappa}$")
#show(kSvec)
show(r"$\kappa_S$")
show(kS)
plot(kS, (t, 0, 2*pi))

︡5a28ce41-68a1-4100-a053-4d56b602776e︡{"html":"<div align='center'>$\\kappa_S$</div>"}︡{"html":"<div align='center'>$\\displaystyle {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right) - {\\left({\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(\\cos\\left(t\\right)\\right) + {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right) - {\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - {\\left({\\left(\\cos\\left(\\cos\\left(t\\right)\\right) \\sin\\left(t\\right)^{2} - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(\\cos\\left(t\\right)\\right) + {\\left(\\sin\\left(t\\right)^{2} \\sin\\left(\\cos\\left(t\\right)\\right) + \\cos\\left(t\\right) \\cos\\left(\\cos\\left(t\\right)\\right)\\right)} \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(\\cos\\left(t\\right)\\right) - \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right)\\right)} \\cos\\left(t\\right) \\sin\\left(\\cos\\left(t\\right)\\right) + \\sin\\left(t\\right)^{2}$</div>"}︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/2157/tmp_QH_KrT.svg","show":true,"text":null,"uuid":"d0c415d5-a458-4e0c-9de0-333ca781719c"},"once":false}︡{"done":true}︡
︠77b93ebe-6a1e-4ef0-8a1f-4df0db55b8b4︠









