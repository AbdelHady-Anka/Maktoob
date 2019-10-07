using System;

namespace Maktub.BuildingBlocks.MessageQueues.EventBus
{
    public class SubscriptionInfo
    {
        public SubscriptionInfo(bool isDynamic, Type handlerType)
        {
            IsDynamic = isDynamic;
            HandlerType = handlerType;
        }

        public static SubscriptionInfo Dynamic(Type handlerType)
        {
            return new SubscriptionInfo(true, handlerType);
        }
        public static SubscriptionInfo Typed(Type handlerType)
        {
            return new SubscriptionInfo(false, handlerType);
        }
        public bool IsDynamic { get; }
        public Type HandlerType { get; set; }
    }
}