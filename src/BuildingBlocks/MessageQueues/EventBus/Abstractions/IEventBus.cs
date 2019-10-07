using System.Threading.Tasks;
using Maktub.BuildingBlocks.MessageQueues.EventBus.EventBus.Events;

namespace Maktub.BuildingBlocks.MessageQueues.EventBus.Abstractions
{
    public interface IEventBus
    {
        void Publish(IntegrationEvent @event);

        Task PublishAsyn(IntegrationEvent @event);

        void Subscribe<T, TH>()
            where T : IntegrationEvent
            where TH : IIntegrationEventHandler<T>;

        void SubscribeDynamic<TH>()
            where TH : IDynamicIntegrationEventHandler;

        void UnSubscribe<T, TH>()
            where T : IntegrationEvent
            where TH : IIntegrationEventHandler<T>;

        void UnSubscribeDynamic<TH>()
            where TH : IDynamicIntegrationEventHandler;
    }
}