using System.Threading.Tasks;

namespace Maktub.BuildingBlocks.MessageBrokers.EventBus.Abstraction
{
    public interface IDynamicEventHandler
    {
        Task HandleAsync(dynamic eventData);
    }
}
