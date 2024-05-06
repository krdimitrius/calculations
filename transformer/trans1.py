#!/usr/bin/env python3

"""
Calculation of the power transformer
(c) Dmitry Krysin 2024
"""

mydict = {
    "copyright": "(c) Dmitry Krysin 2024",
    "main": "Расчет силового трансформатора",
    "input": "\nВвод исходных данных:",
    "coil": "Обмотка ",
    "pn": "Номинальная мощность, Вт: ",
    "current": "Ток, А : ",
    "ask_num_sec_coils": "Число вторичных обмоток ? ",
    "ask_freq": "Частота, Гц ? ",
    "ask_voltage": "Напряжение, В ? ",
    "ask_current": "Ток, А ? ",
    "ask_bm": "Ампитуда магнитной индукции, Т ? ",
    "ask_jj": "Плотность тока в обмотках, A/кв.мм ? ",
    "ask_cc": "Коэффициент заполнения окна медью ? ",
    "ask_cs": "Коэффициент заполнения стержня сталью ? ",
    "ask_bo": "Ширина окна, мм ? ",
    "ask_ho": "Высота окна, мм ? ",
    "ask_y0": "Ширина стержня, мм ? ",
    "ask_y1": "Толщина набора мм ? ", 
    "ask_do": "Внешний диаметр, мм ? ",
    "ask_di": "Внутренний диаметр, мм ? ",
    "ask_hs": "Высота, мм ? ", 
    "ask_d1": "Толщина каркаса, мм ? ",
    "ask_d2": "Толщина изоляции между слоями, мм ? ",
    "ask_d3": "Толщина изоляции между обмотками, мм ? ",
    "ask_dc": "Диаметр провода по меди, мм ? ",
    "ask_di": "Диаметр провода по изоляции, мм ? ",
    "ask_toroid": "Тороидальный сердечник (y/n) ? ",
    "ask_change": "\nЗаменить сердечник (y/n) ? ",
    "ss": "Sм x Sок, кв.см*кв.см : ",
    "d0": "Толщина обмотки, мм :",
    "bo": "Ширина окна, мм :",
    "ymin": "Минимальный толщина набора, мм: ",
    "hmin": "Минимальная высота, мм: ",
    "kernel_square": "\nПрямоугольный сердечник\n",
    "kernel_toroid": "\nТороидальный сердечник\n",
    "coils_param_1": "\nДанные обмоток:",
    "coils_param_2": "Обмотка  Число витков",
    "test_coil": "\nПроверка размещения:",
    "test_coil_err": "Обмотка слишком толста!",
    "test_coil_ok": "Обмотка размещается.",
    "err_kernel": "Сердечник не подходит!\nНеобходимо выбрать новый сердечник.",
    "results_1": "\nРезультаты:",
    "results_2": "Обмотка Напр.,B  Ток,A  Витков  Диаметр, мм",
    "size": "\nРазмеры (мм): ",
}

# Параметыр обмотки
class Coil:
    def __init__(self):
        self.n = int(0) # число витков
        self.v = float(0) # напряжение, В
        self.c = float(0) # ток, А
        self.dc = float(0) # диаметр провода по меди, мм
        self.di = float(0) # диаметр провода по изоляции, мм 

    def input_v(self):
        while 1:
            self.v = float(input(mydict["ask_voltage"]))
            if self.v > 0:
                break

    def input_c(self):
        while 1:
            self.c = float(input(mydict["ask_current"]))
            if self.c > 0:
                break

    def input_dc(self):
        while 1:
            self.dc = float(input(mydict["ask_dc"]))
            if self.dc > 0:
                break

    def input_di(self):
        while 1:
            self.di = float(input(mydict["ask_di"]))
            if self.di > 0:
                break

    def print_c(self):
        print(mydict["current"] + str(self.c))

