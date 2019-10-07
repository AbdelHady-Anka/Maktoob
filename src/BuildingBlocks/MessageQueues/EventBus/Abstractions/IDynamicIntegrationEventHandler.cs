using System.Threading.Tasks;

namespace Maktub.BuildingBlocks.MessageQueues.EventBus.Abstractions
{
    public interface IDynamicIntegrationEventHandler
    {
        Task HandleAsync(dynamic eventData);
    }
}