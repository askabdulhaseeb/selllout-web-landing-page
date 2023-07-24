import 'package:flutter/material.dart';

import '../../utilities/term_and_condition.dart';

class TermAndConditionPage extends StatelessWidget {
  const TermAndConditionPage({super.key});
  static const String routeName = '/term-condition';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                TermAndConditions.firstHeading,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              SelectableText(
                TermAndConditions.date,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                TermAndConditions.heading2,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: TermAndConditions.tableofContent
                    .map((e) => MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: SelectableText(
                              e.head,
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              RichText(
                text: TextSpan(
                    text: TermAndConditions.agrementHeading,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: TermAndConditions.agrement1,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16),
                      ),
                      TextSpan(
                        text: '(' + TermAndConditions.agrementbold + ')',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      TextSpan(
                        text: TermAndConditions.agrement2,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16),
                      ),
                      const TextSpan(
                        text: ' https://selll-out.web.app/ ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 16),
                      ),
                      TextSpan(
                        text: TermAndConditions.agrement3,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16),
                      ),
                    ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: TermAndConditions.allData.map((e) {
                  String body = e.Body.replaceAll('-1', '⚪️');
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          e.heading,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          body,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              SelectableText(
                TermAndConditions.ending,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 77, 75, 75)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