# Параметры трансформатора
class Transformer:
    def __init__(self):
        self.pn = float(0) # номинальная мощность, Вт
        self.fs = float(0) # частота питающей сети, Гц   
        self.bm = float(0) # Ампитуда магнитной индукции, Т
        self.jj = float(0) # Плотность тока в обмотках, A/кв.мм
        self.cc = float(0) # Коэффициент заполнения окна медью
        self.cs = float(0) # Коэффициент заполнения стержня сталью 
        self.sm = float(0) # сечение по меди
        self.ss = float(0) # Произведение площади меди на площадь окна, кв.см*кв.см

    # frequency input
    def input_freq(self):
        while 1:
            self.fs = float(input(mydict["ask_freq"]))
            if self.fs > 0:
                break

    # number of coils input
    def input_num_coils(self):
        while 1:
            n = int(input(mydict["ask_num_sec_coils"]))
            if n > 0:
                break

        self.coils = []
        for i in range(n+1):
            self.coils.append(Coil())

    # secondary coils params input
    # calculation power
    # calculation primary coil current 
    def input_coils_params(self):
        i = 1
        for coil in self.coils:
            print("\n" + mydict["coil"] + str(i))
            if (i==1):
                coil.input_v();
                self.pn = 0
            else:
                coil.input_v();
                coil.input_c();
                self.pn = self.pn + coil.v * coil.c
            i = i + 1

        self.coils[0].c = self.pn / self.coils[0].v

    def input_coil_wire_params(self):
        i = 1
        for coil in self.coils:
            print("\n" + mydict["coil"] + str(i))
            coil.print_c()
            coil.input_dc()
            coil.input_di()
            i = i + 1

    def input_kernel_params(self):

        print(" ")
        self.print_pnom()

        while 1:
            self.bm = float(input(mydict["ask_bm"]))
            if self.bm > 0 :
                break

        while 1:
            self.jj = float(input(mydict["ask_jj"]))
            if self.jj > 0 :
                break

        # the coefficient of filling the window with copper input
        while 1:
            self.cc = float(input(mydict["ask_cc"]))
            if (self.cc > 0) and (self.cc < 1):
                break

        # the coefficient of filling the kernel with steel input
        while 1:
            self.cs = float(input(mydict["ask_cs"]))
            if (self.cs > 0) and (self.cs < 1):
                break

        self.ss = 450000 * self.pn / self.fs / self.bm / self.jj / self.cc / self.cs
        print(mydict["ss"] + str(self.ss/10000))

    def input_square_params(self):
        print(mydict["kernel_square"])
        while 1:
            while 1:
                self.bo = float(input(mydict["ask_bo"]))
                if self.bo > 0 :
                    break
            while 1:
                self.ho = float(input(mydict["ask_ho"]))
                if self.ho > 0 :
                    break

            while 1:
                self.y0 = float(input(mydict["ask_y0"]))
                if self.y0 > 0 :
                    break

            t = self.ss / self.bo / self.ho / self.y0 * 1.01
            print(mydict["ymin"] + str(t))

            while 1:
                self.y1 = float(input(mydict["ask_y1"]))
                if self.y1 > 0 :
                    break

            t = self.y1 * self.y0 * self.bo * self.ho
            if (t >= self.ss):
                self.sm = self.y0 * self.y1
                break
            else:
                print(mydict["error_kernel"])

    def input_toroid_params(self):
        print(mydict["kernel_toroid"])
        while 1:
            while 1:
                self.do = float(input(mydict["ask_do"]))
                if self.do > 0 :
                    break
            while 1:
                self.di = float(input(mydict["ask_di"]))
                if self.di > 0 :
                    break

            t = 3 * self.ss / self.do / self.do / (self.do - self.di) * 1.01
            print(mydict["hmin"] + str(t))

            while 1:
                self.hs = float(input(mydict["ask_hs"]))
                if self.hs > 0 :
                    break
            t = self.do * self.do * self.hs * (self.do - self.di) / 3
            if (t >= self.ss):
                self.sm = self.hs * .5 * (self.do - self.di)
                break
            else:
                print(mydict["error_kernel"])

    def test_coil(self):
        print(mydict["test_coil"])

        while 1:
            d1 = float(input(mydict["ask_d1"]))
            if d1 > 0 :
                break

        while 1:
            d2 = float(input(mydict["ask_d2"]))
            if d2 > 0 :
                break

        while 1:
            d3 = float(input(mydict["ask_d3"]))
            if d3 > 0 :
                break

        d0 = d1;    
        for coil in self.coils:
            ws = (self.ho - 2 * (d1 + 1)) / 1.3 / coil.di
            ns = 1 + int(coil.n / ws)
            d0 = d0 + ns * (coil.di + d2) + d3;
            
        print(mydict["d0"] + str(d0))
        print(mydict["bo"] + str(self.bo))
        if (self.bo < d0):
            print(mydict["test_coil_err"])
        else:
            print(mydict["test_coil_ok"])

    #print nominal power
    def print_pnom(self):
        print(mydict["pn"] + str(self.pn))

    def print_coil_params(self):
        print(mydict["coils_param_1"])
        print(mydict["coils_param_2"])
        coef = 220000 / self.fs / self.bm / self.sm
        i = 1
        for coil in self.coils:
            coil.n = int(coef * coil.v);
            print(str(i) +" "+ str(coil.n))
            i = i + 1

    def print_results(self):
        print(mydict["results_1"])
        self.print_pnom()
        print(mydict["results_2"])
        i = 1
        for coil in self.coils:
            print(str(i) +" "+ str(coil.v) +" "+ str(coil.c) +" "+ str(coil.n) +" "+ str(coil.dc))
            i = i + 1

    def print_size_square(self):
        print(mydict["size"])
        print(str(self.y0) +"x"+ str(self.y1) +"-"+ str(self.bo) +"x"+ str(self.ho))

    def print_size_toroid(self):
        print(mydict["size"])
        print(str(self.do) +"/"+ str(self.di) +"-"+ str(self.hs))

def main():

    trans = Transformer()

    print(mydict["main"])
    print(mydict["input"])
    trans.input_freq()
    trans.input_num_coils()
    trans.input_coils_params()

    while 1:
        trans.input_kernel_params()

        answ = input(mydict["ask_toroid"])
        if answ in "nNтТнН":
            trans.input_square_params()
            trans.print_coil_params()
            trans.input_coil_wire_params()
            trans.test_coil()
            trans.print_results()
            trans.print_size_square()
        else:
            trans.input_toroid_params()
            trans.print_coil_params()
            trans.input_coil_wire_params()
            trans.print_results()
            trans.print_size_toroid()

        answ = input(mydict["ask_change"])
        if answ in "nNтТнН":
            break

if __name__ == '__main__':
    main()
