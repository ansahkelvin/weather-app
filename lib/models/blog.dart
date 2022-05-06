class Blog {
  final String id;
  final String title;
  final String information;
  final String shortInfo;
  final String imgUrl;
  final String date;

  Blog({
    required this.id,
    required this.title,
    required this.information,
    required this.shortInfo,
    required this.imgUrl,
    required this.date,
  });

  static final List<Blog> data = [
    Blog(
      id: "123",
      title: "Can Digitalization Transform African Farmers and Food Systems?",
      information:
          "Agriculture and food production is important in providing a leeway to poverty reduction and enriching socio-economic livelihoods in Africa. It is central to enabling Africa achieve African Union's Agenda 2030 development targets and the UN's Sustainable Development Goals. Agriculture in Africa continues to face challenges, triggered from multiple fronts: Covid-19 pandemic and attendant variants, commodity supply chain disruptions, and in-country agricultural policy incoherence. Action plans and strategies to strengthen Africa's food systems is needed now.",
      shortInfo:
          "Agriculture and food production is important in providing a leeway to poverty reduction and enriching socio-economic livelihoods in Africa.",
      imgUrl:
          "https://images.unsplash.com/photo-1592210454359-9043f067919b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
      date: "thu, 3 April ",
    ),
    Blog(
      id: "123=5",
      title:
          "Five new climate and disease resilient potato varieties approved for release in Malawi",
      information:
          "Five climate and disease resilient potato varieties developed by the James Hutton Institute-led Quikgro research project have been approved for release in Malawi by the Agriculture Technology Release Committee of the Malawian Ministry of Agriculture, Irrigation and Water Development. It is hoped that the new varieties will contribute to economic growth and prosperity along the whole potato supply chain in the region.",
      shortInfo:
          "Five climate and disease resilient potato varieties developed by the James Hutton Institute-led Quikgro research project have been approved for release in Malawi by the Agriculture",
      imgUrl:
          "https://images.unsplash.com/photo-1560493676-04071c5f467b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80",
      date: "fri, 4 April ",
    ),
    Blog(
      id: "123we",
      title: "Strong need to improve cocoa governance",
      information:
          "There is a vivid and ongoing debate on different strategies for improving the position of cocoa smallholders in West Africa. Several studies focused on opportunities for poverty reduction in the cocoa sector, looking at the role of land tenancy, the impact of fair trade, the opportunities for living wages and the importance of institutional and market reforms. All studies seem to agree on the idea that there is ‘no one size fits all’ solution, but they tend to disagree on the priorities and pathways for implementing a combined set of measures for improving farmers livelihoods. In essence, this is due to their reliance on partial approaches and the rather limited use of systems transformation thinking.",
      shortInfo:
          "There is a vivid and ongoing debate on different strategies for improving the position of cocoa smallholders in West Africa",
      imgUrl:
          "https://images.unsplash.com/photo-1578269830911-6159f1aee3b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80",
      date: "thu, 3 April ",
    ),
    Blog(
      id: "123er",
      title:
          "Climate Data and Information Service for African Farmers on WhatsApp",
      information:
          "The adoption capacities of new farming practices by African smallholder producers and their innovation potential of farming systems changes are challenged due to resource limitations and climate risks. Additionally, limited stock of farmer-led and demand-driven climate-resilient services are available on the continent. It is acknowledged that Africa's cropping calendars are changing due to erratic rainfall and temperature changes whiles African smallholder farmers are expected to build farming resilience in the midst of multiple food systems challenges. ",
      shortInfo:
          "The adoption capacities of new farming practices by African smallholder producers and their innovation potential of farming systems changes are challenged due to resource limitations and climate risks.",
      imgUrl:
          "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1772&q=80",
      date: "thu, 3 April ",
    ),
  ];
}
