import "package:checks/checks.dart";
import "package:in_app_messaging/in_app_messaging.dart";
import "package:test/test.dart";

void main() {
  late MemoryContextSource contextSource;
  late InteractionSource interactionSource;
  late DefaultMessageGateway gateway;

  setUp(() {
    interactionSource = MemoryInteractionSource();

    contextSource = MemoryContextSource(
      context: {
        "device": {
          "platform": "Android",
          "version": "5.4.0",
          "version_number": "3124",
          "language": "en",
        },
        "user": {
          "id": "1234",
          "email": "example@example.org",
        }
      },
    );

    gateway = DefaultMessageGateway(
      messageSource: MemoryMessageSource(messages: [
        SimpleMessage(
          id: "android_message",
          enabled: true,
          type: const MessageType(name: "none"),
          start: DateTime.now(),
          end: null,
          triggers: [const MessageTrigger.event(event: "event", data: {})],
          condition: DevicePropertyCondition(
            key: "platform",
            value: "Android",
            type: ComparisonType.exactlyMatches,
          ).asJsonLogic(),
          data: {},
        ),
        SimpleMessage(
          id: "version_message_equals",
          enabled: true,
          type: const MessageType(name: "none"),
          start: DateTime.now(),
          end: null,
          triggers: [const MessageTrigger.event(event: "event", data: {})],
          condition: DevicePropertyCondition(
            key: "version",
            type: ComparisonType.equals,
            value: "5.4.1",
          ).asJsonLogic(),
          data: {},
        ),
        SimpleMessage(
          id: "version_message_greater",
          enabled: true,
          type: const MessageType(name: "none"),
          start: DateTime.now(),
          end: null,
          triggers: [const MessageTrigger.event(event: "event", data: {})],
          condition: DevicePropertyCondition(
            key: "version",
            type: ComparisonType.greater,
            value: "5.6.0",
          ).asJsonLogic(),
          data: {},
        ),
        SimpleMessage(
          id: "john_doe_message",
          enabled: true,
          type: const MessageType(name: "none"),
          start: DateTime.now(),
          end: null,
          triggers: [const MessageTrigger.event(event: "event", data: {})],
          condition: (UserPropertyCondition(
                    key: "name",
                    type: ComparisonType.exactlyMatches,
                    value: "John Doe",
                  ) &
                  UserPropertyCondition(
                    key: "email",
                    type: ComparisonType.exactlyMatches,
                    value: "john@doe.com",
                  ))
              .asJsonLogic(),
          data: {},
        ),
      ]),
      interactionSource: interactionSource,
      contextSource: contextSource,
    );
  });

  test("device condition evaluates true", () async {
    contextSource.updateDeviceProperty("platform", "Android");

    final message = await gateway.evaluate("event", {});

    check(message).has((it) => it?.message.id, "id").equals("android_message");
  });

  test("device condition evaluates false", () async {
    contextSource.updateDeviceProperty("platform", "iOS");

    final message = await gateway.evaluate("event", {});

    check(message).has((it) => it?.message.id, "id").isNull();
  });

  test("version condition evaluates equals", () async {
    contextSource.updateDeviceProperty("platform", "Linux");
    contextSource.updateDeviceProperty("version", "5.4.1");

    final message = await gateway.evaluate("event", {});

    check(message)
        .has((it) => it?.message.id, "id")
        .equals("version_message_equals");
  });

  test("version condition evaluates greater", () async {
    contextSource.updateDeviceProperty("platform", "Linux");
    contextSource.updateDeviceProperty("version", "5.7.1");

    final message = await gateway.evaluate("event", {});

    check(message)
        .has((it) => it?.message.id, "id")
        .equals("version_message_greater");
  });

  test("version condition evaluates is null", () async {
    contextSource.updateDeviceProperty("platform", "Linux");
    contextSource.updateDeviceProperty("version", "5.3.0");

    final message = await gateway.evaluate("event", {});

    check(message).has((it) => it?.message.id, "id").isNull();
  });

  test("and condition test is true", () async {
    contextSource.updateDeviceProperty("platform", "Linux");
    contextSource.updateDeviceProperty("version", "5.3.0");
    contextSource.updateUserProperty("name", "John Doe");
    contextSource.updateUserProperty("email", "john@doe.com");

    final message = await gateway.evaluate("event", {});

    check(message).has((it) => it?.message.id, "id").equals("john_doe_message");
  });

  test("and condition test is false", () async {
    contextSource.updateDeviceProperty("platform", "Linux");
    contextSource.updateDeviceProperty("version", "5.3.0");
    contextSource.updateUserProperty("name", "John Doe");
    contextSource.updateUserProperty("email", "john2@doe.com");

    final message = await gateway.evaluate("event", {});

    check(message).has((it) => it?.message.id, "id").isNull();
  });
}
