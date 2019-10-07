using Maktub.BuildingBlocks.MessageBrokers.EventBus.Events;
using System.Threading.Tasks;

namespace Maktub.BuildingBlocks.MessageBrokers.EventBus.Abstraction
{
    public interface IEventHandler<in TEvent> : IEventHandler
        where TEvent : Event
    {
        Task HandleAsync(TEvent @event);
    }
    public interface IEventHandler
    {

    }
}
