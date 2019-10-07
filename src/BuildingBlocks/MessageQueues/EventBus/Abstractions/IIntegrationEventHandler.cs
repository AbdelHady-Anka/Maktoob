using System.Threading.Tasks;
using Maktub.MessageQueues.EventBus.EventBus.Events;

namespace Maktub.BuildingBlocks.MessageQueues.EventBus.Abstractions
{
    public interface IIntegrationEventHandler<in TIntegrationEvent> : IIntegrationEventHandler
        where TIntegrationEvent : IntegrationEvent
    {
        Task HandleAsync(TIntegrationEvent @event);
    }
    public interface IIntegrationEventHandler
    {

    }
}