class Services {
  String serviceName;
  String serviceImageUrl;
  String RouteName;

  Services({
    this.serviceName,
    this.serviceImageUrl,
    this.RouteName,
  });
}

final List<Services> services = [
  Services(
    serviceName: 'Telehealth Video Visits',
    serviceImageUrl: 'asset/images/service1.png',
    RouteName: '',
  ),
  Services(
    serviceName: 'Medical',
    serviceImageUrl: 'asset/images/service2.png',
    RouteName: '',
  ),
  Services(
    serviceName: 'Cosmetic Appointment'
          '\nBotox, Fillers, and other',
    serviceImageUrl: 'asset/images/service3.png',
    RouteName: '',
  ),
  Services(
    serviceName: 'Skin Care Center',
    serviceImageUrl: 'asset/images/service4.png',
    RouteName: '',
  ),
];