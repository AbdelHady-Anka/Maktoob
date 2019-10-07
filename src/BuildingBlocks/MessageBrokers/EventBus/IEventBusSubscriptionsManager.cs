using Maktub.BuildingBlocks.MessageBrokers.EventBus.Abstraction;
using Maktub.BuildingBlocks.MessageBrokers.EventBus.Events;
using System;
using System.Collections.Generic;
using static Maktub.BuildingBlocks.MessageBrokers.EventBus.InMemoryEventBusSubscriptionsManager;

namespace Maktub.BuildingBlocks.MessageBrokers.EventBus
{
    interface IEventBusSubscriptionsManager
    {
        bool IsEmpty { get; }
        event EventHandler<string> OnEventRemoved;
        void AddSubscription<T, TH>()
            where T : Event
            where TH : IEventHandler<T>;

        void RemoveSubscription<T, TH>()
            where T : Event
            where TH : IEventHandler<T>;

        void AddDynamicSubscription<TH>(string eventName)
            where TH : IDynamicEventHandler;

        void RemoveDynamicSubscription<TH>(string eventName)
            where TH : IDynamicEventHandler;

        bool HasSubscriptionsForEvent<T>()
            where T : Event;

        bool HasSubscriptionsForEvent(string eventName);

        Type GetEventTypeByName(string eventName);
        IEnumerable<SubscriptionInfo> GetHandlersForEvent<T>()
            where T : Event;

        IEnumerable<SubscriptionInfo> GetHandlersForEvent(string eventName);
        string GetEventKey<T>();
        void clear();
    }
}
