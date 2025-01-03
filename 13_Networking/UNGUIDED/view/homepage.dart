import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan_13/viewmodel/notes_controller.dart';

import 'add_note_page.dart';

class Homepage extends StatelessWidget {
  final NotesController notesController = Get.put(NotesController());

  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Catatan'),
        centerTitle: true,
      ),
      body: Obx(() {
        return notesController.notes.isEmpty
            ? const Center(child: Text('Belum Ada Catatan.'))
            : ListView.builder(
                itemCount: notesController.notes.length,
                itemBuilder: (context, index) {
                  final note = notesController.notes[index];
                  return Card(
                    child: ListTile(
                      title: Text(note['title']!),
                      subtitle: Text(note['description']!),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Color.fromARGB(255, 134, 4, 255)),
                        onPressed: () => notesController.deleteNote(index),
                      ),
                    ),
                  );
                },
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(AddNotePage()),
        child: const Icon(Icons.add),
      ),
    );
  }
}