︠88463e17-febc-45d5-a6c7-65d98449a662s︠
M = Manifold(2, 'M', latex_name=r'\mathcal{M}', start_index=1)
X.<z, theta> = M.chart(r'z:(-oo,+oo) th:(0,2*pi):\theta')
g = M.riemannian_metric('g')

f = function('f')(z)
fp = f.diff()
fpp = fp.diff()

g[1, 1] = 1 + fp^2
g[1, 2] = 0
g[2, 2] = f^2

nabla = g.connection()
Rm = nabla.riemann()
︡192fdf3b-a5ae-4c3d-b413-f04f572e823b︡{"done":true}︡
︠6c7be1fb-402b-4275-89a0-58843232280fs︠
g.display()
nabla.display()
Rm.display()


latex(Rm)
︡de4ac55b-354e-4143-9f37-a96d8f1b3792︡{"stdout":"g = ((d(f)/dz)^2 + 1) dz*dz + f(z)^2 dth*dth\n"}︡{"stdout":"Gam^z_z,z = d(f)/dz*d^2(f)/dz^2/((d(f)/dz)^2 + 1) \nGam^z_th,th = -f(z)*d(f)/dz/((d(f)/dz)^2 + 1) \nGam^th_z,th = d(f)/dz/f(z) \nGam^th_th,z = d(f)/dz/f(z) \n"}︡{"stdout":"Riem(g) = -f(z)*d^2(f)/dz^2/((d(f)/dz)^4 + 2*(d(f)/dz)^2 + 1) d/dz*dth*dz*dth + f(z)*d^2(f)/dz^2/((d(f)/dz)^4 + 2*(d(f)/dz)^2 + 1) d/dz*dth*dth*dz + d^2(f)/dz^2/(f(z)*(d(f)/dz)^2 + f(z)) d/dth*dz*dz*dth - d^2(f)/dz^2/(f(z)*(d(f)/dz)^2 + f(z)) d/dth*dz*dth*dz"}︡{"stdout":"\n"}︡{"stdout":"\\mathrm{Riem}\\left(g\\right)\n"}︡{"done":true}︡
︠a2161ec1-1700-43c8-ab01-a975259185b8s︠
show(-f*fpp/((fp)^4 + 2*(fp)^2 + 1))
show(fpp/(f*(fp)^2 + f))
︡d0281bcb-df05-4315-bcbc-5654a72f21b4︡{"html":"<div align='center'>$\\displaystyle -\\frac{f\\left(z\\right) \\frac{\\partial^{2}}{(\\partial z)^{2}}f\\left(z\\right)}{\\frac{\\partial}{\\partial z}f\\left(z\\right)^{4} + 2 \\, \\frac{\\partial}{\\partial z}f\\left(z\\right)^{2} + 1}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\frac{\\partial^{2}}{(\\partial z)^{2}}f\\left(z\\right)}{f\\left(z\\right) \\frac{\\partial}{\\partial z}f\\left(z\\right)^{2} + f\\left(z\\right)}$</div>"}︡{"done":true}︡
︠dff5df02-1061-4d7a-9750-d03f0f29d507s︠
# Sphere
f = sqrt(1 - z^2)
fp = f.diff(z)
fpp = fp.diff(z)

sec = (-f*fpp/(1 + fp^2)).simplify_full()
K = (-fpp/(f*(1 + fp^2)^2)).simplify_full()

show(sec)
show(K)
︡e2b43b71-666a-4574-933d-431eca485dde︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡{"done":true}︡
︠019d6bd0-98cc-44dd-a700-3fc6dee1fda7s︠

show(x^2 + 1)
︡f20a0f56-cfc8-4e2e-aa86-b1dc9b459056︡{"html":"<div align='center'>$\\displaystyle x^{2} + 1$</div>"}︡{"done":true}︡









