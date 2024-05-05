#!/usr/bin/env python3

"""
Calculation of the power transformer
(c) Dmitry Krysin 2024
"""

mydict = {
    "copyright": "(c) Dmitry Krysin 2024",
    "main": "Расчет силового трансформатора",
    "input": "Ввод исходных данных:",
    "coil": "Обмотка ",
    "ask_num_sec_coils": "Число вторичных обмоток ? ",
    "ask_freq": "Частота, Гц ? ",
    "ask_prim_voltage": "Напряжение сети, В ? ",
    "ask_voltage": "Напряжение, В ? ",
    "ask_current": "Ток, А ? ",
    "power": "Номинальная мощность, Вт ",
    "ask_bm": "Ампитуда магнитной индукции, Т ? ",
    "ask_jj": "Плотность тока в обмотках, A/кв.мм ? ",
    "ask_ko": "Коэффициент заполнения окна медью ? ",
    "ask_km": "Коэффициент заполнения стержня сталью ? ",
    "ss": "Sм x Sок, кв.см*кв.см ",
    "ask_ring": "Кольцевой сердечник (y/n) ? ",
    "ask_bo": "Ширина окна, мм ? ",
    "ask_ho": "Высота окна, мм ? ",
    "ask_y0": "Ширина стержня, мм ? ",
    "ymin": "Минимальный толщина набора, мм: ",
    "ask_y1": "Толщина набора мм ? ", 
    "err_1": "Сердечник не подходит!\n Необходимо выбрать новый сердечник.",
    "ask_dn": "Внешний диаметр, мм ? ",
    "ask_dv": "Внутренний диаметр, мм ? ",
    "dmin": "Минимальная высота, мм: ",
    "ask_hs": "Высота, мм ? ", 
    "coils_param_1": "Данные обмоток:",
    "coils_param_2": "Обмотка Число витков",
    "coil_test": "Проверка размещения:",
    "ask_d1": "Толщина каркаса, мм ? ",
    "ask_d2": "Толщина изоляции между слоями, мм ? ",
    "ask_d3": "Толщина изоляции между обмотками, мм ? ",
    "d0": "Толщина обмотки, мм :",
    "bo": "Ширина окна, мм :",
    "err_2": "Обмотка слишком толста!",
    "results_1": "Результаты:",
    "pn": "Номинальная мощность, Вт: ",
    "results_1": "Обмотка Напр.,B Ток,A  Витков Диаметр, мм",
    "size": "Размеры (мм):",
    "ask_change": "Заменить сердечник (y/n) ? ",
}

# Параметыр обмотки
class Coil:
    def __init__(self):

        t = int(0) # число витков
        v = float(0) # напряжение, В
        c = float(0) # ток, А
        dc = float(0) # диаметр провода по меди, мм
        di = float(0) # диаметр провода по изоляции, мм 

    def inp         

# Параметры трансформатора
class Transformer:
    def __init__(self):

        coils = [Coil()]
        ncoils = int(1) # число обмоток
        pn = float(0) # номинальная мощность, Вт
        fs = float(0) # частота питающей сети, Гц   
        bm = float(0) # Ампитуда магнитной индукции, Т
        jj = float(0) # Плотность тока в обмотках, A/кв.мм
        ko = float(0) # Коэффициент заполнения окна
        km = float(0) # Коэффициент заполнения стержня  
        sm = float(0) # сечение по меди
        ss = float(0) # Произведение площади меди на площадь окна, кв.см*кв.см




trans = Transformer

def set_coils_param():

    while 1:
        num_coils = int(input(mydict["ask_num_sec_coils"]))
        if num_coils > 0:
            break;

    trans.fs = float(input(mydict["ask_freq"]))
    trans.coils[0].v = float(input(mydict["ask_voltage"]))

    for i in range(num_coils):
        print("\n" + mydict["coil"] + str(i + 1))
        v = float(input(mydict["ask_voltage"]))
        c = float(input(mydict["ask_current"]))

def main():

    print(mydict["main"])
    print(mydict["input"])

    set_coils_param()

if __name__ == '__main__':
    main()
