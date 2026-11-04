-- Cash rules everything around me. discord.gg/DhxJHk5AY
return (function(...)
    local _r,_X=getfenv,setfenv
    local _w=_r()
    local _k,_O,_Z,_S,_M,_D,_i=table.pack,table.unpack,select,tostring,tonumber,type,error
    local _W,_F=loadstring,string.match
    local _x=table.create(0)
    local function _N(_B)
      local _n=_x[_B] if _n then return _n end
      if not _F(_B,"^[A-Za-z_][A-Za-z0-9_]*$") then _i("invalid native method name",0) end
      if _D(_W)~="function" then _i("native method calls require loadstring",0) end
      local _b=_W("return function(receiver,...)return receiver:".._B.."(...)end","=ObFuX native method")
      if not _b then _i("failed to compile a native method call",0) end
      _n=_b() _x[_B]=_n
      return _n
    end
    local _Y,_H,_z,_E,_U,_u=string.byte,table.concat,bit32.bxor,bit32.band,math.floor,bit32.rrotate
    local _v,_f,_K,_p,_m,_c,_e,_G=buffer.create,buffer.readu8,buffer.writeu8,buffer.len,buffer.readu32,buffer.writeu32,buffer.readstring,buffer.fill
    local _L=buffer.readu16
    local function _a(_g)return (_g*1664525+1013904223)%4294967296 end
    local _P="ljhmUe3oOBgV0XdF5QzayNvWLs97I+ctTZn4CJAu2pSiGDPbR6K8kqfH/rYw1MxE" local _q="aksLjlAfbYGUUregLZCPoYghxGoE15QuzbS5svImvv9SkBdtlRfaK1MbvmsCK68FG8JMvLvVowmBnRQRCoum/MIcDaDfBgJHYoZVrAyzMwzKEG19WRCo0myi7oGTsMvwy9D5bUz4VWKFRsm8mXfYDtMn+THzF1ljgcMxTCKwFffrhIZHVxmhR42OqGntaOtOqa9BqVL4JmtWwTqgt/6qSZpgp6l8wnW16/uM3dbl+NK9/2lmsvGXDa5guLq4UcIb4xs6xdgxfbu0WTWrwPv/hNgaoJJZgPZ/k6WnufonQGc8IYYJifNiBvgZnCc/jawtOYG5vG2PWTY/wmYQz4mfg1sbE3EiqpkICCFsY8FF7UKt+mpeClv/elgME8v7HFn2CRUztjKHQkvyTXxdpa3CScdzBEralbbTowhWK5yo/5IPPzpPxshNKAu0HE1hLrxn6YWR0KyhBPL4Mp/M2I1A5wTthg3q2LgHGnGpKFjogA7k6Gze7/eKTEOWH4QX8IHUW3bc6zOT4Jo7VQWwP9uCC8sYx4cLT68GWco89SgosdJ+O5dcLhm8nvHg4W8T6JsP1J//pfKNDSIoBeYk1Z8AKiIkv5SJAKE8UF7q1IvT6FbxFaV9qqtripJkx6A4q8xuM/f2b9lmhDG5m+Rljz8qElmCBmp+"
    local _h={} for _T=1,#_P do _h[_Y(_P,_T)]=_T-1 end
    local _l=_U(#_q*6/8) local _t=_v(_l) local _y,_s=0,1
    while _y+4<=_l do
      local _J,_d,_R,_A=_Y(_q,_s,_s+3)
      local _j=_h[_J]*262144+_h[_d]*4096+_h[_R]*64+_h[_A]
      _c(_t,_y,_U(_j/65536)+(_U(_j/256)%256)*256+(_j%256)*65536)
      _y+=3 _s+=4
    end
    local _I,_C=0,0
    for _T=_s,#_q do _I=_I*64+_h[_Y(_q,_T)] _C+=6 if _C>=8 then _C-=8 _K(_t,_y,_U(_I/2^_C)%256) _y+=1 _I%=2^_C end end
    local function _o(_Q,_V)
      local _s,_l=_V or 1,_p(_Q)
      return function()local _rr,_Xr=0,1 for _T=1,5 do if _s>_l then _i("invalid protected data",0) end local _d=_f(_Q,_s-1) _s+=1 _rr+=(_d%128)*_Xr if _d<128 then return _rr end _Xr*=128 end _i("invalid operand",0) end,
        function(_wr)local _V=_s _s+=_wr if _s>_l+1 then _i("invalid record",0)end return _V end
    end
    if _p(_t)<4 or _f(_t,0)~=79 or _f(_t,1)~=70 or _f(_t,2)~=88 or _f(_t,3)~=4 then _i("invalid image",0) end
    local _kr={} local _Or,_Zr=_o(_t,5)
    for _T=1,_Or() do
      local _Sr,_p=_Or(),_Or() local _Mr=_m(_t,_Zr(4)-1)
      _kr[_Sr]={_Zr(_p),_p,_Mr}
    end
    local _Dr,_ir,_Wr={},{},{}
    local function _Fr(_Sr,_xr)
      local _Nr=_kr[_Sr] if not _Nr then _i("missing record",0) end
      local _Br,_nr=_a(_z(_xr,_Sr)),_E(_z(_xr,_Sr),255) local _br=_v(_Nr[2])
      local _y=0 local _Mr=_a(_z(_Sr,_xr,_Nr[2]))
      while _y+4<=_Nr[2] do
        local _Yr=_m(_t,_Nr[1]+_y-1) local _Hr,_Xr=0,1
        for _T=1,4 do
          local _d=_Yr%256 _Yr=_U(_Yr/256) _Br=_a(_Br)
          _Hr+=_z(_d,_U(_Br/65536)%256,_nr)*_Xr _nr=_d _Xr*=256
        end
        _c(_br,_y,_Hr) _y+=4
        _Mr=(_z(_Mr,_Hr)*65599)%4294967296
      end
      for _T=_y,_Nr[2]-1 do
        local _d=_f(_t,_Nr[1]+_T-1) _Br=_a(_Br)
        local _Hr=_z(_d,_U(_Br/65536)%256,_nr)
        _K(_br,_T,_Hr) _nr=_d
        _Mr=(_z(_Mr,_Hr)*65599)%4294967296
      end
      if _Mr~=_Nr[3] then _G(_br,0,0) _i("invalid record checksum",0) end
      return _br
    end
    local function _zr(_Sr,_xr)
      local _Er=_Dr[_Sr] if _Er then return _Er[1] end
      local _Q=_Fr(_Sr,_xr) if _f(_Q,0)~=3 then _i("invalid constant",0)end
      local _Ur,_Zr=_o(_Q,3) local _wr=_Ur() local _V=_Zr(_wr)
      local _rr=_e(_Q,_V-1,_wr) local _ur=_f(_Q,1)
      _G(_Q,0,0) if _ur==2 then _rr=_M(_rr) end _Dr[_Sr]={_rr} return _rr
    end
    
    local function _vr(_Sr,_xr)
      local _Er=_ir[_Sr] if _Er then return _Er end
      local _Q=_Fr(_Sr,_xr) if _f(_Q,0)~=5 then _i("invalid function",0)end
      local _Ur=_o(_Q,4) local _fr,_wr=_Ur(),_Ur()
      local _Kr={_f(_Q,1)%2,_f(_Q,2),_fr,_wr,_Ur(),_Ur(),_f(_Q,1)>=2}
      _G(_Q,0,0) _ir[_Sr]=_Kr return _Kr
    end
    local function _pr(_Sr,_xr)
      local _Er=_Wr[_Sr] if _Er then return _Er end
      local _Q=_Fr(_Sr,_xr) if _f(_Q,0)~=4 or (_p(_Q)-1)%4~=0 then _i("invalid block",0)end
      local _mr=_a(_z(_Sr,_xr)) local _cr,_er={},{}
      for _s=2,_p(_Q),4 do
        local _rr=_m(_Q,_s-1)
        _mr=_a(_z(_mr,_rr)) _cr[#_cr+1]=_rr _er[#_er+1]=_mr
      end
      _G(_Q,0,0)
      local _br={_cr,_er,_a(_z(_Sr,_xr)),{}} _Wr[_Sr]=_br return _br
    end
    local function _Gr(_Lr,_Sr)while _Lr do local _rr=_Lr[_Sr] if _rr then return _rr end _Lr=_Lr[0] end _i("binding unavailable",0)end
    local function _ar(_rr)if _D(_rr)=="number" then return _rr end local _br=_M(_rr) if _br==nil then _i("numeric loop requires numbers",0)end return _br end
    local function _gr(_Pr,_qr,...)
      if _qr==_r then
        local _hr=... if _hr==nil or _hr==1 then return _r(_Pr) end
      elseif _X and _qr==_X then
        local _hr,_Tr=... if _hr==1 then return _X(_Pr,_Tr) end
      end
      return _qr(...)
    end
    local _lr,_tr
    
    _tr=function(_Sr,_xr,_yr,_Pr,...)
      local _sr,_br=_lr(_vr(_Sr,_xr),_yr,_k(...),nil,_Pr) if _sr==1 then return _O(_br,1,_br.n)end
    end
    _lr=function(_Kr,_yr,_Jr,_dr,_Pr)
      local _Rr=if _Kr[7] then {[0]=_yr} else _yr local _Ar={} local _jr=_Kr[4]
      local _g=if _Kr[1]==1 then _dr else if _Kr[2]==1 then _k(_O(_Jr,_jr+1,_Jr.n)) else {n=0}
      local _Ir,_s,_mr
      local _Cr,_or,_Qr,_Vr,_rX,_XX,_wX,_kX,_OX,_ZX,_SX,_MX
      local function _DX(_Sr,_xr)_Ir=_pr(_Sr,_xr) _s=1 _mr=_Ir[3]end
      local function _Ur()
        local _rr=_Ir[1][_s] if _rr==nil then _i("missing operand",0)end _mr=_Ir[2][_s] _s+=1 return _rr
      end
      _DX(_Kr[5],_Kr[6])
      while true do
        local _iX,_WX,_FX,_xX
          if _Cr then
            _iX=_f(_Cr,_or) _or+=1
          else
            _WX=_s _FX=_mr _iX=_z(_Ur(),_Kr[3],_E(_FX,255)) _xX=_mr
          end
        if _iX<210 then if _iX<187 then if _iX<41 then if _iX==10 then local _NX,_BX=_f(_Cr,_or),_f(_Cr,_or+1)
    local _nX,_fr=_m(_Cr,_or+2),_m(_Cr,_or+6)
    _kX=_z(_u((_Ir[1][_Qr+_NX]-_nX)%4294967296,_BX),_fr)
    _or+=10 else _i("invalid instruction",0) end else if _iX==41 then local _Sr=_Ur() local _xr=_z(_Ur(),_a(_z(_xX,_Sr)))
    _Cr=_Fr(_Sr,_xr)
    if _f(_Cr,0)~=8 or _p(_Cr)<6 then _i("invalid kernel",0)end
    _or=5 _Qr=_s _Vr=_WX _rX=_FX _XX=_mr
    _ZX=_Ir[4][_WX] if not _ZX then _ZX={} _Ir[4][_WX]=_ZX end
    _Ir[1][_WX]=_z(_m(_Cr,1),_Kr[3],_E(_FX,255)) else _i("invalid instruction",0) end end else if _iX<200 then if _iX==187 then _kX=_z(_kX,_a(_z(_XX,_OX))) else _i("invalid instruction",0) end else if _iX<207 then if _iX==200 then _wX=_f(_Cr,_or) _or+=1 _Ir[1][_Qr+_wX]=_kX else _i("invalid instruction",0) end else if _iX==207 then _OX=_kX else _i("invalid instruction",0) end end end end else if _iX<2314887 then if _iX<215 then if _iX==210 then _G(_Cr,0,0) _Cr=nil _s=_Vr _mr=_rX else _i("invalid instruction",0) end else if _iX==215 then _kX=_zr(_OX,_kX) else _i("invalid instruction",0) end end else if _iX<6156792 then if _iX==2314887 then local _bX local _YX,_HX,_zX,_EX,_UX local _uX=_s+2
    _YX=_Ir[1][_uX+0]
_HX=_Ir[1][_uX+1]
_zX=_Ir[1][_uX+3]
_EX=_Ir[1][_uX+4]
_UX=_Ir[1][_uX+6]
    _s=_uX+7 _mr=_Ir[2][_s-1] do _bX=_EX end do _Ar[_UX]=_r(_Pr)[_bX] end do _Ar[_zX]={n=0} end do _Ar[_YX]=_HX end  else _i("invalid instruction",0) end else if _iX<16610614 then if _iX==6156792 then local _bX,_vX,_fX,_KX local _EX,_UX,_HX,_YX,_zX,_pX local _uX=_s+2
    _EX=_Ir[1][_uX+0]
_UX=_Ir[1][_uX+1]
_HX=_Ir[1][_uX+3]
_YX=_Ir[1][_uX+4]
_zX=_Ir[1][_uX+5]
_pX=_Ir[1][_uX+7]
    _s=_uX+8 _mr=_Ir[2][_s-1] do _bX=_r(_Pr)[_Ar[_EX]] end do _vX=_UX end do _fX=_N(_zX) end do _KX=_k(_gr(_Pr,_fX,_bX,_vX)) end do local _mX,_cX=_Ar[_YX],_KX for _T=1,_cX.n do _mX[_mX.n+_T]=_cX[_T] end _mX.n+=_cX.n end do local _Jr=_Ar[_YX] _Ar[_HX]=_gr(_Pr,_Ar[_pX],_O(_Jr,1,_Jr.n)) end  else _i("invalid instruction",0) end else if _iX==16610614 then local _bX,_vX local _EX local _uX=_s+2
    _EX=_Ir[1][_uX+0]
    _s=_uX+1 _mr=_Ir[2][_s-1] do _bX=_gr(_Pr,_Ar[_EX]) end do _vX={n=0} end do return 1,_vX end  else _i("invalid instruction",0) end end end end end
      end
    end
    local _eX
    _eX=function(...)return _tr(2413688,1219438530,nil,_eX,...)end
    return _eX(...)
  end)(...)
