package com.nhathanh.service;

import com.nhathanh.model.DienThoai;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.ArrayList;
import java.util.List;

@Service
@SessionScope
public class ShoppingCartService {
    private List<ShoppingCartInfor> list = new ArrayList<>();

    public List<ShoppingCartInfor> getList(){
        return this.list;
    }

    public void add(DienThoai dt){
        boolean check = false;
        for(int i = 0; i < list.size(); i++){
            if(list.get(i).getDienThoai() == dt){
                list.get(i).setSoLuong(list.get(i).getSoLuong() + 1);
                check = true;
                break;
            }
        }
        if(!check){
            list.add(new ShoppingCartInfor(dt,1));
        }
    }

    public void remove(String id){
        for(int i = 0; i < list.size(); i++){
            if(list.get(i).getDienThoai().getId_dt().equals(id)){
                if(list.get(i).getSoLuong() == 0){
                    list.remove(i);
                }else{
                    list.get(i).setSoLuong(list.get(i).getSoLuong() - 1);
                }
                break;
            }
        }
    }
}
