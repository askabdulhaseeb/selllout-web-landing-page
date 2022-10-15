import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../footer/footer.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);
  static const String routePath = '/privacy';
  static const String _wensiteURL = 'https://selll-out.web.app/#/';
  Future<void> _launchUrl({String? urlPath}) async {
    if (urlPath == null || urlPath.isEmpty) return;
    log('URL GOING TO LUNCH: $urlPath');
    final Uri url = Uri.parse(urlPath);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  TextSpan titleTextSpan(
    BuildContext context,
    String title, {
    String? url,
  }) {
    return TextSpan(
      text: '$title ',
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = () => _launchUrl(urlPath: url),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Center(
                      child: Title(title: 'Privacy Policy for SellOut'),
                    ),
                    const SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyText1!.color),
                        children: <TextSpan>[
                          const TextSpan(text: 'Welcome to '),
                          titleTextSpan(context, 'SellOut', url: _wensiteURL),
                          const TextSpan(
                            text:
                                'which is being supervised, managed and operated by the parent company ',
                          ),
                          titleTextSpan(context, 'SellOut', url: _wensiteURL),
                          const TextSpan(
                              text: 'having a registered office at '),
                          titleTextSpan(context, 'Address'),
                          const TextSpan(
                            text:
                                'provides, offers or is willing to provide or offer e-commerce services to its Users/Visitors ',
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      '''We know that you are conscious of the data you share with us. We respect our valued customer's privacy and are aware of our responsibility to retain, manage, preserve and protect your data as per the Cyber Laws requirements.''',
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyText1!.color),
                        children: <TextSpan>[
                          const TextSpan(
                              text:
                                  'PLEASE READ OUR PRIVACY POLICY CAREFULLY. THIS PRIVACY POLICY EXPLAIN AND ELABORATE OUR POLICIES REGARDING HOW WE COLLECT, MANAGE, USE AND DISCLOSE THE PERSONAL INFORMATION THAT YOU PROVIDE US WHILE VISITING OR USING OUR SERVICES ON THE APPLICATION CONTROLLED BY OUR APPLICATION '),
                          titleTextSpan(context, 'SELLOUT', url: _wensiteURL),
                          const TextSpan(
                            text:
                                'AND UNDER WHAT CIRCUMSTANCES WE SHARE IT. BY CREATING AN ACCOUNT OR ORDERING SERVICES ON THIS APPLICATION, YOU EXPRESSLY DECLARE THAT YOU HAVE READ, UNDERSTOOD AND ACCEPTED THIS PRIVACY POLICY, AND HAVE LEGAL AUTHORITY TO BIND THE LEGAL ENTITY WHOM YOU REPRESENT. WE USE YOUR DATA TO FACILITATE OUR CUSTOMERS BY IMPROVING OUR SERVICES. THIS PRIVACY POLICY DOES NOT APPLY TO THE INFORMATION THAT YOU MAY PROVIDE TO THIRD PARTIES WITH WHOM YOU MAY SHARE INFORMATION ABOUT YOURSELF. WE ARE AUTHORIZED TO UPDATE OR AMEND OUR PRIVACY POLICY AT ANY TIME WHICH SHALL BE INTIMATED TO YOU VIA EMAIL OR THROUGH THE APPLICATION NOTIFICATION. YOUR CONTINUED USE OF THIS APPLICATION AFTER CHANGES ARE IMPLEMENTED SHALL BE DEEMED TO BE ACCEPTANCE OF THOSE CHANGES, SO YOU ARE REQUESTED TO CHECK THE POLICY REGULARLY FOR UPDATES.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    //
                    // About this App
                    //
                    const Title(title: 'About This Privacy Policy'),
                    const Text(
                      '''This Privacy Policy illustrates the types of information we may gather or collect from you or that you may provide us when you visit, interact or use our Application and our practices for collecting, using, maintaining, protecting, and disclosing that information. We are committed to protect your personal information through our compliance with this policy.''',
                    ),
                    const Text('We collect'),
                    const SizedBox(height: 10),
                    const Text('>     Personal Information'),
                    const Text('>     Non-Personal Information'),
                    //
                    // HOW WE COLLECT INFORMATION
                    //
                    const SizedBox(height: 20),
                    const Title(title: 'HOW WE COLLECT INFORMATION'),
                    const Text(
                      'We collect, receive or store your personal data by using various methods that are necessary for certifying information related to your identification and to make it possible to make payments and send receipts and reports. We may collect your data through:',
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 32, top: 16, bottom: 8),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                          children: <TextSpan>[
                            titleTextSpan(context, 'Direct information '),
                            const TextSpan(
                              text:
                                  'information you provide us by using, visiting or creating an account on our site such as your name, age, gender, address, email, etc.,',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, bottom: 20),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                          children: <TextSpan>[
                            titleTextSpan(context, 'Indirect information  '),
                            const TextSpan(
                              text:
                                  'information we collect automatically such as usage details, IP addresses, location, operating system, cookies, IMEI number, browser type and version, Internet service provider (ISP), and the files viewed on our site (e.g., HTML pages, graphics, etc.),',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Title(title: 'INFORMATION YOU PROVIDE US'),
                    const Text(
                      'The type of personal data we may collect directly when you create an account on our Application includes:',
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 32, top: 16, bottom: 8),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                          children: <TextSpan>[
                            titleTextSpan(
                              context,
                              'Information for contact, reports and receipts: ',
                            ),
                            const TextSpan(
                              text:
                                  'Name, age, valid E-mail Address, Postal Address/ location, phone number.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, bottom: 20),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                          children: <TextSpan>[
                            titleTextSpan(context, 'Billing information: '),
                            const TextSpan(
                              text:
                                  'Payment information such as credit or debit Card Information, and bank account details (such information may be gathered by our affiliates and/or third-party payment service providers)',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Title(
                      title:
                          'INFORMATION WE COLLECT THROUGH AUTOMATIC DATA COLLECTION TECHNOLOGIES',
                    ),
                    const Text(
                      'We use automated technologies such as location identifiers, cookies, device identifiers and other advanced technologies that may automatically collect your data when you visit or interact with us through our site either through a browser or mobile app. ',
                    ),
                    const Text(
                        '''>     Device information you use to access the site,
>     Time and location,
>     Internet protocol (IP) address, 
>     Browser type and version, 
>     Login data,
>     Operating system,
>     IMEI and MAC address, 
>     Internet service provider (ISP) 
>     Equipment,
>     Files viewed on our site (e.g., HTML pages, graphics, etc.) 
>     Browsing actions and patterns,
>     Software and hardware information
>     Information about your visit to our Application, including traffic data, logs, and other communication data 
'''),
                    const Text(
                      'The information we collect through automated technologies does not include users’ personal information. We collect this information to give the user the best possible services and experience by improving our services.',
                    ),
                    const SizedBox(height: 20),
                    const Title(title: 'COOKIES DATA'),
                    const Text(
                      '''We and our partners, affiliates or authorized service providers use various methods and technologies for tracking the activity on our site and to receive technical information of the user which may include the use of cookies (Cookies) or web beacons. Cookies are small files stored on the hard drive of your computer that is sent to the computer when you visit our site via browser or mobile application. You may accept or reject browser cookies through the appropriate settings in your browser. However, if you do not accept cookies, you may not be able to access some portion of our services or part of the site may not operate properly.  The information collected through cookies helps us in the administration of the Application, analyzing trends and determining how frequently you are visiting our Application or app to enable us to understand users’ preferences and interests and to enhance or personalize your experience with us.''',
                    ),
                    const SizedBox(height: 20),
                    const Title(title: 'Google Analytics'),
                    const Text(
                      '''This Application may allow some third-party service providers to monitor and analyze the usage of our service, such as Google Analytics, a web analytics service provided by Google, Inc. ("Google") which deploys cookies on our site to track and report Application traffic or collect information through your browser or mobile application to help us understand the usage of our Application and more about information that Google may collect. For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page.''',
                    ),
                    GestureDetector(
                      onTap: () async => _launchUrl(
                          urlPath: 'http://www.google.com/policies/privacy/'),
                      child: Text(
                        '(http://www.google.com/policies/privacy/).',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Title(title: 'HOW WE USE YOUR INFORMATION'),
                    const Text(
                        '''We use information that we collect about you or that you provide to us on the circumstances for which you interacted with our service; we may use your personal information to:

>     Activate and manage your personal account,
>     For easing accessibility and usage of site,
>     Facilitating the purchasing process and delivering a product you ordered for,
>     To manage, maintain and improve our services,
>     To Process and complete the request, order or other transaction related to your purchase,
>     To conduct marketing and advertising,
>     Verify and carry out financial transactions,
>     To provide customer service support to the users,
>     To keep the Service working and secure and up-to-date,
>     Respond to your feedback, questions, requests, inquiries and comments
>     Inform you about modifications, updates, and other announcements related to our products, policies, and services,
>     Invite you to participate in surveys as well as in promotions
>     Understand user experience, Identify usage trends, analyze data and improve our business performance,
>     Protect the users from fraud, illegal and invalid transactions,
>     To detect and prevent technical issues
'''),
                    const Title(
                        title: 'DISCLOSURE OR SHARING OF YOUR INFORMATION'),
                    const Text(
                        '''By this policy, you agree that we are fully authorized to disclose, transfer or share your personal data or permit others to share it while keeping it secure from unauthorized use and in good faith under the following circumstances;
a.    To meet legal obligations, applicable laws, rules and regulations, court orders or in response to a valid request by a law enforcement agency or public authorities,
b.    We may share your data with Google Analytics to analyze user interest or behavior, conduct surveys and improve our services,  
c.    To prevent, protect or otherwise handle security, fraud, or technical issues,
d.    To prevent possible wrongdoing in connection with the Service,
e.    To protect the rights of the company, its affiliates, users and the public,
f.    Among our affiliates, subsidiaries, and other third-party service providers(such as agents, vendors, contractors and partners) to help or assist in providing you with better services or otherwise handle or process your Personal Data in accordance with  the purposes set out in this policy,  
g.    We may share your data with Marketing and advertising platforms, such as Google, Facebook, Twitter or other social media platforms and Applications to promote and advertise our services, 
h.    We may share your information with Payment service providers to ensure payment for transactions or provide a service write-off for sellers. 
i.    We may share your information with courier service
j.    We may share or transfer your personal information if we sell our business or our company merges with another company. 
You agree that the operations or actions of such third-party service providers are governed and controlled by their own privacy policies and are not subject to this privacy policy. However, while disclosing your personal data to third parties, we endeavor our best to ensure that these third parties and our affiliates keep your personal data safe and secure from unauthorized access, collection, usage, disclosure and retain your data only for as long as your personal data helps with any of the uses of your data as set out in our Privacy Policy. Your credit card and debit card details will not be sold, shared, stored, rented or transferred to an unauthorized source, entity or any third party.
If you have any questions about the security of your personal information or if you would like us to have your personal information removed from our database, please contact us at through our e-mail.
'''),
                    const Title(title: 'RETENTION OF DATA'),
                    const Text(
                        '''You agree that we are authorized to retain your data for longer periods to strengthen the security or to improve the functionality of our services. We will retain and use your Data for as long as it is necessary 
>      to comply with our legal obligations such as to comply with applicable laws, 
>      to resolve disputes, 
>      to enforce our legal agreements and policies
>      internal analysis  
We may remove or erase your personal data at any time if we think that such retention no longer serves the purposes for which it was collected or required for any legal or business purpose.
'''),
                    const Title(title: 'MINOR (UNDER 18 YEARS OF AGE)'),
                    const Text(
                      'Minors under the age of 18 years are strictly prohibited to use our site. We do not intentionally collect, store, share, or distribute information from anyone below the age of 18. We do not target our services to minors. If you are a parent or guardian of a minor and you are aware that your Children have provided us with Personal Data, please contact us. We are authorized to erase data if we become aware that the same has been gathered from a minor.',
                    ),
                    const SizedBox(height: 20),
                    const Title(title: 'CHANGES TO OUR PRIVACY POLICY'),
                    const Text(
                      '''We reserve the right to update, amend, change or modify this privacy policy at any time to meet the requirement of standards. In case we make any material changes, we'll notify you via email service or by other means, prior to the change becoming effective. You are advised to keep visiting our site to review any changes. The updated privacy policy will become effective from the date of posting or publishing on our site.''',
                    ),
                    const SizedBox(height: 20),
                    const Title(title: 'CONTACT INFORMATION'),
                    const Text(
                      'If you have any questions, comments, complaints, or queries regarding the ways and purposes for which we collect and use your information as described then please do not hesitate to contact us via email.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
