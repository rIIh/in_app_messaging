import '../../data/model/conditions/and_condition.dart';
import '../../data/model/conditions/or_condition.dart';
import 'message_context.dart';

/// Serializable show condition
abstract class MessageCondition {
  bool evaluate(MessageContext context);

  MessageCondition operator &(MessageCondition? right) {
    if (right == null) return this;

    return AndCondition(this, right);
  }

  MessageCondition operator |(MessageCondition? right) {
    if (right == null) return this;

    return OrCondition(this, right);
  }
}
