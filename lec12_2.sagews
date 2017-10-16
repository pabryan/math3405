︠9e8d158b-040f-4ae1-972c-14890ba89b01︠
R3 = Manifold(3, 'R^3', start_index=1)
X3.<x,y,z> = R3.chart()
h = R3.riemannian_metric('h')
h[1,1], h[2,2], h[3,3] = 1, 1, 1
D = h.connection()

︡ae2dbf92-e506-41a6-9592-2930d15c957b︡
︠617d2a36-92fe-411b-b575-7d34c3c4a49as︠
%var r, th
class SurfaceOfRevolution:
    def __init__(self, u = False, v = False, a = -infinity, b = infinity):
        self.S = Manifold(2, 'S', start_index=1)
        self.U = (self.S).open_subset('U')
        XS.<r,th> = (self.U).chart(r'r:(-oo,oo):R th:(0,2*pi):\theta')
        self.XS = XS
        
        self.a = a
        self.b =b
        
        self.u = function('u')(r) if u == False else u
        self.v = function('v')(r) if v == False else v
        
        self.F = (self.S).diff_map(R3, {(self.XS, X3): [(self.u)(r) * cos(th), (self.u)(r) * sin(th), (self.v)(r)]}, name='F')
        self.g = (self.S).metric('g')
        (self.g).set((self.F).pullback(h))
        self.nabla = (self.g).connection()
        self.Rm = (self.g).riemann()
︡a4e79658-b69d-4b72-8177-d5ef8ea5bea0︡{"done":true}︡
︠ec7ad3dc-260d-423e-ab03-e6a39557b7c4︠
S = SurfaceOfRevolution()


(S.g).display()
(S.nabla).display()
(S.Rm).display()
︡301055ca-7e55-4db5-90b4-a3e9d506fb3f︡
︠664a71cb-d37b-4e7c-9f98-f1bbfec415b9s︠
u = cos(r)
v = sin(r)
a = 0
b = pi

S = SurfaceOfRevolution(u=u, v=v, a=a, b=b)


(S.g).display()
(S.nabla).display()
(S.Rm).display()
︡a1ffbe5f-e513-4c2c-883a-b45ce28a138b︡{"stdout":"g = dr*dr + cos(r)^2 dth*dth\n"}︡{"stdout":"Gam^r_th,th = cos(r)*sin(r) \nGam^th_r,th = -sin(r)/cos(r) \nGam^th_th,r = -sin(r)/cos(r) \n"}︡{"stdout":"Riem(g) = cos(r)^2 d/dr*dth*dr*dth - cos(r)^2 d/dr*dth*dth*dr + (sin(r)^2 - 1)/cos(r)^2 d/dth*dr*dr*dth + d/dth*dr*dth*dr\n"}︡{"done":true}︡
︠525c643f-6ecb-4f59-99d8-da6e68ed8b9cs︠
graph_S = (S.XS).plot(X3, mapping=S.F, number_values=11, color='black')
show(graph_S, frame=False)
︡925e230f-17d0-4dd4-ad9b-beb719c3bbe6︡{"file":{"filename":"780911dc-b8d1-409f-9aa1-31ab64196219.sage3d","uuid":"780911dc-b8d1-409f-9aa1-31ab64196219"}}︡{"done":true}︡
︠dc41c041-ead2-483b-b715-37c7342f18f5︠









