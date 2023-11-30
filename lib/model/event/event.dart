class Event {
  final String eventId;
  final String thumbnail;
  final String title;
  final String smallTitle;
  final String startDate;
  final String endDate;

  Event({
    required this.eventId,
    required this.thumbnail,
    required this.title,
    required this.smallTitle,
    required this.startDate,
    required this.endDate,
  });
}

// 하드코딩된 이벤트 데이터
final Event hardcodedEvent = Event(
  eventId: '1',
  thumbnail: 'https://example.com/image.jpg', // 적절한 이미지 URL 사용
  title: '이벤트 제목',
  smallTitle: '작은 제목',
  startDate: '2023-01-01',
  endDate: '2023-01-31',
);
