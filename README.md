# 📦 auto_list_grid_view

`auto_list_grid_view` — bu Flutter paketi, ekran ölçüsünə əsasən avtomatik olaraq `ListView.builder` görünüşündən `GridView.builder` görünüşünə keçid etməyə imkan verir.

Bu paket mobil və web platformalarda **responsive dizaynı** asanlaşdırmaq üçün nəzərdə tutulmuşdur.

---

## ✨ Xüsusiyyətlər

- 📱 Kiçik ekranlarda `ListView.builder`
- 🖥️ Böyük ekranlarda avtomatik `GridView.builder`
- ⚙️ Sadə istifadə və təmiz kod
- 🔁 Ekran ölçüsünü avtomatik təhlil edir

---

## 🚀 İstifadə nümunəsi

```dart
AutoListGridView(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return Card(
      child: Center(child: Text(items[index])),
    );
  },
)


dependencies:
  list_to_grid_converter: ^0.0.1


👨‍💻 Müəllif
Samir Əliyev
📧 samir.aliyev@code.edu.az
🔗 LinkedIn

📄 Lisenziya
MIT License. Ətraflı məlumat üçün LICENSE sənədinə baxın.
