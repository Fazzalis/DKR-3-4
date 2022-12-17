uses Crt;

function f(x: real): real;
begin
  f := 2 * x * x * x + (-2 * x * x) + (5 * x) + 10;
end;

begin
  var a, b, h, x, y, s, f1, f2, p, l: real;
  var cet, jis, n, k: integer;
  
  ClrScr;
  Writeln('Формулировка - 1');
  Writeln('Ввод a,b,n - 2');
  Writeln('Приблизительное значение s - 3');
  Writeln('Точное значение p - 4');
  Writeln('Погрешность - 5');
  cet := 0;
  for var o: integer := 1 to 5 do
  begin
    
    Read(k);
    case k of
      1:
        begin
          ClrScr;
          Writeln('Формулировка - 1');
          Writeln('Ввод a,b,n - 2');
          Writeln('Приблизительное значение s - 3');
          Writeln('Точное значение p - 4');
          Writeln('Погрешность - 5');
          Writeln;
          jis := 1;
          cet += 1;
          if cet = jis then begin
            Writeln('Формулировка:');
            writeln('Изучение базовых принципо организации процедур и функций');
            writeln('Цель работы: освоить синтаксис построения процедур и функций, изучить способы передачи данных в подпрограммы, получить навыки организации минимаального пользовательского интерфейса');
            writeln('Задание:');
            writeln('1. Реализовать программу вычисления площади фигуры, ограниченной кривой 2*x:3+(-2)*x:2+(5)*x+(10) и осью ОХ (в положительной части по оси ОY.');
            writeln('2. Вычисление определённого интеграла должно выполняться численно, с применением метода правых треугольников.');
            writeln('3. Пределы интегрирования вводятся пользователем.');
            writeln('4. Взаимодействие с пользователем должно осуществляться посредством case-меню.');
            writeln('5. Требуется реализовать возможность оценки погрешности полученного результата.');
            writeln('6. Необходимо использовать процедуры и функции так, где это целесообразно.'); end
          else begin writeln('Идите по порядку!'); break; end;
        end;
      2:
        begin
          ClrScr;
          Writeln('Формулировка - 1');
          Writeln('Ввод a,b,n - 2');
          Writeln('Приблизительное значение s - 3');
          Writeln('Точное значение p - 4');
          Writeln('Погрешность - 5');
          Writeln;
          jis := 2;
          cet += 1;
          if cet = jis then begin
            Writeln('Ввод a,b,n');
            a := ReadReal('введите первый предел ');
            b := ReadReal('введите второй предел ');
            n := ReadInteger('введите кол-во шагов'); end
          else begin writeln('Идите по порядку!'); break; end;
        end;
      3:
        begin
          ClrScr;
          Writeln('Формулировка - 1');
          Writeln('Ввод a,b,n - 2');
          Writeln('Приблизительное значение s - 3');
          Writeln('Точное значение p - 4');
          Writeln('Погрешность - 5');
          Writeln;
          jis := 3;
          cet += 1;
          if cet = jis then begin
            h := (b - a) / n;
            x := a + h;
            s := 0;
            for var m: integer := 1 to n do
            begin
              y := 2 * x * x * x + (-2 * x * x) + (5 * x) + 10;
              s += y;
              x += h;
            end;
            s *= h;
            writeln('Приблизительно е значение s = ', s); end
          else begin writeln('Идите по порядку!'); break; end;
        end;
      4:
        begin
          ClrScr;
          Writeln('Формулировка - 1');
          Writeln('Ввод a,b,n - 2');
          Writeln('Приблизительное значение s - 3');
          Writeln('Точное значение p - 4');
          Writeln('Погрешность - 5');
          Writeln;
          jis := 4;
          cet += 1;
          if cet = jis then begin
            x := b;
            l := f(x);
            s -= l;
            x := a;
            l := f(x);
            s += l;
            x := a;
            f1 := x * x * x * x / 2 + (-2 * x * x * x / 3) + 2.5 * x * x + 10 * x;
            x := b;
            f2 := x * x * x * x / 2 + (-2 * x * x * x / 3) + 2.5 * x * x + 10 * x;
            p := f2 - f1;
            writeln('Точное значение p = ', p);
          end
          else begin writeln('Идите по порядку!'); break; end;
        end;
      5:
        begin
          ClrScr;
          Writeln('Формулировка - 1');
          Writeln('Ввод a,b,n - 2');
          Writeln('Приблизительное значение s - 3');
          Writeln('Точное значение p - 4');
          Writeln('Погрешность - 5');
          Writeln;
          jis := 5;
          cet += 1;
          if cet = jis then begin
            writeln('Погрешность равна +- ', Abs(p - s));
          end
          else begin writeln('Идите по порядку!'); break; end;
        end;
    end; 
  end;
end.