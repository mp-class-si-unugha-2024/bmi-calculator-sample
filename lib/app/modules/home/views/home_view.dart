import 'package:bmi_calculate/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculate'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            // card -- gender
            const Expanded(
              child: Row(
                children: [
                  // card -- cowo
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 80),
                          Text("Cowo", style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ),
                  ),
                  // finish -- cowo
                  SizedBox(width: 15),

                  // card -- cewe
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 80),
                          Text("Cewe", style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ),
                  ),
                  // finish -- cewe
                ],
              ),
            ),
            // finish -- gender
            const SizedBox(height: 15),

            // card -- tinggi
            Expanded(
              child: Card(
                child: Obx(
                  () => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // teks -- height
                      const Text("Height", style: TextStyle(fontSize: 20)),
                      // finish -- height

                      // teks -- tinggi 150 cm
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${controller.height.value}", //teksnya di konvert dari float / double ke string
                            style: const TextStyle(fontSize: 50),
                          ),
                          const Text("cm", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      // finish -- tinggi 150 cm

                      // sliders -- yang di geser kanan kiri
                      Slider(
                        value: controller.height.value
                            .toDouble(), // tipenya harus double / float
                        min: 100,
                        max: 200,
                        activeColor: Colors.pink,
                        onChanged: (value) =>
                            controller.height.value = value.toInt(),
                      )
                      // finish -- slider yang di geser kanan kiri
                    ],
                  ),
                ),
              ),
            ),
            // finish -- tinggi
            const SizedBox(height: 15),

            // card -- berat & umur
            const Expanded(
              child: Center(
                  child: Text(
                "Coba bikin menu yang di sini 😉👌",
                style: TextStyle(fontSize: 20),
              )),
            ),
            // finish -- berat & umur
          ],
        ),
      ),

      // tombol -- calculate
      bottomNavigationBar: InkWell(
        onTap: () => Get.toNamed(Routes.CALCULATED),
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.pink,
          child: const Text(
            "Calculate",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      // finish -- calculate
    );
  }
}
