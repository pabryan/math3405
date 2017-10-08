︠51ff8fcb-1e42-49d4-9759-0a65a96e58afs︠
%var z, theta

phi = vector([sech (z) *  cos(theta), sech(z) * sin(theta), z - tanh(z)])

phiz = phi.diff(z)
phitheta = phi.diff(theta)

phizz = phiz.diff(z)
phiztheta = phiz.diff(theta)
phithetatheta = phitheta.diff(theta)

oldn = phiz.cross_product(phitheta)
pldN = n/(n.norm())

n = vector([-cos(theta)*sech(z)*tanh(z)^2, -sech(z)*sin(theta)*tanh(z)^2, - sech(z)^2 * tanh(z)])
N = vector([-cos(theta) * tanh(z), -sin(theta) * tanh(z), -sech(z)])

︡5c51566e-bce7-4873-addb-0a1fd1e55b1e︡{"done":true}︡
︠68ee24e4-f4a5-44fb-8062-9ce9ab194244s︠
show(phiz)
latex(phiz)
show(phitheta)
latex(phitheta)
︡039e0e70-43e6-4c1d-ab3d-9b1b3ca44ccd︡{"html":"<div align='center'>$\\displaystyle \\left(-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right) \\tanh\\left(z\\right),\\,-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right) \\tanh\\left(z\\right),\\,\\tanh\\left(z\\right)^{2}\\right)$</div>"}︡{"stdout":"\\left(-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right) \\tanh\\left(z\\right),\\,-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right) \\tanh\\left(z\\right),\\,\\tanh\\left(z\\right)^{2}\\right)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right),\\,\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right),\\,0\\right)$</div>"}︡{"stdout":"\\left(-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right),\\,\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right),\\,0\\right)\n"}︡{"done":true}︡
︠92c30ad4-2704-4785-8897-7fa8b5523803s︠
show(phizz.simplify_full())
latex(phizz)
show(phiztheta)
latex(phiztheta)
show(phithetatheta)
latex(phithetatheta)
︡278e95b3-5db3-4a2b-b53e-e20cf3218bdd︡{"html":"<div align='center'>$\\displaystyle \\left(\\frac{\\cos\\left(\\theta\\right) \\sinh\\left(z\\right)^{2} - \\cos\\left(\\theta\\right)}{\\cosh\\left(z\\right)^{3}},\\,\\frac{\\sin\\left(\\theta\\right) \\sinh\\left(z\\right)^{2} - \\sin\\left(\\theta\\right)}{\\cosh\\left(z\\right)^{3}},\\,\\frac{2 \\, \\sinh\\left(z\\right)}{\\cosh\\left(z\\right)^{3}}\\right)$</div>"}︡{"stdout":"\\left(\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right) \\tanh\\left(z\\right)^{2} + {\\left(\\tanh\\left(z\\right)^{2} - 1\\right)} \\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right),\\,\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right) \\tanh\\left(z\\right)^{2} + {\\left(\\tanh\\left(z\\right)^{2} - 1\\right)} \\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right),\\,-2 \\, {\\left(\\tanh\\left(z\\right)^{2} - 1\\right)} \\tanh\\left(z\\right)\\right)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right) \\tanh\\left(z\\right),\\,-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right) \\tanh\\left(z\\right),\\,0\\right)$</div>"}︡{"stdout":"\\left(\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right) \\tanh\\left(z\\right),\\,-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right) \\tanh\\left(z\\right),\\,0\\right)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right),\\,-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right),\\,0\\right)$</div>"}︡{"stdout":"\\left(-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right),\\,-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right),\\,0\\right)\n"}︡{"done":true}︡
︠d2157a93-7ff2-4155-9c68-89aef72963de︠
g_zz = phiz * phiz
g_zz = tanh(z)^2
g_ztheta = phiz * phitheta
g_thetatheta = phitheta * phitheta
g_thetatheta = sech(z)^2

g = matrix([[g_zz, g_ztheta], [g_ztheta, g_thetatheta]])

show(g)
latex(g)
︡e8548d00-19d2-4a19-824e-e8f7a9511a71︡
︠07ad3ae8-c2e2-4759-b2e1-4b6016b64200s︠
show(n)
show(oldn)
show(N)
latex(N)
︡852f55bb-3317-4a89-8c49-5c1b087121df︡{"html":"<div align='center'>$\\displaystyle \\left(-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right) \\tanh\\left(z\\right)^{2},\\,-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right) \\tanh\\left(z\\right)^{2},\\,-\\operatorname{sech}\\left(z\\right)^{2} \\tanh\\left(z\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\cos\\left(\\theta\\right) \\operatorname{sech}\\left(z\\right) \\tanh\\left(z\\right)^{2},\\,-\\operatorname{sech}\\left(z\\right) \\sin\\left(\\theta\\right) \\tanh\\left(z\\right)^{2},\\,-\\cos\\left(\\theta\\right)^{2} \\operatorname{sech}\\left(z\\right)^{2} \\tanh\\left(z\\right) - \\operatorname{sech}\\left(z\\right)^{2} \\sin\\left(\\theta\\right)^{2} \\tanh\\left(z\\right)\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-\\cos\\left(\\theta\\right) \\tanh\\left(z\\right),\\,-\\sin\\left(\\theta\\right) \\tanh\\left(z\\right),\\,-\\operatorname{sech}\\left(z\\right)\\right)$</div>"}︡{"stdout":"\\left(-\\cos\\left(\\theta\\right) \\tanh\\left(z\\right),\\,-\\sin\\left(\\theta\\right) \\tanh\\left(z\\right),\\,-\\operatorname{sech}\\left(z\\right)\\right)\n"}︡{"done":true}︡
︠32619e09-9f5f-4625-a14e-28aa2c50a14ds︠
A_zz = (phizz * N).simplify_full()
#A_zz = - sech(z) * tanh(z)
A_ztheta = (phiztheta * N).simplify_full()
A_thetatheta = (phithetatheta * N).simplify_full()
#A_thetatheta = sech(z) * tanh(z)

A = matrix([[A_zz, A_ztheta], [A_ztheta, A_thetatheta]])

show(A)
latex(A)
︡4d6e88c2-dbad-443b-a38d-f1ece5c2f09f︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n-\\frac{\\sinh\\left(z\\right)}{\\cosh\\left(z\\right)^{2}} &amp; 0 \\\\\n0 &amp; \\frac{\\sinh\\left(z\\right)}{\\cosh\\left(z\\right)^{2}}\n\\end{array}\\right)$</div>"}︡{"stdout":"\\left(\\begin{array}{rr}\n-\\frac{\\sinh\\left(z\\right)}{\\cosh\\left(z\\right)^{2}} & 0 \\\\\n0 & \\frac{\\sinh\\left(z\\right)}{\\cosh\\left(z\\right)^{2}}\n\\end{array}\\right)\n"}︡{"done":true}
︠15b70490-f829-4c79-b6c5-c2282b4c327c︠
thetamin = 0
thetamax = 2*pi
zmin = -5
zmax = 5

p = parametric_plot3d(phi, (theta, thetamin, thetamax), (z, zmin, zmax))
p.show(frame=False)
︡60615128-e3fd-4c91-b19e-c4c4c519f499︡{"file":{"filename":"bad7c8d6-2e35-46c0-9e28-3254ce915bf3.sage3d","uuid":"bad7c8d6-2e35-46c0-9e28-3254ce915bf3"}}︡{"done":true}︡
︠c6b63b71-853d-4e50-98eb-bcf465732f30︠










