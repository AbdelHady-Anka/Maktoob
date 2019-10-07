using Maktub.BuildingBlocks.MessageBrokers.EventBus.Events;
using System.Threading.Tasks;

namespace Maktub.BuildingBlocks.MessageBrokers.EventBus.Abstraction
{
    public interface IEventBus
    {
        void Publish(Event @event);

        Task PublishAsyn(Event @event);

        void Subscribe<T, TH>()
            where T : Event
            where TH : IEventHandler<T>;

        void SubscribeDynamic<TH>()
            where TH : IDynamicEventHandler;

        void UnSubscribe<T, TH>()
            where T : Event
            where TH : IEventHandler<T>;

        void UnSubscribeDynamic<TH>()
            where TH : IDynamicEventHandler;
    }
}
