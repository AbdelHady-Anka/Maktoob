using Maktub.BuildingBlocks.MessageBrokers.EventBus.Abstraction;
using Maktub.BuildingBlocks.MessageBrokers.EventBus.Events;
using System;
using System.Threading.Tasks;

namespace Maktub.BuildingBlocks.MessageBrokers.RabbitMQ
{
    public class EventBus : IEventBus
    {
        public void Publish(Event @event)
        {
            throw new NotImplementedException();
        }

        public Task PublishAsyn(Event @event)
        {
            throw new NotImplementedException();
        }

        public void Subscribe<T, TH>()
            where T : Event
            where TH : IEventHandler<T>
        {
            throw new NotImplementedException();
        }

        public void SubscribeDynamic<TH>() where TH : IDynamicEventHandler
        {
            throw new NotImplementedException();
        }

        public void UnSubscribe<T, TH>()
            where T : Event
            where TH : IEventHandler<T>
        {
            throw new NotImplementedException();
        }

        public void UnSubscribeDynamic<TH>() where TH : IDynamicEventHandler
        {
            throw new NotImplementedException();
        }
    }
}
