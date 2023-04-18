import 'package:easy_localization/easy_localization.dart';
import 'package:emtest/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

class material_content1 extends StatefulWidget {
  const material_content1({Key? key}) : super(key: key);

  @override
  State<material_content1> createState() => _material_contentState();
}

class _material_contentState extends State<material_content1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
            LocaleKeys.Material.tr(),
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                if (context.locale == Locale('en')) {
                  context.setLocale(Locale('ru'));
                } else {
                  context.setLocale(Locale('en'));
                }
              },
              child: Icon(
                Icons.translate,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 430,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/material1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.Cashiers_minimums.tr(),
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                              LocaleKeys.Cashiers_are_our_last_contact_with_customers_The_ultimate_customer_satisfaction_depends_on_his_her_attitude.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.Any_transfer_from_the_cashier_to_the_buyer_is_carried_out_from_hand_to_hand_bank_card_sale_refund_receipt_money_pen_etc.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_goods_coming_to_the_checkout_are_already_purchased_goods_The_cashier_always_treats_him_carefully_removing_the_alarm_folding_packing_the_thing_in_a_bag_as_well_as_handing_the_package_to_the_buyer.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_cashier_always_announces_the_purchase_amount_loudly_enough.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                              LocaleKeys.The_cashier_is_obliged_to_explain_to_the_buyer_the_importance_of_keeping_the_receipt.tr(),                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_cashier_is_obliged_to_staple_a_bank_card_receipt_and_a_fiscal_receipt_with_a_stapler.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_cashier_is_obliged_to_inform_the_buyer_of_all_the_information_he_is_interested_in_services_provided_by_the_store_rules.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_cashier_does_not_talk_on_the_phone_at_the_time_of_payment_by_the_buyer_of_his_purchase.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.The_cashier_should_always_thank_the_customer_for_the_purchase_and_say_goodbye.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      LocaleKeys.Also_in_our_stores.tr(),
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.Do_not_change_and_do_not_exchange_money.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.Hangers.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.Always.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.If_you.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.check),
                        Expanded(
                          child: Text(
                            LocaleKeys.They_always.tr(),
                            style: TextStyle(
                                color: Colors.black, fontSize: 19, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                width: 400,
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/material1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
