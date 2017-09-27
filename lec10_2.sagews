︠42c2e25b-e147-4782-9960-2feb521f4cb7s︠
# Manifold Charts
u,v = var('u,v')

U1 = circle((-1/2,-1/2), 1/4, color="blue") + text(r"$V_{\alpha}$", ((-1/2, -1/2)), color="blue")
U2 = circle((1/2,-1/2), 1/4, color="red") + text(r"$V_{\beta}$", ((1/2, -1/2)), color="red")

U12 = region_plot(lambda u,v : min((1/4)^2 - (u+1/2)^2 - (v+1/2)^2, (1/4)^2 - (u+1/7)^2 - (v+1/2)^2) >= 0, (u,-1, 1), (v,-1, 1), plot_points=500, incol='gray')
U21 = region_plot(lambda u,v : min((1/4)^2 - (u-1/2)^2 - (v+1/2)^2, (1/4)^2 - (u-1/7)^2 - (v+1/2)^2) >= 0, (u,-1, 1), (v,-1, 1), plot_points=500, incol='gray')

M = ellipse((0,1/2), 1, 1/3, color="black") + text("M", (-1/2, 1/2), color="black")

V1 = circle((-1/7,1/2), 1/5, color="blue") + text(r"$U_{\alpha}$", ((-1/7, 1/2)), color="blue")
V2 = circle((1/7,1/2), 1/5, color="red") + text(r"$U_{\beta}$", ((1/7, 1/2)), color="red")

V12 = region_plot(lambda u,v : min((1/5)^2 - (u+1/7)^2 - (v-1/2)^2, (1/5)^2 - (u-1/7)^2 - (v-1/2)^2) >= 0, (u,-1, 1), (v,-1, 1), plot_points=500, incol='gray')

epsilon = 1/8
A1 = arrow((-1/4+epsilon,epsilon), (-1/4-epsilon,-epsilon), color="blue") + text(r"$\varphi_{\alpha}$", (-1/2, 0), color="blue")
A2 = arrow((1/4-epsilon,epsilon), (1/4+epsilon,-epsilon), color="red") + text(r"$\varphi_{\beta}$", (1/2, 0), color="red")

A = arrow((-epsilon, -1/2), (epsilon, -1/2), color="black") + text(r"$\tau_{\alpha\beta} = \varphi_{\beta} \circ \varphi_{\alpha}^{-1}$", (0, -1/2 - 2*epsilon), color="black")

P = M + U1 + U2 + U12 + U21 + V1 + V2 + V12 + A1 + A2 + A

P.show(axes=False)
P.save('img/manifold_charts.png', axes=False)
︡293e01ee-8efe-4de5-9534-bcf39b61cb6a︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/454/tmp_u8AE6h.svg","show":true,"text":null,"uuid":"ef4715d8-f38d-4038-8643-05a729b3dab7"},"once":false}︡{"done":true}︡









