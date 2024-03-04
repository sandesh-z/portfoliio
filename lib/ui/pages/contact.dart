import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle appTextStyle = const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18);
    var titleGap = 20.0;
    return
        // appBar: AppBar(
        //   leading: const Padding(
        //       padding: EdgeInsets.only(left: 40.0),
        //       child: Icon(
        //         Icons.person_4,
        //         size: 28,
        //       )),
        //   toolbarHeight: 79,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       Text(
        //         "About",
        //         style: appTextStyle,
        //       ),
        //       SizedBox(width: titleGap),
        //       Text(
        //         "Projects",
        //         style: appTextStyle,
        //       ),
        //       SizedBox(width: titleGap),
        //       ElevatedButton(
        //         onPressed: () {
        //           Navigator.of(context).push(
        //               MaterialPageRoute(builder: (_) => const ContactPage()));
        //         },
        //         child: Text(
        //           'Contact',
        //           style: appTextStyle,
        //         ),
        //       ),
        //       SizedBox(width: titleGap * 2),
        //     ],
        //   ),
        //   backgroundColor: Colors.grey,
        // ),

        Column(
      children: [
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(80.0),
            child: Row(
              children: [
                Flexible(flex: 1, child: ContactMe()),
                Flexible(flex: 1, child: ContactForm())
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Contact Me"),
        SizedBox(height: 15.0),
        Text(
            "If you have any questions or comments,\nplease contact me via email or phone,\nor send me a message using the contact form."),
        SizedBox(height: 20.0),
        Text("Email:\ntest@gmail.com"),
        SizedBox(height: 20.0),
        Text("GitHub: \ngithub.com/@sandesh-z"),
        SizedBox(height: 40.0),
        Row(
          children: [Icon(Icons.email), Icon(Icons.linked_camera_outlined)],
        )
      ],
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Name (required)"),
        const SizedBox(height: 20.0),
        const FormRowWidget(
            label1Text: "First Name",
            label2Text: "Last Name",
            label1HintText: "Enter your first Name",
            label2HintText: "Enter your last name"),
        const SizedBox(height: 20.0),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'Enter your first Name',
          ),
        ),
        const SizedBox(height: 20.0),
        const Text("Phone"),
        const FormRowWidget(
            label1Text: "Country",
            label2Text: "Phone Number",
            label1HintText: "Select Country",
            label2HintText: "Enter your phone number"),
        const SizedBox(height: 20.0),
        const Text("Subject (required)"),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20.0),
        const Text("Message (requried)"),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}

class FormRowWidget extends StatelessWidget {
  final String label1Text, label2Text;

  final String label1HintText, label2HintText;
  const FormRowWidget(
      {super.key,
      required this.label1Text,
      required this.label2Text,
      required this.label1HintText,
      required this.label2HintText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label1Text,
              hintText: label1HintText,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Flexible(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label2Text,
              hintText: label1HintText,
            ),
          ),
        ),
      ],
    );
  }
}
