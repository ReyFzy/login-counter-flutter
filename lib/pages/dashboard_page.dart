import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/counter_controller.dart';

class DashboardPage extends StatelessWidget {
  CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Login Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Center(
                child: Text(
              "Dashboard",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
            const SizedBox(height: 20),
            Container(
              width: double.maxFinite,
              height: 220,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Mangga",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                                onPressed: () {
                                  counterController.decrementMangga();
                                },
                                icon: const Icon(Icons.remove,
                                    color: Colors.blue)),
                          ),
                          const SizedBox(width: 10),
                          Obx(() => Text(
                                counterController.mangga.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              )),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                                onPressed: () {
                                  counterController.incrementMangga();
                                },
                                icon:
                                    const Icon(Icons.add, color: Colors.blue)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Pepaya",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                                onPressed: () {
                                  counterController.decrementPapaya();
                                },
                                icon: const Icon(Icons.remove,
                                    color: Colors.blue)),
                          ),
                          const SizedBox(width: 10),
                          Obx(() => Text(
                                counterController.pepaya.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              )),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                                onPressed: () {
                                  counterController.incrementPapaya();
                                },
                                icon:
                                    const Icon(Icons.add, color: Colors.blue)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Obx(() => Text(
                            "Total : ${counterController.total}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          )),
                      const SizedBox(width: 20),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
