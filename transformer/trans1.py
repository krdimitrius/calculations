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


def set_coils_param():

    num_coils = int(input(mydict["asK_num_sec_coils"]))
    
    fs = float(input(mydict["ask_freq"]))
    v = float(input(mydict["ask_voltage"]))

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
